"""Tensorflow MARL (Multi-Agent Reinforcement Learning) using PPOAgent for policy approximation"""
# As of now will be creating an agent for each player, all agents will be separate.
# They should learn off each other to the point where all are very good at the game (hopefully)

# Each timestep will be getting an action during recruitment phase but for now there will be no reward
# until combat, which which give a reward based on loss/win etc.

import AgentHelper
import numpy as np

import tensorflow as tf
from tf_agents.agents.ppo import ppo_agent
from tf_agents.trajectories.time_step import TimeStep
from tf_agents.trajectories.time_step import time_step_spec
from tf_agents.specs import tensor_spec
from tf_agents.specs.array_spec import ArraySpec
from tf_agents.specs.array_spec import BoundedArraySpec
from tf_agents.networks.actor_distribution_network import ActorDistributionNetwork
from tf_agents.networks.value_network import ValueNetwork
from tf_agents.policies import random_py_policy
from tf_agents.policies.policy_saver import PolicySaver


class Agent:
    def __init__(self):
        self.agent_helper = AgentHelper.AgentHelper()
        self.agent = self.initialize_agent()
        self.policy = random_py_policy.RandomPyPolicy(
            time_step_spec=time_step_spec(self.generate_obs_spec()),
            action_spec=self.generate_action_spec()
        )

    def initialize_agent(
            self,
            learning_rate=0.1,
            lambda_value=0.95,
            discount_factor=0.99,
            num_epochs=25,
            use_gae=False,
            normalize_rewards=True,
            normalize_observations=True,
    ):
        agent = ppo_agent.PPOAgent(
            time_step_spec=(time_step_spec(self.generate_obs_spec())),
            action_spec=(self.generate_action_spec()),
            optimizer=(tf.compat.v1.train.AdamOptimizer(learning_rate=learning_rate)),
            actor_net=(self.generate_actor_net()),
            value_net=(self.generate_value_net()),
            lambda_value=lambda_value,
            discount_factor=discount_factor,
            num_epochs=num_epochs,
            use_gae=use_gae,
            normalize_rewards=normalize_rewards,
            normalize_observations=normalize_observations
        )

        agent.initialize()
        return agent

    def get_action_policy(self, step_type, reward, discount, obs):
        time_step = TimeStep(
            step_type=step_type,
            reward=reward,
            discount=discount,
            observation=tf.convert_to_tensor(obs, dtype=tf.float32)
        )

        policy_step = self.agent.policy.action(time_step)

        return policy_step

    def train(self, experience):
        self.agent.train(experience)

    def load_policy(self, agent_number, load_prev):
        if load_prev:
            return tf.compat.v2.saved_model.load("results/agent" + agent_number + "/policy")

        return random_py_policy.RandomPyPolicy(
            time_step_spec=time_step_spec(self.generate_obs_spec()),
            action_spec=self.generate_action_spec()
        )

    def store_network_policy(self, agent_number):
        saver = PolicySaver(self.agent.policy, batch_size=None)

        saver.save("results/agent" + agent_number + "/policy")

        return

    def generate_obs_spec(self):
        return tensor_spec.from_spec(
            ArraySpec(
                shape=(self.agent_helper.get_observation_shape(),), dtype=np.float32, name='observation'
            )
        )

    def generate_action_spec(self):
        return tensor_spec.from_spec(
            BoundedArraySpec(
                shape=(self.agent_helper.get_action_shape(),), dtype=np.float32, minimum=0, maximum=1, name='action'
            )
        )

    def generate_actor_net(self):
        return ActorDistributionNetwork(
            input_tensor_spec=(self.generate_obs_spec()),
            output_tensor_spec=(self.generate_action_spec())
        )

    def generate_value_net(self):
        return ValueNetwork(
            input_tensor_spec=self.generate_obs_spec()
        )
