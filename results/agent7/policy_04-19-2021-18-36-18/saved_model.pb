Ш
??
B
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
A
BroadcastArgs
s0"T
s1"T
r0"T"
Ttype0:
2	
Z
BroadcastTo

input"T
shape"Tidx
output"T"	
Ttype"
Tidxtype0:
2	
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
:
Maximum
x"T
y"T
z"T"
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
:
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
0
Neg
x"T
y"T"
Ttype:
2
	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
@
Softplus
features"T
activations"T"
Ttype:
2
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.4.12v2.4.0-49-g85c8b2a817f8??
d
VariableVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
Variable
]
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
: *
dtype0	
?
8ActorDistributionNetwork/EncodingNetwork/dense_35/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*I
shared_name:8ActorDistributionNetwork/EncodingNetwork/dense_35/kernel
?
LActorDistributionNetwork/EncodingNetwork/dense_35/kernel/Read/ReadVariableOpReadVariableOp8ActorDistributionNetwork/EncodingNetwork/dense_35/kernel* 
_output_shapes
:
??*
dtype0
?
6ActorDistributionNetwork/EncodingNetwork/dense_35/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*G
shared_name86ActorDistributionNetwork/EncodingNetwork/dense_35/bias
?
JActorDistributionNetwork/EncodingNetwork/dense_35/bias/Read/ReadVariableOpReadVariableOp6ActorDistributionNetwork/EncodingNetwork/dense_35/bias*
_output_shapes	
:?*
dtype0
?
8ActorDistributionNetwork/EncodingNetwork/dense_36/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d*I
shared_name:8ActorDistributionNetwork/EncodingNetwork/dense_36/kernel
?
LActorDistributionNetwork/EncodingNetwork/dense_36/kernel/Read/ReadVariableOpReadVariableOp8ActorDistributionNetwork/EncodingNetwork/dense_36/kernel*
_output_shapes
:	?d*
dtype0
?
6ActorDistributionNetwork/EncodingNetwork/dense_36/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*G
shared_name86ActorDistributionNetwork/EncodingNetwork/dense_36/bias
?
JActorDistributionNetwork/EncodingNetwork/dense_36/bias/Read/ReadVariableOpReadVariableOp6ActorDistributionNetwork/EncodingNetwork/dense_36/bias*
_output_shapes
:d*
dtype0
?
BActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*S
shared_nameDBActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/bias
?
VActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/bias/Read/ReadVariableOpReadVariableOpBActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/bias*
_output_shapes
:*
dtype0
?
NActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*_
shared_namePNActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/kernel
?
bActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/kernel/Read/ReadVariableOpReadVariableOpNActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/kernel*
_output_shapes

:d*
dtype0
?
LActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*]
shared_nameNLActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/bias
?
`ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/bias/Read/ReadVariableOpReadVariableOpLActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/bias*
_output_shapes
:*
dtype0
c
countVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namecount
\
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes	
:?*
dtype0
i
mean_sumVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_name
mean_sum
b
mean_sum/Read/ReadVariableOpReadVariableOpmean_sum*
_output_shapes	
:?*
dtype0
g
var_sumVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_name	var_sum
`
var_sum/Read/ReadVariableOpReadVariableOpvar_sum*
_output_shapes	
:?*
dtype0
?
,ValueNetwork/EncodingNetwork/dense_37/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?K*=
shared_name.,ValueNetwork/EncodingNetwork/dense_37/kernel
?
@ValueNetwork/EncodingNetwork/dense_37/kernel/Read/ReadVariableOpReadVariableOp,ValueNetwork/EncodingNetwork/dense_37/kernel*
_output_shapes
:	?K*
dtype0
?
*ValueNetwork/EncodingNetwork/dense_37/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:K*;
shared_name,*ValueNetwork/EncodingNetwork/dense_37/bias
?
>ValueNetwork/EncodingNetwork/dense_37/bias/Read/ReadVariableOpReadVariableOp*ValueNetwork/EncodingNetwork/dense_37/bias*
_output_shapes
:K*
dtype0
?
,ValueNetwork/EncodingNetwork/dense_38/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:K(*=
shared_name.,ValueNetwork/EncodingNetwork/dense_38/kernel
?
@ValueNetwork/EncodingNetwork/dense_38/kernel/Read/ReadVariableOpReadVariableOp,ValueNetwork/EncodingNetwork/dense_38/kernel*
_output_shapes

:K(*
dtype0
?
*ValueNetwork/EncodingNetwork/dense_38/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*;
shared_name,*ValueNetwork/EncodingNetwork/dense_38/bias
?
>ValueNetwork/EncodingNetwork/dense_38/bias/Read/ReadVariableOpReadVariableOp*ValueNetwork/EncodingNetwork/dense_38/bias*
_output_shapes
:(*
dtype0
?
ValueNetwork/dense_39/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(*-
shared_nameValueNetwork/dense_39/kernel
?
0ValueNetwork/dense_39/kernel/Read/ReadVariableOpReadVariableOpValueNetwork/dense_39/kernel*
_output_shapes

:(*
dtype0
?
ValueNetwork/dense_39/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameValueNetwork/dense_39/bias
?
.ValueNetwork/dense_39/bias/Read/ReadVariableOpReadVariableOpValueNetwork/dense_39/bias*
_output_shapes
:*
dtype0

NoOpNoOp
?8
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?7
value?7B?7 B?7
T

train_step
metadata
model_variables
_all_assets

signatures
CA
VARIABLE_VALUEVariable%train_step/.ATTRIBUTES/VARIABLE_VALUE
 
v
0
1
2
	3

4
5
6
7
8
9
10
11
12
13
14
15

0
 
zx
VARIABLE_VALUE8ActorDistributionNetwork/EncodingNetwork/dense_35/kernel,model_variables/0/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE6ActorDistributionNetwork/EncodingNetwork/dense_35/bias,model_variables/1/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE8ActorDistributionNetwork/EncodingNetwork/dense_36/kernel,model_variables/2/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE6ActorDistributionNetwork/EncodingNetwork/dense_36/bias,model_variables/3/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEBActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/bias,model_variables/4/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUENActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/kernel,model_variables/5/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUELActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/bias,model_variables/6/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUEcount,model_variables/7/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEmean_sum,model_variables/8/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEvar_sum,model_variables/9/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUE,ValueNetwork/EncodingNetwork/dense_37/kernel-model_variables/10/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE*ValueNetwork/EncodingNetwork/dense_37/bias-model_variables/11/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUE,ValueNetwork/EncodingNetwork/dense_38/kernel-model_variables/12/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE*ValueNetwork/EncodingNetwork/dense_38/bias-model_variables/13/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEValueNetwork/dense_39/kernel-model_variables/14/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEValueNetwork/dense_39/bias-model_variables/15/.ATTRIBUTES/VARIABLE_VALUE

ref
1
E
_actor_network
_observation_normalizer
_value_network
z
_encoder
_projection_networks
	variables
trainable_variables
regularization_losses
 	keras_api
@
!_flat_tensor_spec

"_count
#	_mean_sum
$_var_sum
|
%_encoder
&_postprocessing_layers
'	variables
(trainable_variables
)regularization_losses
*	keras_api
n
+_postprocessing_layers
,	variables
-trainable_variables
.regularization_losses
/	keras_api
z
0_means_projection_layer
	1_bias
2	variables
3trainable_variables
4regularization_losses
5	keras_api
1
0
1
2
	3
4
5

6
1
0
1
2
	3
4
5

6
 
?
6layer_metrics
	variables
7metrics
trainable_variables
regularization_losses
8layer_regularization_losses
9non_trainable_variables

:layers
 

0

0

0
n
;_postprocessing_layers
<	variables
=trainable_variables
>regularization_losses
?	keras_api
h

kernel
bias
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
*
0
1
2
3
4
5
*
0
1
2
3
4
5
 
?
Dlayer_metrics
'	variables
Emetrics
(trainable_variables
)regularization_losses
Flayer_regularization_losses
Gnon_trainable_variables

Hlayers

I0
J1
K2

0
1
2
	3

0
1
2
	3
 
?
Llayer_metrics
,	variables
Mmetrics
-trainable_variables
.regularization_losses
Nlayer_regularization_losses
Onon_trainable_variables

Players
h

kernel
bias
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
\

bias
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api

0
1

2

0
1

2
 
?
Ylayer_metrics
2	variables
Zmetrics
3trainable_variables
4regularization_losses
[layer_regularization_losses
\non_trainable_variables

]layers
 
 
 
 

0
1

^0
_1
`2

0
1
2
3

0
1
2
3
 
?
alayer_metrics
<	variables
bmetrics
=trainable_variables
>regularization_losses
clayer_regularization_losses
dnon_trainable_variables

elayers

0
1

0
1
 
?
flayer_metrics
@	variables
gmetrics
Atrainable_variables
Bregularization_losses
hlayer_regularization_losses
inon_trainable_variables

jlayers
 
 
 
 

%0
&1
R
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
h

kernel
bias
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
h

kernel
	bias
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
 
 
 
 

I0
J1
K2

0
1

0
1
 
?
wlayer_metrics
Q	variables
xmetrics
Rtrainable_variables
Sregularization_losses
ylayer_regularization_losses
znon_trainable_variables

{layers


0


0
 
?
|layer_metrics
U	variables
}metrics
Vtrainable_variables
Wregularization_losses
~layer_regularization_losses
non_trainable_variables
?layers
 
 
 
 

00
11
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
l

kernel
bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
l

kernel
bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
 
 
 
 

^0
_1
`2
 
 
 
 
 
 
 
 
?
?layer_metrics
k	variables
?metrics
ltrainable_variables
mregularization_losses
 ?layer_regularization_losses
?non_trainable_variables
?layers

0
1

0
1
 
?
?layer_metrics
o	variables
?metrics
ptrainable_variables
qregularization_losses
 ?layer_regularization_losses
?non_trainable_variables
?layers

0
	1

0
	1
 
?
?layer_metrics
s	variables
?metrics
ttrainable_variables
uregularization_losses
 ?layer_regularization_losses
?non_trainable_variables
?layers
 
 
 
 
 
 
 
 
 
 
 
 
 
?
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses
 ?layer_regularization_losses
?non_trainable_variables
?layers

0
1

0
1
 
?
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses
 ?layer_regularization_losses
?non_trainable_variables
?layers

0
1

0
1
 
?
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses
 ?layer_regularization_losses
?non_trainable_variables
?layers
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
l
action_0/discountPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
y
action_0/observationPlaceholder*(
_output_shapes
:??????????*
dtype0*
shape:??????????
j
action_0/rewardPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
m
action_0/step_typePlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallaction_0/discountaction_0/observationaction_0/rewardaction_0/step_typemean_sumcountvar_sum8ActorDistributionNetwork/EncodingNetwork/dense_35/kernel6ActorDistributionNetwork/EncodingNetwork/dense_35/bias8ActorDistributionNetwork/EncodingNetwork/dense_36/kernel6ActorDistributionNetwork/EncodingNetwork/dense_36/biasNActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/kernelLActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/biasBActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *0
f+R)
'__inference_signature_wrapper_164557494
]
get_initial_state_batch_sizePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
PartitionedCallPartitionedCallget_initial_state_batch_size*
Tin
2*

Tout
 *
_collective_manager_ids
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *0
f+R)
'__inference_signature_wrapper_164557506
?
PartitionedCall_1PartitionedCall*	
Tin
 *

Tout
 *
_collective_manager_ids
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *0
f+R)
'__inference_signature_wrapper_164557528
?
StatefulPartitionedCall_1StatefulPartitionedCallVariable*
Tin
2*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *0
f+R)
'__inference_signature_wrapper_164557521
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariable/Read/ReadVariableOpLActorDistributionNetwork/EncodingNetwork/dense_35/kernel/Read/ReadVariableOpJActorDistributionNetwork/EncodingNetwork/dense_35/bias/Read/ReadVariableOpLActorDistributionNetwork/EncodingNetwork/dense_36/kernel/Read/ReadVariableOpJActorDistributionNetwork/EncodingNetwork/dense_36/bias/Read/ReadVariableOpVActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/bias/Read/ReadVariableOpbActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/kernel/Read/ReadVariableOp`ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/bias/Read/ReadVariableOpcount/Read/ReadVariableOpmean_sum/Read/ReadVariableOpvar_sum/Read/ReadVariableOp@ValueNetwork/EncodingNetwork/dense_37/kernel/Read/ReadVariableOp>ValueNetwork/EncodingNetwork/dense_37/bias/Read/ReadVariableOp@ValueNetwork/EncodingNetwork/dense_38/kernel/Read/ReadVariableOp>ValueNetwork/EncodingNetwork/dense_38/bias/Read/ReadVariableOp0ValueNetwork/dense_39/kernel/Read/ReadVariableOp.ValueNetwork/dense_39/bias/Read/ReadVariableOpConst*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__traced_save_164557968
?
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameVariable8ActorDistributionNetwork/EncodingNetwork/dense_35/kernel6ActorDistributionNetwork/EncodingNetwork/dense_35/bias8ActorDistributionNetwork/EncodingNetwork/dense_36/kernel6ActorDistributionNetwork/EncodingNetwork/dense_36/biasBActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/biasNActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/kernelLActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/biascountmean_sumvar_sum,ValueNetwork/EncodingNetwork/dense_37/kernel*ValueNetwork/EncodingNetwork/dense_37/bias,ValueNetwork/EncodingNetwork/dense_38/kernel*ValueNetwork/EncodingNetwork/dense_38/biasValueNetwork/dense_39/kernelValueNetwork/dense_39/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *.
f)R'
%__inference__traced_restore_164558029׎
??
?
+__inference_polymorphic_action_fn_164557778
time_step_step_type
time_step_reward
time_step_discount
time_step_observation<
8normalize_observations_normalize_readvariableop_resourceD
@normalize_observations_normalize_truediv_readvariableop_resource>
:normalize_observations_normalize_readvariableop_1_resourceT
Pactordistributionnetwork_encodingnetwork_dense_35_matmul_readvariableop_resourceU
Qactordistributionnetwork_encodingnetwork_dense_35_biasadd_readvariableop_resourceT
Pactordistributionnetwork_encodingnetwork_dense_36_matmul_readvariableop_resourceU
Qactordistributionnetwork_encodingnetwork_dense_36_biasadd_readvariableop_resourcej
factordistributionnetwork_normalprojectionnetwork_means_projection_layer_matmul_readvariableop_resourcek
gactordistributionnetwork_normalprojectionnetwork_means_projection_layer_biasadd_readvariableop_resourcea
]actordistributionnetwork_normalprojectionnetwork_bias_layer_7_biasadd_readvariableop_resource
identity??HActorDistributionNetwork/EncodingNetwork/dense_35/BiasAdd/ReadVariableOp?GActorDistributionNetwork/EncodingNetwork/dense_35/MatMul/ReadVariableOp?HActorDistributionNetwork/EncodingNetwork/dense_36/BiasAdd/ReadVariableOp?GActorDistributionNetwork/EncodingNetwork/dense_36/MatMul/ReadVariableOp?TActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/BiasAdd/ReadVariableOp?^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp?]ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp?/normalize_observations/normalize/ReadVariableOp?1normalize_observations/normalize/ReadVariableOp_1?7normalize_observations/normalize/truediv/ReadVariableOp?9normalize_observations/normalize/truediv_1/ReadVariableOp?
/normalize_observations/normalize/ReadVariableOpReadVariableOp8normalize_observations_normalize_readvariableop_resource*
_output_shapes	
:?*
dtype021
/normalize_observations/normalize/ReadVariableOp?
7normalize_observations/normalize/truediv/ReadVariableOpReadVariableOp@normalize_observations_normalize_truediv_readvariableop_resource*
_output_shapes	
:?*
dtype029
7normalize_observations/normalize/truediv/ReadVariableOp?
(normalize_observations/normalize/truedivRealDiv7normalize_observations/normalize/ReadVariableOp:value:0?normalize_observations/normalize/truediv/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2*
(normalize_observations/normalize/truediv?
1normalize_observations/normalize/ReadVariableOp_1ReadVariableOp:normalize_observations_normalize_readvariableop_1_resource*
_output_shapes	
:?*
dtype023
1normalize_observations/normalize/ReadVariableOp_1?
9normalize_observations/normalize/truediv_1/ReadVariableOpReadVariableOp@normalize_observations_normalize_truediv_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9normalize_observations/normalize/truediv_1/ReadVariableOp?
*normalize_observations/normalize/truediv_1RealDiv9normalize_observations/normalize/ReadVariableOp_1:value:0Anormalize_observations/normalize/truediv_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2,
*normalize_observations/normalize/truediv_1?
8normalize_observations/normalize/normalized_tensor/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2:
8normalize_observations/normalize/normalized_tensor/add/y?
6normalize_observations/normalize/normalized_tensor/addAddV2.normalize_observations/normalize/truediv_1:z:0Anormalize_observations/normalize/normalized_tensor/add/y:output:0*
T0*
_output_shapes	
:?28
6normalize_observations/normalize/normalized_tensor/add?
8normalize_observations/normalize/normalized_tensor/RsqrtRsqrt:normalize_observations/normalize/normalized_tensor/add:z:0*
T0*
_output_shapes	
:?2:
8normalize_observations/normalize/normalized_tensor/Rsqrt?
6normalize_observations/normalize/normalized_tensor/mulMultime_step_observation<normalize_observations/normalize/normalized_tensor/Rsqrt:y:0*
T0*(
_output_shapes
:??????????28
6normalize_observations/normalize/normalized_tensor/mul?
6normalize_observations/normalize/normalized_tensor/NegNeg,normalize_observations/normalize/truediv:z:0*
T0*
_output_shapes	
:?28
6normalize_observations/normalize/normalized_tensor/Neg?
8normalize_observations/normalize/normalized_tensor/mul_1Mul:normalize_observations/normalize/normalized_tensor/Neg:y:0<normalize_observations/normalize/normalized_tensor/Rsqrt:y:0*
T0*
_output_shapes	
:?2:
8normalize_observations/normalize/normalized_tensor/mul_1?
8normalize_observations/normalize/normalized_tensor/add_1AddV2:normalize_observations/normalize/normalized_tensor/mul:z:0<normalize_observations/normalize/normalized_tensor/mul_1:z:0*
T0*(
_output_shapes
:??????????2:
8normalize_observations/normalize/normalized_tensor/add_1?
Dnormalize_observations/normalize/clipped_normalized_tensor/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2F
Dnormalize_observations/normalize/clipped_normalized_tensor/Minimum/y?
Bnormalize_observations/normalize/clipped_normalized_tensor/MinimumMinimum<normalize_observations/normalize/normalized_tensor/add_1:z:0Mnormalize_observations/normalize/clipped_normalized_tensor/Minimum/y:output:0*
T0*(
_output_shapes
:??????????2D
Bnormalize_observations/normalize/clipped_normalized_tensor/Minimum?
<normalize_observations/normalize/clipped_normalized_tensor/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2>
<normalize_observations/normalize/clipped_normalized_tensor/y?
:normalize_observations/normalize/clipped_normalized_tensorMaximumFnormalize_observations/normalize/clipped_normalized_tensor/Minimum:z:0Enormalize_observations/normalize/clipped_normalized_tensor/y:output:0*
T0*(
_output_shapes
:??????????2<
:normalize_observations/normalize/clipped_normalized_tensor?
9ActorDistributionNetwork/EncodingNetwork/flatten_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2;
9ActorDistributionNetwork/EncodingNetwork/flatten_14/Const?
;ActorDistributionNetwork/EncodingNetwork/flatten_14/ReshapeReshape>normalize_observations/normalize/clipped_normalized_tensor:z:0BActorDistributionNetwork/EncodingNetwork/flatten_14/Const:output:0*
T0*(
_output_shapes
:??????????2=
;ActorDistributionNetwork/EncodingNetwork/flatten_14/Reshape?
GActorDistributionNetwork/EncodingNetwork/dense_35/MatMul/ReadVariableOpReadVariableOpPactordistributionnetwork_encodingnetwork_dense_35_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02I
GActorDistributionNetwork/EncodingNetwork/dense_35/MatMul/ReadVariableOp?
8ActorDistributionNetwork/EncodingNetwork/dense_35/MatMulMatMulDActorDistributionNetwork/EncodingNetwork/flatten_14/Reshape:output:0OActorDistributionNetwork/EncodingNetwork/dense_35/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2:
8ActorDistributionNetwork/EncodingNetwork/dense_35/MatMul?
HActorDistributionNetwork/EncodingNetwork/dense_35/BiasAdd/ReadVariableOpReadVariableOpQactordistributionnetwork_encodingnetwork_dense_35_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02J
HActorDistributionNetwork/EncodingNetwork/dense_35/BiasAdd/ReadVariableOp?
9ActorDistributionNetwork/EncodingNetwork/dense_35/BiasAddBiasAddBActorDistributionNetwork/EncodingNetwork/dense_35/MatMul:product:0PActorDistributionNetwork/EncodingNetwork/dense_35/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2;
9ActorDistributionNetwork/EncodingNetwork/dense_35/BiasAdd?
6ActorDistributionNetwork/EncodingNetwork/dense_35/ReluReluBActorDistributionNetwork/EncodingNetwork/dense_35/BiasAdd:output:0*
T0*(
_output_shapes
:??????????28
6ActorDistributionNetwork/EncodingNetwork/dense_35/Relu?
GActorDistributionNetwork/EncodingNetwork/dense_36/MatMul/ReadVariableOpReadVariableOpPactordistributionnetwork_encodingnetwork_dense_36_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02I
GActorDistributionNetwork/EncodingNetwork/dense_36/MatMul/ReadVariableOp?
8ActorDistributionNetwork/EncodingNetwork/dense_36/MatMulMatMulDActorDistributionNetwork/EncodingNetwork/dense_35/Relu:activations:0OActorDistributionNetwork/EncodingNetwork/dense_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2:
8ActorDistributionNetwork/EncodingNetwork/dense_36/MatMul?
HActorDistributionNetwork/EncodingNetwork/dense_36/BiasAdd/ReadVariableOpReadVariableOpQactordistributionnetwork_encodingnetwork_dense_36_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02J
HActorDistributionNetwork/EncodingNetwork/dense_36/BiasAdd/ReadVariableOp?
9ActorDistributionNetwork/EncodingNetwork/dense_36/BiasAddBiasAddBActorDistributionNetwork/EncodingNetwork/dense_36/MatMul:product:0PActorDistributionNetwork/EncodingNetwork/dense_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2;
9ActorDistributionNetwork/EncodingNetwork/dense_36/BiasAdd?
6ActorDistributionNetwork/EncodingNetwork/dense_36/ReluReluBActorDistributionNetwork/EncodingNetwork/dense_36/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d28
6ActorDistributionNetwork/EncodingNetwork/dense_36/Relu?
]ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOpReadVariableOpfactordistributionnetwork_normalprojectionnetwork_means_projection_layer_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02_
]ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp?
NActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMulMatMulDActorDistributionNetwork/EncodingNetwork/dense_36/Relu:activations:0eActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2P
NActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul?
^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOpReadVariableOpgactordistributionnetwork_normalprojectionnetwork_means_projection_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02`
^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp?
OActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAddBiasAddXActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul:product:0fActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2Q
OActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd?
>ActorDistributionNetwork/NormalProjectionNetwork/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2@
>ActorDistributionNetwork/NormalProjectionNetwork/Reshape/shape?
8ActorDistributionNetwork/NormalProjectionNetwork/ReshapeReshapeXActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd:output:0GActorDistributionNetwork/NormalProjectionNetwork/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2:
8ActorDistributionNetwork/NormalProjectionNetwork/Reshape?
5ActorDistributionNetwork/NormalProjectionNetwork/TanhTanhAActorDistributionNetwork/NormalProjectionNetwork/Reshape:output:0*
T0*'
_output_shapes
:?????????27
5ActorDistributionNetwork/NormalProjectionNetwork/Tanh?
6ActorDistributionNetwork/NormalProjectionNetwork/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?28
6ActorDistributionNetwork/NormalProjectionNetwork/mul/x?
4ActorDistributionNetwork/NormalProjectionNetwork/mulMul?ActorDistributionNetwork/NormalProjectionNetwork/mul/x:output:09ActorDistributionNetwork/NormalProjectionNetwork/Tanh:y:0*
T0*'
_output_shapes
:?????????26
4ActorDistributionNetwork/NormalProjectionNetwork/mul?
6ActorDistributionNetwork/NormalProjectionNetwork/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?28
6ActorDistributionNetwork/NormalProjectionNetwork/add/x?
4ActorDistributionNetwork/NormalProjectionNetwork/addAddV2?ActorDistributionNetwork/NormalProjectionNetwork/add/x:output:08ActorDistributionNetwork/NormalProjectionNetwork/mul:z:0*
T0*'
_output_shapes
:?????????26
4ActorDistributionNetwork/NormalProjectionNetwork/add?
;ActorDistributionNetwork/NormalProjectionNetwork/zeros_like	ZerosLike8ActorDistributionNetwork/NormalProjectionNetwork/add:z:0*
T0*'
_output_shapes
:?????????2=
;ActorDistributionNetwork/NormalProjectionNetwork/zeros_like?
TActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/BiasAdd/ReadVariableOpReadVariableOp]actordistributionnetwork_normalprojectionnetwork_bias_layer_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02V
TActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/BiasAdd/ReadVariableOp?
EActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/BiasAddBiasAdd?ActorDistributionNetwork/NormalProjectionNetwork/zeros_like:y:0\ActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2G
EActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/BiasAdd?
@ActorDistributionNetwork/NormalProjectionNetwork/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2B
@ActorDistributionNetwork/NormalProjectionNetwork/Reshape_1/shape?
:ActorDistributionNetwork/NormalProjectionNetwork/Reshape_1ReshapeNActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/BiasAdd:output:0IActorDistributionNetwork/NormalProjectionNetwork/Reshape_1/shape:output:0*
T0*'
_output_shapes
:?????????2<
:ActorDistributionNetwork/NormalProjectionNetwork/Reshape_1?
9ActorDistributionNetwork/NormalProjectionNetwork/SoftplusSoftplusCActorDistributionNetwork/NormalProjectionNetwork/Reshape_1:output:0*
T0*'
_output_shapes
:?????????2;
9ActorDistributionNetwork/NormalProjectionNetwork/Softplus?
gActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/ConstConst*
_output_shapes
: *
dtype0*
value	B :2i
gActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/Const?
mActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/event_shapeConst*
_output_shapes
:*
dtype0*
valueB:2o
mActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/event_shape?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/ShapeShapeGActorDistributionNetwork/NormalProjectionNetwork/Softplus:activations:0*
T0*
_output_shapes
:2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/Shape?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_1?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_2?	
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_sliceStridedSlice?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/Shape:output:0?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack:output:0?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_1:output:0?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/values_1Pack?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice:output:0*
N*
T0*
_output_shapes
:2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/values_1?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/axis?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concatConcatV2?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/Shape:output:0?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/values_1:output:0?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/axis:output:0*
N*
T0*
_output_shapes
:2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_1?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_sliceStridedSlice?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat:output:0?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack:output:0?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_1:output:0?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice?
gActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/ShapeShape8ActorDistributionNetwork/NormalProjectionNetwork/add:z:0*
T0*
_output_shapes
:2i
gActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/Shape?
uActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2w
uActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack?
wActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2y
wActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_1?
wActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2y
wActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_2?
oActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_sliceStridedSlicepActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/Shape:output:0~ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack:output:0?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_1:output:0?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2q
oActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice?
oActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/BroadcastArgsBroadcastArgs?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice:output:0xActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice:output:0*
_output_shapes
:2q
oActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/BroadcastArgs?
SActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2U
SActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros/Const?
MActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zerosFilltActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/BroadcastArgs:r0:0\ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros/Const:output:0*
T0*#
_output_shapes
:?????????2O
MActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros?
LActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/onesConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2N
LActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/ones?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/sample_shape?
LActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeroConst*
_output_shapes
: *
dtype0*
value	B : 2N
LActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zero?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ShapeShapeVActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros:output:0*
T0*
_output_shapes
:2?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/Shape?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs/s1Const*
_output_shapes
: *
dtype0*
valueB 2?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs/s1?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgsBroadcastArgs?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/Shape:output:0?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs/s1:output:0*
_output_shapes
:2?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shapeIdentity?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs:r0:0*
T0*
_output_shapes
:2?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape?	
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shapeIdentity?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape:output:0*
T0*
_output_shapes
:2?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/batch_shapeIdentity?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape:output:0*
T0*
_output_shapes
:2?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/batch_shape?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/ConstConst*
_output_shapes
:*
dtype0*
valueB:2?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/Const?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/event_shapeIdentity?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/Const:output:0*
T0*
_output_shapes
:2?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/event_shape?
XActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2Z
XActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat/axis?
SActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concatConcatV2?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/batch_shape:output:0?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/event_shape:output:0aActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat/axis:output:0*
N*
T0*
_output_shapes
:2U
SActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat?
UActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/IdentityIdentity8ActorDistributionNetwork/NormalProjectionNetwork/add:z:0*
T0*'
_output_shapes
:?????????2W
UActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/Identity?
XActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2Z
XActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros/Const?
RActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zerosFill\ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat:output:0aActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2T
RActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros?
PActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/addAddV2^ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/Identity:output:0[ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros:output:0*
T0*'
_output_shapes
:?????????2R
PActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/addm
Deterministic/atolConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Deterministic/atolm
Deterministic/rtolConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Deterministic/rtol?
#Deterministic_1/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 2%
#Deterministic_1/sample/sample_shape?
Deterministic_1/sample/ShapeShapeTActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/add:z:0*
T0*
_output_shapes
:2
Deterministic_1/sample/Shape?
'Deterministic_1/sample/BroadcastArgs/s1Const*
_output_shapes
: *
dtype0*
valueB 2)
'Deterministic_1/sample/BroadcastArgs/s1?
$Deterministic_1/sample/BroadcastArgsBroadcastArgs%Deterministic_1/sample/Shape:output:00Deterministic_1/sample/BroadcastArgs/s1:output:0*
_output_shapes
:2&
$Deterministic_1/sample/BroadcastArgs
Deterministic_1/sample/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
Deterministic_1/sample/Const?
&Deterministic_1/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:2(
&Deterministic_1/sample/concat/values_0?
"Deterministic_1/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"Deterministic_1/sample/concat/axis?
Deterministic_1/sample/concatConcatV2/Deterministic_1/sample/concat/values_0:output:0)Deterministic_1/sample/BroadcastArgs:r0:0%Deterministic_1/sample/Const:output:0+Deterministic_1/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Deterministic_1/sample/concat?
"Deterministic_1/sample/BroadcastToBroadcastToTActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/add:z:0&Deterministic_1/sample/concat:output:0*
T0*+
_output_shapes
:?????????2$
"Deterministic_1/sample/BroadcastTo?
Deterministic_1/sample/Shape_1Shape+Deterministic_1/sample/BroadcastTo:output:0*
T0*
_output_shapes
:2 
Deterministic_1/sample/Shape_1?
*Deterministic_1/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*Deterministic_1/sample/strided_slice/stack?
,Deterministic_1/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,Deterministic_1/sample/strided_slice/stack_1?
,Deterministic_1/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,Deterministic_1/sample/strided_slice/stack_2?
$Deterministic_1/sample/strided_sliceStridedSlice'Deterministic_1/sample/Shape_1:output:03Deterministic_1/sample/strided_slice/stack:output:05Deterministic_1/sample/strided_slice/stack_1:output:05Deterministic_1/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2&
$Deterministic_1/sample/strided_slice?
$Deterministic_1/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2&
$Deterministic_1/sample/concat_1/axis?
Deterministic_1/sample/concat_1ConcatV2,Deterministic_1/sample/sample_shape:output:0-Deterministic_1/sample/strided_slice:output:0-Deterministic_1/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2!
Deterministic_1/sample/concat_1?
Deterministic_1/sample/ReshapeReshape+Deterministic_1/sample/BroadcastTo:output:0(Deterministic_1/sample/concat_1:output:0*
T0*'
_output_shapes
:?????????2 
Deterministic_1/sample/Reshapew
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum'Deterministic_1/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:?????????2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:?????????2
clip_by_value?
IdentityIdentityclip_by_value:z:0I^ActorDistributionNetwork/EncodingNetwork/dense_35/BiasAdd/ReadVariableOpH^ActorDistributionNetwork/EncodingNetwork/dense_35/MatMul/ReadVariableOpI^ActorDistributionNetwork/EncodingNetwork/dense_36/BiasAdd/ReadVariableOpH^ActorDistributionNetwork/EncodingNetwork/dense_36/MatMul/ReadVariableOpU^ActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/BiasAdd/ReadVariableOp_^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp^^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp0^normalize_observations/normalize/ReadVariableOp2^normalize_observations/normalize/ReadVariableOp_18^normalize_observations/normalize/truediv/ReadVariableOp:^normalize_observations/normalize/truediv_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*|
_input_shapesk
i:?????????:?????????:?????????:??????????::::::::::2?
HActorDistributionNetwork/EncodingNetwork/dense_35/BiasAdd/ReadVariableOpHActorDistributionNetwork/EncodingNetwork/dense_35/BiasAdd/ReadVariableOp2?
GActorDistributionNetwork/EncodingNetwork/dense_35/MatMul/ReadVariableOpGActorDistributionNetwork/EncodingNetwork/dense_35/MatMul/ReadVariableOp2?
HActorDistributionNetwork/EncodingNetwork/dense_36/BiasAdd/ReadVariableOpHActorDistributionNetwork/EncodingNetwork/dense_36/BiasAdd/ReadVariableOp2?
GActorDistributionNetwork/EncodingNetwork/dense_36/MatMul/ReadVariableOpGActorDistributionNetwork/EncodingNetwork/dense_36/MatMul/ReadVariableOp2?
TActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/BiasAdd/ReadVariableOpTActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/BiasAdd/ReadVariableOp2?
^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp2?
]ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp]ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp2b
/normalize_observations/normalize/ReadVariableOp/normalize_observations/normalize/ReadVariableOp2f
1normalize_observations/normalize/ReadVariableOp_11normalize_observations/normalize/ReadVariableOp_12r
7normalize_observations/normalize/truediv/ReadVariableOp7normalize_observations/normalize/truediv/ReadVariableOp2v
9normalize_observations/normalize/truediv_1/ReadVariableOp9normalize_observations/normalize/truediv_1/ReadVariableOp:X T
#
_output_shapes
:?????????
-
_user_specified_nametime_step/step_type:UQ
#
_output_shapes
:?????????
*
_user_specified_nametime_step/reward:WS
#
_output_shapes
:?????????
,
_user_specified_nametime_step/discount:_[
(
_output_shapes
:??????????
/
_user_specified_nametime_step/observation
?
?
'__inference_signature_wrapper_164557494
discount
observation

reward
	step_type
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall	step_typerewarddiscountobservationunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *6
f1R/
-__inference_function_with_signature_1645574642
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*|
_input_shapesk
i:?????????:??????????:?????????:?????????::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
#
_output_shapes
:?????????
$
_user_specified_name
0/discount:WS
(
_output_shapes
:??????????
'
_user_specified_name0/observation:MI
#
_output_shapes
:?????????
"
_user_specified_name
0/reward:PL
#
_output_shapes
:?????????
%
_user_specified_name0/step_type
??
?
1__inference_polymorphic_distribution_fn_164557886
	step_type

reward
discount
observation<
8normalize_observations_normalize_readvariableop_resourceD
@normalize_observations_normalize_truediv_readvariableop_resource>
:normalize_observations_normalize_readvariableop_1_resourceT
Pactordistributionnetwork_encodingnetwork_dense_35_matmul_readvariableop_resourceU
Qactordistributionnetwork_encodingnetwork_dense_35_biasadd_readvariableop_resourceT
Pactordistributionnetwork_encodingnetwork_dense_36_matmul_readvariableop_resourceU
Qactordistributionnetwork_encodingnetwork_dense_36_biasadd_readvariableop_resourcej
factordistributionnetwork_normalprojectionnetwork_means_projection_layer_matmul_readvariableop_resourcek
gactordistributionnetwork_normalprojectionnetwork_means_projection_layer_biasadd_readvariableop_resourcea
]actordistributionnetwork_normalprojectionnetwork_bias_layer_7_biasadd_readvariableop_resource
identity??HActorDistributionNetwork/EncodingNetwork/dense_35/BiasAdd/ReadVariableOp?GActorDistributionNetwork/EncodingNetwork/dense_35/MatMul/ReadVariableOp?HActorDistributionNetwork/EncodingNetwork/dense_36/BiasAdd/ReadVariableOp?GActorDistributionNetwork/EncodingNetwork/dense_36/MatMul/ReadVariableOp?TActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/BiasAdd/ReadVariableOp?^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp?]ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp?/normalize_observations/normalize/ReadVariableOp?1normalize_observations/normalize/ReadVariableOp_1?7normalize_observations/normalize/truediv/ReadVariableOp?9normalize_observations/normalize/truediv_1/ReadVariableOp?
/normalize_observations/normalize/ReadVariableOpReadVariableOp8normalize_observations_normalize_readvariableop_resource*
_output_shapes	
:?*
dtype021
/normalize_observations/normalize/ReadVariableOp?
7normalize_observations/normalize/truediv/ReadVariableOpReadVariableOp@normalize_observations_normalize_truediv_readvariableop_resource*
_output_shapes	
:?*
dtype029
7normalize_observations/normalize/truediv/ReadVariableOp?
(normalize_observations/normalize/truedivRealDiv7normalize_observations/normalize/ReadVariableOp:value:0?normalize_observations/normalize/truediv/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2*
(normalize_observations/normalize/truediv?
1normalize_observations/normalize/ReadVariableOp_1ReadVariableOp:normalize_observations_normalize_readvariableop_1_resource*
_output_shapes	
:?*
dtype023
1normalize_observations/normalize/ReadVariableOp_1?
9normalize_observations/normalize/truediv_1/ReadVariableOpReadVariableOp@normalize_observations_normalize_truediv_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9normalize_observations/normalize/truediv_1/ReadVariableOp?
*normalize_observations/normalize/truediv_1RealDiv9normalize_observations/normalize/ReadVariableOp_1:value:0Anormalize_observations/normalize/truediv_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2,
*normalize_observations/normalize/truediv_1?
8normalize_observations/normalize/normalized_tensor/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2:
8normalize_observations/normalize/normalized_tensor/add/y?
6normalize_observations/normalize/normalized_tensor/addAddV2.normalize_observations/normalize/truediv_1:z:0Anormalize_observations/normalize/normalized_tensor/add/y:output:0*
T0*
_output_shapes	
:?28
6normalize_observations/normalize/normalized_tensor/add?
8normalize_observations/normalize/normalized_tensor/RsqrtRsqrt:normalize_observations/normalize/normalized_tensor/add:z:0*
T0*
_output_shapes	
:?2:
8normalize_observations/normalize/normalized_tensor/Rsqrt?
6normalize_observations/normalize/normalized_tensor/mulMulobservation<normalize_observations/normalize/normalized_tensor/Rsqrt:y:0*
T0*(
_output_shapes
:??????????28
6normalize_observations/normalize/normalized_tensor/mul?
6normalize_observations/normalize/normalized_tensor/NegNeg,normalize_observations/normalize/truediv:z:0*
T0*
_output_shapes	
:?28
6normalize_observations/normalize/normalized_tensor/Neg?
8normalize_observations/normalize/normalized_tensor/mul_1Mul:normalize_observations/normalize/normalized_tensor/Neg:y:0<normalize_observations/normalize/normalized_tensor/Rsqrt:y:0*
T0*
_output_shapes	
:?2:
8normalize_observations/normalize/normalized_tensor/mul_1?
8normalize_observations/normalize/normalized_tensor/add_1AddV2:normalize_observations/normalize/normalized_tensor/mul:z:0<normalize_observations/normalize/normalized_tensor/mul_1:z:0*
T0*(
_output_shapes
:??????????2:
8normalize_observations/normalize/normalized_tensor/add_1?
Dnormalize_observations/normalize/clipped_normalized_tensor/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2F
Dnormalize_observations/normalize/clipped_normalized_tensor/Minimum/y?
Bnormalize_observations/normalize/clipped_normalized_tensor/MinimumMinimum<normalize_observations/normalize/normalized_tensor/add_1:z:0Mnormalize_observations/normalize/clipped_normalized_tensor/Minimum/y:output:0*
T0*(
_output_shapes
:??????????2D
Bnormalize_observations/normalize/clipped_normalized_tensor/Minimum?
<normalize_observations/normalize/clipped_normalized_tensor/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2>
<normalize_observations/normalize/clipped_normalized_tensor/y?
:normalize_observations/normalize/clipped_normalized_tensorMaximumFnormalize_observations/normalize/clipped_normalized_tensor/Minimum:z:0Enormalize_observations/normalize/clipped_normalized_tensor/y:output:0*
T0*(
_output_shapes
:??????????2<
:normalize_observations/normalize/clipped_normalized_tensor?
9ActorDistributionNetwork/EncodingNetwork/flatten_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2;
9ActorDistributionNetwork/EncodingNetwork/flatten_14/Const?
;ActorDistributionNetwork/EncodingNetwork/flatten_14/ReshapeReshape>normalize_observations/normalize/clipped_normalized_tensor:z:0BActorDistributionNetwork/EncodingNetwork/flatten_14/Const:output:0*
T0*(
_output_shapes
:??????????2=
;ActorDistributionNetwork/EncodingNetwork/flatten_14/Reshape?
GActorDistributionNetwork/EncodingNetwork/dense_35/MatMul/ReadVariableOpReadVariableOpPactordistributionnetwork_encodingnetwork_dense_35_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02I
GActorDistributionNetwork/EncodingNetwork/dense_35/MatMul/ReadVariableOp?
8ActorDistributionNetwork/EncodingNetwork/dense_35/MatMulMatMulDActorDistributionNetwork/EncodingNetwork/flatten_14/Reshape:output:0OActorDistributionNetwork/EncodingNetwork/dense_35/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2:
8ActorDistributionNetwork/EncodingNetwork/dense_35/MatMul?
HActorDistributionNetwork/EncodingNetwork/dense_35/BiasAdd/ReadVariableOpReadVariableOpQactordistributionnetwork_encodingnetwork_dense_35_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02J
HActorDistributionNetwork/EncodingNetwork/dense_35/BiasAdd/ReadVariableOp?
9ActorDistributionNetwork/EncodingNetwork/dense_35/BiasAddBiasAddBActorDistributionNetwork/EncodingNetwork/dense_35/MatMul:product:0PActorDistributionNetwork/EncodingNetwork/dense_35/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2;
9ActorDistributionNetwork/EncodingNetwork/dense_35/BiasAdd?
6ActorDistributionNetwork/EncodingNetwork/dense_35/ReluReluBActorDistributionNetwork/EncodingNetwork/dense_35/BiasAdd:output:0*
T0*(
_output_shapes
:??????????28
6ActorDistributionNetwork/EncodingNetwork/dense_35/Relu?
GActorDistributionNetwork/EncodingNetwork/dense_36/MatMul/ReadVariableOpReadVariableOpPactordistributionnetwork_encodingnetwork_dense_36_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02I
GActorDistributionNetwork/EncodingNetwork/dense_36/MatMul/ReadVariableOp?
8ActorDistributionNetwork/EncodingNetwork/dense_36/MatMulMatMulDActorDistributionNetwork/EncodingNetwork/dense_35/Relu:activations:0OActorDistributionNetwork/EncodingNetwork/dense_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2:
8ActorDistributionNetwork/EncodingNetwork/dense_36/MatMul?
HActorDistributionNetwork/EncodingNetwork/dense_36/BiasAdd/ReadVariableOpReadVariableOpQactordistributionnetwork_encodingnetwork_dense_36_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02J
HActorDistributionNetwork/EncodingNetwork/dense_36/BiasAdd/ReadVariableOp?
9ActorDistributionNetwork/EncodingNetwork/dense_36/BiasAddBiasAddBActorDistributionNetwork/EncodingNetwork/dense_36/MatMul:product:0PActorDistributionNetwork/EncodingNetwork/dense_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2;
9ActorDistributionNetwork/EncodingNetwork/dense_36/BiasAdd?
6ActorDistributionNetwork/EncodingNetwork/dense_36/ReluReluBActorDistributionNetwork/EncodingNetwork/dense_36/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d28
6ActorDistributionNetwork/EncodingNetwork/dense_36/Relu?
]ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOpReadVariableOpfactordistributionnetwork_normalprojectionnetwork_means_projection_layer_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02_
]ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp?
NActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMulMatMulDActorDistributionNetwork/EncodingNetwork/dense_36/Relu:activations:0eActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2P
NActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul?
^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOpReadVariableOpgactordistributionnetwork_normalprojectionnetwork_means_projection_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02`
^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp?
OActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAddBiasAddXActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul:product:0fActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2Q
OActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd?
>ActorDistributionNetwork/NormalProjectionNetwork/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2@
>ActorDistributionNetwork/NormalProjectionNetwork/Reshape/shape?
8ActorDistributionNetwork/NormalProjectionNetwork/ReshapeReshapeXActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd:output:0GActorDistributionNetwork/NormalProjectionNetwork/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2:
8ActorDistributionNetwork/NormalProjectionNetwork/Reshape?
5ActorDistributionNetwork/NormalProjectionNetwork/TanhTanhAActorDistributionNetwork/NormalProjectionNetwork/Reshape:output:0*
T0*'
_output_shapes
:?????????27
5ActorDistributionNetwork/NormalProjectionNetwork/Tanh?
6ActorDistributionNetwork/NormalProjectionNetwork/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?28
6ActorDistributionNetwork/NormalProjectionNetwork/mul/x?
4ActorDistributionNetwork/NormalProjectionNetwork/mulMul?ActorDistributionNetwork/NormalProjectionNetwork/mul/x:output:09ActorDistributionNetwork/NormalProjectionNetwork/Tanh:y:0*
T0*'
_output_shapes
:?????????26
4ActorDistributionNetwork/NormalProjectionNetwork/mul?
6ActorDistributionNetwork/NormalProjectionNetwork/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?28
6ActorDistributionNetwork/NormalProjectionNetwork/add/x?
4ActorDistributionNetwork/NormalProjectionNetwork/addAddV2?ActorDistributionNetwork/NormalProjectionNetwork/add/x:output:08ActorDistributionNetwork/NormalProjectionNetwork/mul:z:0*
T0*'
_output_shapes
:?????????26
4ActorDistributionNetwork/NormalProjectionNetwork/add?
;ActorDistributionNetwork/NormalProjectionNetwork/zeros_like	ZerosLike8ActorDistributionNetwork/NormalProjectionNetwork/add:z:0*
T0*'
_output_shapes
:?????????2=
;ActorDistributionNetwork/NormalProjectionNetwork/zeros_like?
TActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/BiasAdd/ReadVariableOpReadVariableOp]actordistributionnetwork_normalprojectionnetwork_bias_layer_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02V
TActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/BiasAdd/ReadVariableOp?
EActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/BiasAddBiasAdd?ActorDistributionNetwork/NormalProjectionNetwork/zeros_like:y:0\ActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2G
EActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/BiasAdd?
@ActorDistributionNetwork/NormalProjectionNetwork/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2B
@ActorDistributionNetwork/NormalProjectionNetwork/Reshape_1/shape?
:ActorDistributionNetwork/NormalProjectionNetwork/Reshape_1ReshapeNActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/BiasAdd:output:0IActorDistributionNetwork/NormalProjectionNetwork/Reshape_1/shape:output:0*
T0*'
_output_shapes
:?????????2<
:ActorDistributionNetwork/NormalProjectionNetwork/Reshape_1?
9ActorDistributionNetwork/NormalProjectionNetwork/SoftplusSoftplusCActorDistributionNetwork/NormalProjectionNetwork/Reshape_1:output:0*
T0*'
_output_shapes
:?????????2;
9ActorDistributionNetwork/NormalProjectionNetwork/Softplus?
gActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/ConstConst*
_output_shapes
: *
dtype0*
value	B :2i
gActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/Const?
mActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/event_shapeConst*
_output_shapes
:*
dtype0*
valueB:2o
mActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/event_shape?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/ShapeShapeGActorDistributionNetwork/NormalProjectionNetwork/Softplus:activations:0*
T0*
_output_shapes
:2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/Shape?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_1?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_2?	
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_sliceStridedSlice?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/Shape:output:0?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack:output:0?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_1:output:0?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/values_1Pack?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice:output:0*
N*
T0*
_output_shapes
:2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/values_1?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/axis?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concatConcatV2?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/Shape:output:0?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/values_1:output:0?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/axis:output:0*
N*
T0*
_output_shapes
:2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_1?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_sliceStridedSlice?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat:output:0?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack:output:0?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_1:output:0?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice?
gActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/ShapeShape8ActorDistributionNetwork/NormalProjectionNetwork/add:z:0*
T0*
_output_shapes
:2i
gActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/Shape?
uActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2w
uActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack?
wActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2y
wActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_1?
wActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2y
wActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_2?
oActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_sliceStridedSlicepActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/Shape:output:0~ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack:output:0?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_1:output:0?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2q
oActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice?
oActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/BroadcastArgsBroadcastArgs?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice:output:0xActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice:output:0*
_output_shapes
:2q
oActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/BroadcastArgs?
SActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2U
SActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros/Const?
MActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zerosFilltActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/BroadcastArgs:r0:0\ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros/Const:output:0*
T0*#
_output_shapes
:?????????2O
MActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros?
LActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/onesConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2N
LActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/ones?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/sample_shape?
LActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeroConst*
_output_shapes
: *
dtype0*
value	B : 2N
LActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zero?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ShapeShapeVActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros:output:0*
T0*
_output_shapes
:2?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/Shape?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs/s1Const*
_output_shapes
: *
dtype0*
valueB 2?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs/s1?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgsBroadcastArgs?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/Shape:output:0?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs/s1:output:0*
_output_shapes
:2?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shapeIdentity?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs:r0:0*
T0*
_output_shapes
:2?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape?	
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shapeIdentity?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape:output:0*
T0*
_output_shapes
:2?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/batch_shapeIdentity?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape:output:0*
T0*
_output_shapes
:2?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/batch_shape?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/ConstConst*
_output_shapes
:*
dtype0*
valueB:2?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/Const?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/event_shapeIdentity?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/Const:output:0*
T0*
_output_shapes
:2?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/event_shape?
XActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2Z
XActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat/axis?
SActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concatConcatV2?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/batch_shape:output:0?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/event_shape:output:0aActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat/axis:output:0*
N*
T0*
_output_shapes
:2U
SActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat?
UActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/IdentityIdentity8ActorDistributionNetwork/NormalProjectionNetwork/add:z:0*
T0*'
_output_shapes
:?????????2W
UActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/Identity?
XActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2Z
XActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros/Const?
RActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zerosFill\ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat:output:0aActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2T
RActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros?
PActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/addAddV2^ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/Identity:output:0[ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros:output:0*
T0*'
_output_shapes
:?????????2R
PActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/addm
Deterministic/atolConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Deterministic/atolm
Deterministic/rtolConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Deterministic/rtolq
Deterministic_1/atolConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Deterministic_1/atolq
Deterministic_1/rtolConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Deterministic_1/rtol?
IdentityIdentityTActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/add:z:0I^ActorDistributionNetwork/EncodingNetwork/dense_35/BiasAdd/ReadVariableOpH^ActorDistributionNetwork/EncodingNetwork/dense_35/MatMul/ReadVariableOpI^ActorDistributionNetwork/EncodingNetwork/dense_36/BiasAdd/ReadVariableOpH^ActorDistributionNetwork/EncodingNetwork/dense_36/MatMul/ReadVariableOpU^ActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/BiasAdd/ReadVariableOp_^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp^^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp0^normalize_observations/normalize/ReadVariableOp2^normalize_observations/normalize/ReadVariableOp_18^normalize_observations/normalize/truediv/ReadVariableOp:^normalize_observations/normalize/truediv_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identityq
Deterministic_2/atolConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Deterministic_2/atolq
Deterministic_2/rtolConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Deterministic_2/rtol"
identityIdentity:output:0*|
_input_shapesk
i:?????????:?????????:?????????:??????????::::::::::2?
HActorDistributionNetwork/EncodingNetwork/dense_35/BiasAdd/ReadVariableOpHActorDistributionNetwork/EncodingNetwork/dense_35/BiasAdd/ReadVariableOp2?
GActorDistributionNetwork/EncodingNetwork/dense_35/MatMul/ReadVariableOpGActorDistributionNetwork/EncodingNetwork/dense_35/MatMul/ReadVariableOp2?
HActorDistributionNetwork/EncodingNetwork/dense_36/BiasAdd/ReadVariableOpHActorDistributionNetwork/EncodingNetwork/dense_36/BiasAdd/ReadVariableOp2?
GActorDistributionNetwork/EncodingNetwork/dense_36/MatMul/ReadVariableOpGActorDistributionNetwork/EncodingNetwork/dense_36/MatMul/ReadVariableOp2?
TActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/BiasAdd/ReadVariableOpTActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/BiasAdd/ReadVariableOp2?
^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp2?
]ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp]ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp2b
/normalize_observations/normalize/ReadVariableOp/normalize_observations/normalize/ReadVariableOp2f
1normalize_observations/normalize/ReadVariableOp_11normalize_observations/normalize/ReadVariableOp_12r
7normalize_observations/normalize/truediv/ReadVariableOp7normalize_observations/normalize/truediv/ReadVariableOp2v
9normalize_observations/normalize/truediv_1/ReadVariableOp9normalize_observations/normalize/truediv_1/ReadVariableOp:N J
#
_output_shapes
:?????????
#
_user_specified_name	step_type:KG
#
_output_shapes
:?????????
 
_user_specified_namereward:MI
#
_output_shapes
:?????????
"
_user_specified_name
discount:UQ
(
_output_shapes
:??????????
%
_user_specified_nameobservation
?
9
'__inference_get_initial_state_164557889

batch_size*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
??
?
+__inference_polymorphic_action_fn_164557653
	step_type

reward
discount
observation<
8normalize_observations_normalize_readvariableop_resourceD
@normalize_observations_normalize_truediv_readvariableop_resource>
:normalize_observations_normalize_readvariableop_1_resourceT
Pactordistributionnetwork_encodingnetwork_dense_35_matmul_readvariableop_resourceU
Qactordistributionnetwork_encodingnetwork_dense_35_biasadd_readvariableop_resourceT
Pactordistributionnetwork_encodingnetwork_dense_36_matmul_readvariableop_resourceU
Qactordistributionnetwork_encodingnetwork_dense_36_biasadd_readvariableop_resourcej
factordistributionnetwork_normalprojectionnetwork_means_projection_layer_matmul_readvariableop_resourcek
gactordistributionnetwork_normalprojectionnetwork_means_projection_layer_biasadd_readvariableop_resourcea
]actordistributionnetwork_normalprojectionnetwork_bias_layer_7_biasadd_readvariableop_resource
identity??HActorDistributionNetwork/EncodingNetwork/dense_35/BiasAdd/ReadVariableOp?GActorDistributionNetwork/EncodingNetwork/dense_35/MatMul/ReadVariableOp?HActorDistributionNetwork/EncodingNetwork/dense_36/BiasAdd/ReadVariableOp?GActorDistributionNetwork/EncodingNetwork/dense_36/MatMul/ReadVariableOp?TActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/BiasAdd/ReadVariableOp?^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp?]ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp?/normalize_observations/normalize/ReadVariableOp?1normalize_observations/normalize/ReadVariableOp_1?7normalize_observations/normalize/truediv/ReadVariableOp?9normalize_observations/normalize/truediv_1/ReadVariableOp?
/normalize_observations/normalize/ReadVariableOpReadVariableOp8normalize_observations_normalize_readvariableop_resource*
_output_shapes	
:?*
dtype021
/normalize_observations/normalize/ReadVariableOp?
7normalize_observations/normalize/truediv/ReadVariableOpReadVariableOp@normalize_observations_normalize_truediv_readvariableop_resource*
_output_shapes	
:?*
dtype029
7normalize_observations/normalize/truediv/ReadVariableOp?
(normalize_observations/normalize/truedivRealDiv7normalize_observations/normalize/ReadVariableOp:value:0?normalize_observations/normalize/truediv/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2*
(normalize_observations/normalize/truediv?
1normalize_observations/normalize/ReadVariableOp_1ReadVariableOp:normalize_observations_normalize_readvariableop_1_resource*
_output_shapes	
:?*
dtype023
1normalize_observations/normalize/ReadVariableOp_1?
9normalize_observations/normalize/truediv_1/ReadVariableOpReadVariableOp@normalize_observations_normalize_truediv_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9normalize_observations/normalize/truediv_1/ReadVariableOp?
*normalize_observations/normalize/truediv_1RealDiv9normalize_observations/normalize/ReadVariableOp_1:value:0Anormalize_observations/normalize/truediv_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2,
*normalize_observations/normalize/truediv_1?
8normalize_observations/normalize/normalized_tensor/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2:
8normalize_observations/normalize/normalized_tensor/add/y?
6normalize_observations/normalize/normalized_tensor/addAddV2.normalize_observations/normalize/truediv_1:z:0Anormalize_observations/normalize/normalized_tensor/add/y:output:0*
T0*
_output_shapes	
:?28
6normalize_observations/normalize/normalized_tensor/add?
8normalize_observations/normalize/normalized_tensor/RsqrtRsqrt:normalize_observations/normalize/normalized_tensor/add:z:0*
T0*
_output_shapes	
:?2:
8normalize_observations/normalize/normalized_tensor/Rsqrt?
6normalize_observations/normalize/normalized_tensor/mulMulobservation<normalize_observations/normalize/normalized_tensor/Rsqrt:y:0*
T0*(
_output_shapes
:??????????28
6normalize_observations/normalize/normalized_tensor/mul?
6normalize_observations/normalize/normalized_tensor/NegNeg,normalize_observations/normalize/truediv:z:0*
T0*
_output_shapes	
:?28
6normalize_observations/normalize/normalized_tensor/Neg?
8normalize_observations/normalize/normalized_tensor/mul_1Mul:normalize_observations/normalize/normalized_tensor/Neg:y:0<normalize_observations/normalize/normalized_tensor/Rsqrt:y:0*
T0*
_output_shapes	
:?2:
8normalize_observations/normalize/normalized_tensor/mul_1?
8normalize_observations/normalize/normalized_tensor/add_1AddV2:normalize_observations/normalize/normalized_tensor/mul:z:0<normalize_observations/normalize/normalized_tensor/mul_1:z:0*
T0*(
_output_shapes
:??????????2:
8normalize_observations/normalize/normalized_tensor/add_1?
Dnormalize_observations/normalize/clipped_normalized_tensor/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2F
Dnormalize_observations/normalize/clipped_normalized_tensor/Minimum/y?
Bnormalize_observations/normalize/clipped_normalized_tensor/MinimumMinimum<normalize_observations/normalize/normalized_tensor/add_1:z:0Mnormalize_observations/normalize/clipped_normalized_tensor/Minimum/y:output:0*
T0*(
_output_shapes
:??????????2D
Bnormalize_observations/normalize/clipped_normalized_tensor/Minimum?
<normalize_observations/normalize/clipped_normalized_tensor/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2>
<normalize_observations/normalize/clipped_normalized_tensor/y?
:normalize_observations/normalize/clipped_normalized_tensorMaximumFnormalize_observations/normalize/clipped_normalized_tensor/Minimum:z:0Enormalize_observations/normalize/clipped_normalized_tensor/y:output:0*
T0*(
_output_shapes
:??????????2<
:normalize_observations/normalize/clipped_normalized_tensor?
9ActorDistributionNetwork/EncodingNetwork/flatten_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2;
9ActorDistributionNetwork/EncodingNetwork/flatten_14/Const?
;ActorDistributionNetwork/EncodingNetwork/flatten_14/ReshapeReshape>normalize_observations/normalize/clipped_normalized_tensor:z:0BActorDistributionNetwork/EncodingNetwork/flatten_14/Const:output:0*
T0*(
_output_shapes
:??????????2=
;ActorDistributionNetwork/EncodingNetwork/flatten_14/Reshape?
GActorDistributionNetwork/EncodingNetwork/dense_35/MatMul/ReadVariableOpReadVariableOpPactordistributionnetwork_encodingnetwork_dense_35_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02I
GActorDistributionNetwork/EncodingNetwork/dense_35/MatMul/ReadVariableOp?
8ActorDistributionNetwork/EncodingNetwork/dense_35/MatMulMatMulDActorDistributionNetwork/EncodingNetwork/flatten_14/Reshape:output:0OActorDistributionNetwork/EncodingNetwork/dense_35/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2:
8ActorDistributionNetwork/EncodingNetwork/dense_35/MatMul?
HActorDistributionNetwork/EncodingNetwork/dense_35/BiasAdd/ReadVariableOpReadVariableOpQactordistributionnetwork_encodingnetwork_dense_35_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02J
HActorDistributionNetwork/EncodingNetwork/dense_35/BiasAdd/ReadVariableOp?
9ActorDistributionNetwork/EncodingNetwork/dense_35/BiasAddBiasAddBActorDistributionNetwork/EncodingNetwork/dense_35/MatMul:product:0PActorDistributionNetwork/EncodingNetwork/dense_35/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2;
9ActorDistributionNetwork/EncodingNetwork/dense_35/BiasAdd?
6ActorDistributionNetwork/EncodingNetwork/dense_35/ReluReluBActorDistributionNetwork/EncodingNetwork/dense_35/BiasAdd:output:0*
T0*(
_output_shapes
:??????????28
6ActorDistributionNetwork/EncodingNetwork/dense_35/Relu?
GActorDistributionNetwork/EncodingNetwork/dense_36/MatMul/ReadVariableOpReadVariableOpPactordistributionnetwork_encodingnetwork_dense_36_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02I
GActorDistributionNetwork/EncodingNetwork/dense_36/MatMul/ReadVariableOp?
8ActorDistributionNetwork/EncodingNetwork/dense_36/MatMulMatMulDActorDistributionNetwork/EncodingNetwork/dense_35/Relu:activations:0OActorDistributionNetwork/EncodingNetwork/dense_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2:
8ActorDistributionNetwork/EncodingNetwork/dense_36/MatMul?
HActorDistributionNetwork/EncodingNetwork/dense_36/BiasAdd/ReadVariableOpReadVariableOpQactordistributionnetwork_encodingnetwork_dense_36_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02J
HActorDistributionNetwork/EncodingNetwork/dense_36/BiasAdd/ReadVariableOp?
9ActorDistributionNetwork/EncodingNetwork/dense_36/BiasAddBiasAddBActorDistributionNetwork/EncodingNetwork/dense_36/MatMul:product:0PActorDistributionNetwork/EncodingNetwork/dense_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2;
9ActorDistributionNetwork/EncodingNetwork/dense_36/BiasAdd?
6ActorDistributionNetwork/EncodingNetwork/dense_36/ReluReluBActorDistributionNetwork/EncodingNetwork/dense_36/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d28
6ActorDistributionNetwork/EncodingNetwork/dense_36/Relu?
]ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOpReadVariableOpfactordistributionnetwork_normalprojectionnetwork_means_projection_layer_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02_
]ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp?
NActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMulMatMulDActorDistributionNetwork/EncodingNetwork/dense_36/Relu:activations:0eActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2P
NActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul?
^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOpReadVariableOpgactordistributionnetwork_normalprojectionnetwork_means_projection_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02`
^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp?
OActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAddBiasAddXActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul:product:0fActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2Q
OActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd?
>ActorDistributionNetwork/NormalProjectionNetwork/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2@
>ActorDistributionNetwork/NormalProjectionNetwork/Reshape/shape?
8ActorDistributionNetwork/NormalProjectionNetwork/ReshapeReshapeXActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd:output:0GActorDistributionNetwork/NormalProjectionNetwork/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2:
8ActorDistributionNetwork/NormalProjectionNetwork/Reshape?
5ActorDistributionNetwork/NormalProjectionNetwork/TanhTanhAActorDistributionNetwork/NormalProjectionNetwork/Reshape:output:0*
T0*'
_output_shapes
:?????????27
5ActorDistributionNetwork/NormalProjectionNetwork/Tanh?
6ActorDistributionNetwork/NormalProjectionNetwork/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?28
6ActorDistributionNetwork/NormalProjectionNetwork/mul/x?
4ActorDistributionNetwork/NormalProjectionNetwork/mulMul?ActorDistributionNetwork/NormalProjectionNetwork/mul/x:output:09ActorDistributionNetwork/NormalProjectionNetwork/Tanh:y:0*
T0*'
_output_shapes
:?????????26
4ActorDistributionNetwork/NormalProjectionNetwork/mul?
6ActorDistributionNetwork/NormalProjectionNetwork/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?28
6ActorDistributionNetwork/NormalProjectionNetwork/add/x?
4ActorDistributionNetwork/NormalProjectionNetwork/addAddV2?ActorDistributionNetwork/NormalProjectionNetwork/add/x:output:08ActorDistributionNetwork/NormalProjectionNetwork/mul:z:0*
T0*'
_output_shapes
:?????????26
4ActorDistributionNetwork/NormalProjectionNetwork/add?
;ActorDistributionNetwork/NormalProjectionNetwork/zeros_like	ZerosLike8ActorDistributionNetwork/NormalProjectionNetwork/add:z:0*
T0*'
_output_shapes
:?????????2=
;ActorDistributionNetwork/NormalProjectionNetwork/zeros_like?
TActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/BiasAdd/ReadVariableOpReadVariableOp]actordistributionnetwork_normalprojectionnetwork_bias_layer_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02V
TActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/BiasAdd/ReadVariableOp?
EActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/BiasAddBiasAdd?ActorDistributionNetwork/NormalProjectionNetwork/zeros_like:y:0\ActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2G
EActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/BiasAdd?
@ActorDistributionNetwork/NormalProjectionNetwork/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2B
@ActorDistributionNetwork/NormalProjectionNetwork/Reshape_1/shape?
:ActorDistributionNetwork/NormalProjectionNetwork/Reshape_1ReshapeNActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/BiasAdd:output:0IActorDistributionNetwork/NormalProjectionNetwork/Reshape_1/shape:output:0*
T0*'
_output_shapes
:?????????2<
:ActorDistributionNetwork/NormalProjectionNetwork/Reshape_1?
9ActorDistributionNetwork/NormalProjectionNetwork/SoftplusSoftplusCActorDistributionNetwork/NormalProjectionNetwork/Reshape_1:output:0*
T0*'
_output_shapes
:?????????2;
9ActorDistributionNetwork/NormalProjectionNetwork/Softplus?
gActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/ConstConst*
_output_shapes
: *
dtype0*
value	B :2i
gActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/Const?
mActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/event_shapeConst*
_output_shapes
:*
dtype0*
valueB:2o
mActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/event_shape?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/ShapeShapeGActorDistributionNetwork/NormalProjectionNetwork/Softplus:activations:0*
T0*
_output_shapes
:2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/Shape?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_1?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_2?	
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_sliceStridedSlice?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/Shape:output:0?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack:output:0?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_1:output:0?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/values_1Pack?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice:output:0*
N*
T0*
_output_shapes
:2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/values_1?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/axis?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concatConcatV2?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/Shape:output:0?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/values_1:output:0?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/axis:output:0*
N*
T0*
_output_shapes
:2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_1?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_sliceStridedSlice?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat:output:0?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack:output:0?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_1:output:0?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice?
gActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/ShapeShape8ActorDistributionNetwork/NormalProjectionNetwork/add:z:0*
T0*
_output_shapes
:2i
gActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/Shape?
uActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2w
uActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack?
wActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2y
wActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_1?
wActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2y
wActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_2?
oActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_sliceStridedSlicepActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/Shape:output:0~ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack:output:0?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_1:output:0?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2q
oActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice?
oActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/BroadcastArgsBroadcastArgs?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice:output:0xActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice:output:0*
_output_shapes
:2q
oActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/BroadcastArgs?
SActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2U
SActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros/Const?
MActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zerosFilltActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/BroadcastArgs:r0:0\ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros/Const:output:0*
T0*#
_output_shapes
:?????????2O
MActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros?
LActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/onesConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2N
LActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/ones?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/sample_shape?
LActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeroConst*
_output_shapes
: *
dtype0*
value	B : 2N
LActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zero?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ShapeShapeVActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros:output:0*
T0*
_output_shapes
:2?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/Shape?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs/s1Const*
_output_shapes
: *
dtype0*
valueB 2?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs/s1?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgsBroadcastArgs?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/Shape:output:0?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs/s1:output:0*
_output_shapes
:2?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shapeIdentity?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs:r0:0*
T0*
_output_shapes
:2?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape?	
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shapeIdentity?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape:output:0*
T0*
_output_shapes
:2?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/batch_shapeIdentity?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape:output:0*
T0*
_output_shapes
:2?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/batch_shape?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/ConstConst*
_output_shapes
:*
dtype0*
valueB:2?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/Const?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/event_shapeIdentity?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/Const:output:0*
T0*
_output_shapes
:2?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/event_shape?
XActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2Z
XActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat/axis?
SActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concatConcatV2?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/batch_shape:output:0?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/event_shape:output:0aActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat/axis:output:0*
N*
T0*
_output_shapes
:2U
SActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat?
UActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/IdentityIdentity8ActorDistributionNetwork/NormalProjectionNetwork/add:z:0*
T0*'
_output_shapes
:?????????2W
UActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/Identity?
XActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2Z
XActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros/Const?
RActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zerosFill\ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat:output:0aActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2T
RActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros?
PActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/addAddV2^ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/Identity:output:0[ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros:output:0*
T0*'
_output_shapes
:?????????2R
PActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/addm
Deterministic/atolConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Deterministic/atolm
Deterministic/rtolConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Deterministic/rtol?
#Deterministic_1/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 2%
#Deterministic_1/sample/sample_shape?
Deterministic_1/sample/ShapeShapeTActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/add:z:0*
T0*
_output_shapes
:2
Deterministic_1/sample/Shape?
'Deterministic_1/sample/BroadcastArgs/s1Const*
_output_shapes
: *
dtype0*
valueB 2)
'Deterministic_1/sample/BroadcastArgs/s1?
$Deterministic_1/sample/BroadcastArgsBroadcastArgs%Deterministic_1/sample/Shape:output:00Deterministic_1/sample/BroadcastArgs/s1:output:0*
_output_shapes
:2&
$Deterministic_1/sample/BroadcastArgs
Deterministic_1/sample/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
Deterministic_1/sample/Const?
&Deterministic_1/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:2(
&Deterministic_1/sample/concat/values_0?
"Deterministic_1/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"Deterministic_1/sample/concat/axis?
Deterministic_1/sample/concatConcatV2/Deterministic_1/sample/concat/values_0:output:0)Deterministic_1/sample/BroadcastArgs:r0:0%Deterministic_1/sample/Const:output:0+Deterministic_1/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Deterministic_1/sample/concat?
"Deterministic_1/sample/BroadcastToBroadcastToTActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/add:z:0&Deterministic_1/sample/concat:output:0*
T0*+
_output_shapes
:?????????2$
"Deterministic_1/sample/BroadcastTo?
Deterministic_1/sample/Shape_1Shape+Deterministic_1/sample/BroadcastTo:output:0*
T0*
_output_shapes
:2 
Deterministic_1/sample/Shape_1?
*Deterministic_1/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*Deterministic_1/sample/strided_slice/stack?
,Deterministic_1/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,Deterministic_1/sample/strided_slice/stack_1?
,Deterministic_1/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,Deterministic_1/sample/strided_slice/stack_2?
$Deterministic_1/sample/strided_sliceStridedSlice'Deterministic_1/sample/Shape_1:output:03Deterministic_1/sample/strided_slice/stack:output:05Deterministic_1/sample/strided_slice/stack_1:output:05Deterministic_1/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2&
$Deterministic_1/sample/strided_slice?
$Deterministic_1/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2&
$Deterministic_1/sample/concat_1/axis?
Deterministic_1/sample/concat_1ConcatV2,Deterministic_1/sample/sample_shape:output:0-Deterministic_1/sample/strided_slice:output:0-Deterministic_1/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2!
Deterministic_1/sample/concat_1?
Deterministic_1/sample/ReshapeReshape+Deterministic_1/sample/BroadcastTo:output:0(Deterministic_1/sample/concat_1:output:0*
T0*'
_output_shapes
:?????????2 
Deterministic_1/sample/Reshapew
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum'Deterministic_1/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:?????????2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:?????????2
clip_by_value?
IdentityIdentityclip_by_value:z:0I^ActorDistributionNetwork/EncodingNetwork/dense_35/BiasAdd/ReadVariableOpH^ActorDistributionNetwork/EncodingNetwork/dense_35/MatMul/ReadVariableOpI^ActorDistributionNetwork/EncodingNetwork/dense_36/BiasAdd/ReadVariableOpH^ActorDistributionNetwork/EncodingNetwork/dense_36/MatMul/ReadVariableOpU^ActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/BiasAdd/ReadVariableOp_^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp^^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp0^normalize_observations/normalize/ReadVariableOp2^normalize_observations/normalize/ReadVariableOp_18^normalize_observations/normalize/truediv/ReadVariableOp:^normalize_observations/normalize/truediv_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*|
_input_shapesk
i:?????????:?????????:?????????:??????????::::::::::2?
HActorDistributionNetwork/EncodingNetwork/dense_35/BiasAdd/ReadVariableOpHActorDistributionNetwork/EncodingNetwork/dense_35/BiasAdd/ReadVariableOp2?
GActorDistributionNetwork/EncodingNetwork/dense_35/MatMul/ReadVariableOpGActorDistributionNetwork/EncodingNetwork/dense_35/MatMul/ReadVariableOp2?
HActorDistributionNetwork/EncodingNetwork/dense_36/BiasAdd/ReadVariableOpHActorDistributionNetwork/EncodingNetwork/dense_36/BiasAdd/ReadVariableOp2?
GActorDistributionNetwork/EncodingNetwork/dense_36/MatMul/ReadVariableOpGActorDistributionNetwork/EncodingNetwork/dense_36/MatMul/ReadVariableOp2?
TActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/BiasAdd/ReadVariableOpTActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/BiasAdd/ReadVariableOp2?
^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp2?
]ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp]ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp2b
/normalize_observations/normalize/ReadVariableOp/normalize_observations/normalize/ReadVariableOp2f
1normalize_observations/normalize/ReadVariableOp_11normalize_observations/normalize/ReadVariableOp_12r
7normalize_observations/normalize/truediv/ReadVariableOp7normalize_observations/normalize/truediv/ReadVariableOp2v
9normalize_observations/normalize/truediv_1/ReadVariableOp9normalize_observations/normalize/truediv_1/ReadVariableOp:N J
#
_output_shapes
:?????????
#
_user_specified_name	step_type:KG
#
_output_shapes
:?????????
 
_user_specified_namereward:MI
#
_output_shapes
:?????????
"
_user_specified_name
discount:UQ
(
_output_shapes
:??????????
%
_user_specified_nameobservation
?
9
'__inference_signature_wrapper_164557506

batch_size?
PartitionedCallPartitionedCall
batch_size*
Tin
2*

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *6
f1R/
-__inference_function_with_signature_1645575012
PartitionedCall*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
5
 
__inference_<lambda>_164557075*
_input_shapes 
?
9
'__inference_get_initial_state_164557500

batch_size*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
?
?
-__inference_function_with_signature_164557464
	step_type

reward
discount
observation
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall	step_typerewarddiscountobservationunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *4
f/R-
+__inference_polymorphic_action_fn_1645574412
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*|
_input_shapesk
i:?????????:?????????:?????????:??????????::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
#
_output_shapes
:?????????
%
_user_specified_name0/step_type:MI
#
_output_shapes
:?????????
"
_user_specified_name
0/reward:OK
#
_output_shapes
:?????????
$
_user_specified_name
0/discount:WS
(
_output_shapes
:??????????
'
_user_specified_name0/observation
?2
?

"__inference__traced_save_164557968
file_prefix'
#savev2_variable_read_readvariableop	W
Ssavev2_actordistributionnetwork_encodingnetwork_dense_35_kernel_read_readvariableopU
Qsavev2_actordistributionnetwork_encodingnetwork_dense_35_bias_read_readvariableopW
Ssavev2_actordistributionnetwork_encodingnetwork_dense_36_kernel_read_readvariableopU
Qsavev2_actordistributionnetwork_encodingnetwork_dense_36_bias_read_readvariableopa
]savev2_actordistributionnetwork_normalprojectionnetwork_bias_layer_7_bias_read_readvariableopm
isavev2_actordistributionnetwork_normalprojectionnetwork_means_projection_layer_kernel_read_readvariableopk
gsavev2_actordistributionnetwork_normalprojectionnetwork_means_projection_layer_bias_read_readvariableop$
 savev2_count_read_readvariableop'
#savev2_mean_sum_read_readvariableop&
"savev2_var_sum_read_readvariableopK
Gsavev2_valuenetwork_encodingnetwork_dense_37_kernel_read_readvariableopI
Esavev2_valuenetwork_encodingnetwork_dense_37_bias_read_readvariableopK
Gsavev2_valuenetwork_encodingnetwork_dense_38_kernel_read_readvariableopI
Esavev2_valuenetwork_encodingnetwork_dense_38_bias_read_readvariableop;
7savev2_valuenetwork_dense_39_kernel_read_readvariableop9
5savev2_valuenetwork_dense_39_bias_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B%train_step/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/0/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/1/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/2/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/3/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/4/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/5/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/6/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/7/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/8/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/9/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/10/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/11/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/12/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/13/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/14/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/15/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*7
value.B,B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0#savev2_variable_read_readvariableopSsavev2_actordistributionnetwork_encodingnetwork_dense_35_kernel_read_readvariableopQsavev2_actordistributionnetwork_encodingnetwork_dense_35_bias_read_readvariableopSsavev2_actordistributionnetwork_encodingnetwork_dense_36_kernel_read_readvariableopQsavev2_actordistributionnetwork_encodingnetwork_dense_36_bias_read_readvariableop]savev2_actordistributionnetwork_normalprojectionnetwork_bias_layer_7_bias_read_readvariableopisavev2_actordistributionnetwork_normalprojectionnetwork_means_projection_layer_kernel_read_readvariableopgsavev2_actordistributionnetwork_normalprojectionnetwork_means_projection_layer_bias_read_readvariableop savev2_count_read_readvariableop#savev2_mean_sum_read_readvariableop"savev2_var_sum_read_readvariableopGsavev2_valuenetwork_encodingnetwork_dense_37_kernel_read_readvariableopEsavev2_valuenetwork_encodingnetwork_dense_37_bias_read_readvariableopGsavev2_valuenetwork_encodingnetwork_dense_38_kernel_read_readvariableopEsavev2_valuenetwork_encodingnetwork_dense_38_bias_read_readvariableop7savev2_valuenetwork_dense_39_kernel_read_readvariableop5savev2_valuenetwork_dense_39_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 * 
dtypes
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: : :
??:?:	?d:d::d::?:?:?:	?K:K:K(:(:(:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?d: 

_output_shapes
:d: 

_output_shapes
::$ 

_output_shapes

:d: 

_output_shapes
::!	

_output_shapes	
:?:!


_output_shapes	
:?:!

_output_shapes	
:?:%!

_output_shapes
:	?K: 

_output_shapes
:K:$ 

_output_shapes

:K(: 

_output_shapes
:(:$ 

_output_shapes

:(: 

_output_shapes
::

_output_shapes
: 
?
/
-__inference_function_with_signature_164557524?
PartitionedCallPartitionedCall*	
Tin
 *

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *'
f"R 
__inference_<lambda>_1645570752
PartitionedCall*
_input_shapes 
?N
?
%__inference__traced_restore_164558029
file_prefix
assignvariableop_variableO
Kassignvariableop_1_actordistributionnetwork_encodingnetwork_dense_35_kernelM
Iassignvariableop_2_actordistributionnetwork_encodingnetwork_dense_35_biasO
Kassignvariableop_3_actordistributionnetwork_encodingnetwork_dense_36_kernelM
Iassignvariableop_4_actordistributionnetwork_encodingnetwork_dense_36_biasY
Uassignvariableop_5_actordistributionnetwork_normalprojectionnetwork_bias_layer_7_biase
aassignvariableop_6_actordistributionnetwork_normalprojectionnetwork_means_projection_layer_kernelc
_assignvariableop_7_actordistributionnetwork_normalprojectionnetwork_means_projection_layer_bias
assignvariableop_8_count
assignvariableop_9_mean_sum
assignvariableop_10_var_sumD
@assignvariableop_11_valuenetwork_encodingnetwork_dense_37_kernelB
>assignvariableop_12_valuenetwork_encodingnetwork_dense_37_biasD
@assignvariableop_13_valuenetwork_encodingnetwork_dense_38_kernelB
>assignvariableop_14_valuenetwork_encodingnetwork_dense_38_bias4
0assignvariableop_15_valuenetwork_dense_39_kernel2
.assignvariableop_16_valuenetwork_dense_39_bias
identity_18??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B%train_step/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/0/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/1/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/2/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/3/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/4/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/5/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/6/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/7/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/8/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/9/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/10/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/11/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/12/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/13/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/14/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/15/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*7
value.B,B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_variableIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpKassignvariableop_1_actordistributionnetwork_encodingnetwork_dense_35_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpIassignvariableop_2_actordistributionnetwork_encodingnetwork_dense_35_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpKassignvariableop_3_actordistributionnetwork_encodingnetwork_dense_36_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpIassignvariableop_4_actordistributionnetwork_encodingnetwork_dense_36_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpUassignvariableop_5_actordistributionnetwork_normalprojectionnetwork_bias_layer_7_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpaassignvariableop_6_actordistributionnetwork_normalprojectionnetwork_means_projection_layer_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp_assignvariableop_7_actordistributionnetwork_normalprojectionnetwork_means_projection_layer_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_countIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_mean_sumIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_var_sumIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp@assignvariableop_11_valuenetwork_encodingnetwork_dense_37_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp>assignvariableop_12_valuenetwork_encodingnetwork_dense_37_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp@assignvariableop_13_valuenetwork_encodingnetwork_dense_38_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp>assignvariableop_14_valuenetwork_encodingnetwork_dense_38_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp0assignvariableop_15_valuenetwork_dense_39_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp.assignvariableop_16_valuenetwork_dense_39_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_169
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_17Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_17?
Identity_18IdentityIdentity_17:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_18"#
identity_18Identity_18:output:0*Y
_input_shapesH
F: :::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
??
?
+__inference_polymorphic_action_fn_164557441
	time_step
time_step_1
time_step_2
time_step_3<
8normalize_observations_normalize_readvariableop_resourceD
@normalize_observations_normalize_truediv_readvariableop_resource>
:normalize_observations_normalize_readvariableop_1_resourceT
Pactordistributionnetwork_encodingnetwork_dense_35_matmul_readvariableop_resourceU
Qactordistributionnetwork_encodingnetwork_dense_35_biasadd_readvariableop_resourceT
Pactordistributionnetwork_encodingnetwork_dense_36_matmul_readvariableop_resourceU
Qactordistributionnetwork_encodingnetwork_dense_36_biasadd_readvariableop_resourcej
factordistributionnetwork_normalprojectionnetwork_means_projection_layer_matmul_readvariableop_resourcek
gactordistributionnetwork_normalprojectionnetwork_means_projection_layer_biasadd_readvariableop_resourcea
]actordistributionnetwork_normalprojectionnetwork_bias_layer_7_biasadd_readvariableop_resource
identity??HActorDistributionNetwork/EncodingNetwork/dense_35/BiasAdd/ReadVariableOp?GActorDistributionNetwork/EncodingNetwork/dense_35/MatMul/ReadVariableOp?HActorDistributionNetwork/EncodingNetwork/dense_36/BiasAdd/ReadVariableOp?GActorDistributionNetwork/EncodingNetwork/dense_36/MatMul/ReadVariableOp?TActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/BiasAdd/ReadVariableOp?^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp?]ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp?/normalize_observations/normalize/ReadVariableOp?1normalize_observations/normalize/ReadVariableOp_1?7normalize_observations/normalize/truediv/ReadVariableOp?9normalize_observations/normalize/truediv_1/ReadVariableOp?
/normalize_observations/normalize/ReadVariableOpReadVariableOp8normalize_observations_normalize_readvariableop_resource*
_output_shapes	
:?*
dtype021
/normalize_observations/normalize/ReadVariableOp?
7normalize_observations/normalize/truediv/ReadVariableOpReadVariableOp@normalize_observations_normalize_truediv_readvariableop_resource*
_output_shapes	
:?*
dtype029
7normalize_observations/normalize/truediv/ReadVariableOp?
(normalize_observations/normalize/truedivRealDiv7normalize_observations/normalize/ReadVariableOp:value:0?normalize_observations/normalize/truediv/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2*
(normalize_observations/normalize/truediv?
1normalize_observations/normalize/ReadVariableOp_1ReadVariableOp:normalize_observations_normalize_readvariableop_1_resource*
_output_shapes	
:?*
dtype023
1normalize_observations/normalize/ReadVariableOp_1?
9normalize_observations/normalize/truediv_1/ReadVariableOpReadVariableOp@normalize_observations_normalize_truediv_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9normalize_observations/normalize/truediv_1/ReadVariableOp?
*normalize_observations/normalize/truediv_1RealDiv9normalize_observations/normalize/ReadVariableOp_1:value:0Anormalize_observations/normalize/truediv_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2,
*normalize_observations/normalize/truediv_1?
8normalize_observations/normalize/normalized_tensor/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2:
8normalize_observations/normalize/normalized_tensor/add/y?
6normalize_observations/normalize/normalized_tensor/addAddV2.normalize_observations/normalize/truediv_1:z:0Anormalize_observations/normalize/normalized_tensor/add/y:output:0*
T0*
_output_shapes	
:?28
6normalize_observations/normalize/normalized_tensor/add?
8normalize_observations/normalize/normalized_tensor/RsqrtRsqrt:normalize_observations/normalize/normalized_tensor/add:z:0*
T0*
_output_shapes	
:?2:
8normalize_observations/normalize/normalized_tensor/Rsqrt?
6normalize_observations/normalize/normalized_tensor/mulMultime_step_3<normalize_observations/normalize/normalized_tensor/Rsqrt:y:0*
T0*(
_output_shapes
:??????????28
6normalize_observations/normalize/normalized_tensor/mul?
6normalize_observations/normalize/normalized_tensor/NegNeg,normalize_observations/normalize/truediv:z:0*
T0*
_output_shapes	
:?28
6normalize_observations/normalize/normalized_tensor/Neg?
8normalize_observations/normalize/normalized_tensor/mul_1Mul:normalize_observations/normalize/normalized_tensor/Neg:y:0<normalize_observations/normalize/normalized_tensor/Rsqrt:y:0*
T0*
_output_shapes	
:?2:
8normalize_observations/normalize/normalized_tensor/mul_1?
8normalize_observations/normalize/normalized_tensor/add_1AddV2:normalize_observations/normalize/normalized_tensor/mul:z:0<normalize_observations/normalize/normalized_tensor/mul_1:z:0*
T0*(
_output_shapes
:??????????2:
8normalize_observations/normalize/normalized_tensor/add_1?
Dnormalize_observations/normalize/clipped_normalized_tensor/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?@2F
Dnormalize_observations/normalize/clipped_normalized_tensor/Minimum/y?
Bnormalize_observations/normalize/clipped_normalized_tensor/MinimumMinimum<normalize_observations/normalize/normalized_tensor/add_1:z:0Mnormalize_observations/normalize/clipped_normalized_tensor/Minimum/y:output:0*
T0*(
_output_shapes
:??????????2D
Bnormalize_observations/normalize/clipped_normalized_tensor/Minimum?
<normalize_observations/normalize/clipped_normalized_tensor/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2>
<normalize_observations/normalize/clipped_normalized_tensor/y?
:normalize_observations/normalize/clipped_normalized_tensorMaximumFnormalize_observations/normalize/clipped_normalized_tensor/Minimum:z:0Enormalize_observations/normalize/clipped_normalized_tensor/y:output:0*
T0*(
_output_shapes
:??????????2<
:normalize_observations/normalize/clipped_normalized_tensor?
9ActorDistributionNetwork/EncodingNetwork/flatten_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2;
9ActorDistributionNetwork/EncodingNetwork/flatten_14/Const?
;ActorDistributionNetwork/EncodingNetwork/flatten_14/ReshapeReshape>normalize_observations/normalize/clipped_normalized_tensor:z:0BActorDistributionNetwork/EncodingNetwork/flatten_14/Const:output:0*
T0*(
_output_shapes
:??????????2=
;ActorDistributionNetwork/EncodingNetwork/flatten_14/Reshape?
GActorDistributionNetwork/EncodingNetwork/dense_35/MatMul/ReadVariableOpReadVariableOpPactordistributionnetwork_encodingnetwork_dense_35_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02I
GActorDistributionNetwork/EncodingNetwork/dense_35/MatMul/ReadVariableOp?
8ActorDistributionNetwork/EncodingNetwork/dense_35/MatMulMatMulDActorDistributionNetwork/EncodingNetwork/flatten_14/Reshape:output:0OActorDistributionNetwork/EncodingNetwork/dense_35/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2:
8ActorDistributionNetwork/EncodingNetwork/dense_35/MatMul?
HActorDistributionNetwork/EncodingNetwork/dense_35/BiasAdd/ReadVariableOpReadVariableOpQactordistributionnetwork_encodingnetwork_dense_35_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02J
HActorDistributionNetwork/EncodingNetwork/dense_35/BiasAdd/ReadVariableOp?
9ActorDistributionNetwork/EncodingNetwork/dense_35/BiasAddBiasAddBActorDistributionNetwork/EncodingNetwork/dense_35/MatMul:product:0PActorDistributionNetwork/EncodingNetwork/dense_35/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2;
9ActorDistributionNetwork/EncodingNetwork/dense_35/BiasAdd?
6ActorDistributionNetwork/EncodingNetwork/dense_35/ReluReluBActorDistributionNetwork/EncodingNetwork/dense_35/BiasAdd:output:0*
T0*(
_output_shapes
:??????????28
6ActorDistributionNetwork/EncodingNetwork/dense_35/Relu?
GActorDistributionNetwork/EncodingNetwork/dense_36/MatMul/ReadVariableOpReadVariableOpPactordistributionnetwork_encodingnetwork_dense_36_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02I
GActorDistributionNetwork/EncodingNetwork/dense_36/MatMul/ReadVariableOp?
8ActorDistributionNetwork/EncodingNetwork/dense_36/MatMulMatMulDActorDistributionNetwork/EncodingNetwork/dense_35/Relu:activations:0OActorDistributionNetwork/EncodingNetwork/dense_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2:
8ActorDistributionNetwork/EncodingNetwork/dense_36/MatMul?
HActorDistributionNetwork/EncodingNetwork/dense_36/BiasAdd/ReadVariableOpReadVariableOpQactordistributionnetwork_encodingnetwork_dense_36_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02J
HActorDistributionNetwork/EncodingNetwork/dense_36/BiasAdd/ReadVariableOp?
9ActorDistributionNetwork/EncodingNetwork/dense_36/BiasAddBiasAddBActorDistributionNetwork/EncodingNetwork/dense_36/MatMul:product:0PActorDistributionNetwork/EncodingNetwork/dense_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2;
9ActorDistributionNetwork/EncodingNetwork/dense_36/BiasAdd?
6ActorDistributionNetwork/EncodingNetwork/dense_36/ReluReluBActorDistributionNetwork/EncodingNetwork/dense_36/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d28
6ActorDistributionNetwork/EncodingNetwork/dense_36/Relu?
]ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOpReadVariableOpfactordistributionnetwork_normalprojectionnetwork_means_projection_layer_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02_
]ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp?
NActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMulMatMulDActorDistributionNetwork/EncodingNetwork/dense_36/Relu:activations:0eActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2P
NActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul?
^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOpReadVariableOpgactordistributionnetwork_normalprojectionnetwork_means_projection_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02`
^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp?
OActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAddBiasAddXActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul:product:0fActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2Q
OActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd?
>ActorDistributionNetwork/NormalProjectionNetwork/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2@
>ActorDistributionNetwork/NormalProjectionNetwork/Reshape/shape?
8ActorDistributionNetwork/NormalProjectionNetwork/ReshapeReshapeXActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd:output:0GActorDistributionNetwork/NormalProjectionNetwork/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2:
8ActorDistributionNetwork/NormalProjectionNetwork/Reshape?
5ActorDistributionNetwork/NormalProjectionNetwork/TanhTanhAActorDistributionNetwork/NormalProjectionNetwork/Reshape:output:0*
T0*'
_output_shapes
:?????????27
5ActorDistributionNetwork/NormalProjectionNetwork/Tanh?
6ActorDistributionNetwork/NormalProjectionNetwork/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?28
6ActorDistributionNetwork/NormalProjectionNetwork/mul/x?
4ActorDistributionNetwork/NormalProjectionNetwork/mulMul?ActorDistributionNetwork/NormalProjectionNetwork/mul/x:output:09ActorDistributionNetwork/NormalProjectionNetwork/Tanh:y:0*
T0*'
_output_shapes
:?????????26
4ActorDistributionNetwork/NormalProjectionNetwork/mul?
6ActorDistributionNetwork/NormalProjectionNetwork/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?28
6ActorDistributionNetwork/NormalProjectionNetwork/add/x?
4ActorDistributionNetwork/NormalProjectionNetwork/addAddV2?ActorDistributionNetwork/NormalProjectionNetwork/add/x:output:08ActorDistributionNetwork/NormalProjectionNetwork/mul:z:0*
T0*'
_output_shapes
:?????????26
4ActorDistributionNetwork/NormalProjectionNetwork/add?
;ActorDistributionNetwork/NormalProjectionNetwork/zeros_like	ZerosLike8ActorDistributionNetwork/NormalProjectionNetwork/add:z:0*
T0*'
_output_shapes
:?????????2=
;ActorDistributionNetwork/NormalProjectionNetwork/zeros_like?
TActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/BiasAdd/ReadVariableOpReadVariableOp]actordistributionnetwork_normalprojectionnetwork_bias_layer_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02V
TActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/BiasAdd/ReadVariableOp?
EActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/BiasAddBiasAdd?ActorDistributionNetwork/NormalProjectionNetwork/zeros_like:y:0\ActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2G
EActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/BiasAdd?
@ActorDistributionNetwork/NormalProjectionNetwork/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2B
@ActorDistributionNetwork/NormalProjectionNetwork/Reshape_1/shape?
:ActorDistributionNetwork/NormalProjectionNetwork/Reshape_1ReshapeNActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/BiasAdd:output:0IActorDistributionNetwork/NormalProjectionNetwork/Reshape_1/shape:output:0*
T0*'
_output_shapes
:?????????2<
:ActorDistributionNetwork/NormalProjectionNetwork/Reshape_1?
9ActorDistributionNetwork/NormalProjectionNetwork/SoftplusSoftplusCActorDistributionNetwork/NormalProjectionNetwork/Reshape_1:output:0*
T0*'
_output_shapes
:?????????2;
9ActorDistributionNetwork/NormalProjectionNetwork/Softplus?
gActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/ConstConst*
_output_shapes
: *
dtype0*
value	B :2i
gActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/Const?
mActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/event_shapeConst*
_output_shapes
:*
dtype0*
valueB:2o
mActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/event_shape?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/ShapeShapeGActorDistributionNetwork/NormalProjectionNetwork/Softplus:activations:0*
T0*
_output_shapes
:2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/Shape?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_1?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_2?	
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_sliceStridedSlice?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/Shape:output:0?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack:output:0?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_1:output:0?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/values_1Pack?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice:output:0*
N*
T0*
_output_shapes
:2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/values_1?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/axis?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concatConcatV2?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/Shape:output:0?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/values_1:output:0?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/axis:output:0*
N*
T0*
_output_shapes
:2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_1?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_sliceStridedSlice?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat:output:0?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack:output:0?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_1:output:0?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice?
gActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/ShapeShape8ActorDistributionNetwork/NormalProjectionNetwork/add:z:0*
T0*
_output_shapes
:2i
gActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/Shape?
uActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2w
uActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack?
wActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2y
wActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_1?
wActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2y
wActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_2?
oActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_sliceStridedSlicepActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/Shape:output:0~ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack:output:0?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_1:output:0?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2q
oActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice?
oActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/BroadcastArgsBroadcastArgs?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice:output:0xActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice:output:0*
_output_shapes
:2q
oActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/BroadcastArgs?
SActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2U
SActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros/Const?
MActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zerosFilltActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/BroadcastArgs:r0:0\ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros/Const:output:0*
T0*#
_output_shapes
:?????????2O
MActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros?
LActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/onesConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2N
LActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/ones?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:2?
?ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/sample_shape?
LActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeroConst*
_output_shapes
: *
dtype0*
value	B : 2N
LActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zero?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ShapeShapeVActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros:output:0*
T0*
_output_shapes
:2?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/Shape?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs/s1Const*
_output_shapes
: *
dtype0*
valueB 2?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs/s1?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgsBroadcastArgs?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/Shape:output:0?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs/s1:output:0*
_output_shapes
:2?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shapeIdentity?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs:r0:0*
T0*
_output_shapes
:2?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape?	
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shapeIdentity?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape:output:0*
T0*
_output_shapes
:2?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/batch_shapeIdentity?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape:output:0*
T0*
_output_shapes
:2?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/batch_shape?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/ConstConst*
_output_shapes
:*
dtype0*
valueB:2?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/Const?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/event_shapeIdentity?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/Const:output:0*
T0*
_output_shapes
:2?
?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/event_shape?
XActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2Z
XActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat/axis?
SActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concatConcatV2?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/batch_shape:output:0?ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/event_shape:output:0aActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat/axis:output:0*
N*
T0*
_output_shapes
:2U
SActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat?
UActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/IdentityIdentity8ActorDistributionNetwork/NormalProjectionNetwork/add:z:0*
T0*'
_output_shapes
:?????????2W
UActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/Identity?
XActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2Z
XActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros/Const?
RActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zerosFill\ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat:output:0aActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2T
RActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros?
PActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/addAddV2^ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/Identity:output:0[ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros:output:0*
T0*'
_output_shapes
:?????????2R
PActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/addm
Deterministic/atolConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Deterministic/atolm
Deterministic/rtolConst*
_output_shapes
: *
dtype0*
valueB
 *    2
Deterministic/rtol?
#Deterministic_1/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 2%
#Deterministic_1/sample/sample_shape?
Deterministic_1/sample/ShapeShapeTActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/add:z:0*
T0*
_output_shapes
:2
Deterministic_1/sample/Shape?
'Deterministic_1/sample/BroadcastArgs/s1Const*
_output_shapes
: *
dtype0*
valueB 2)
'Deterministic_1/sample/BroadcastArgs/s1?
$Deterministic_1/sample/BroadcastArgsBroadcastArgs%Deterministic_1/sample/Shape:output:00Deterministic_1/sample/BroadcastArgs/s1:output:0*
_output_shapes
:2&
$Deterministic_1/sample/BroadcastArgs
Deterministic_1/sample/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
Deterministic_1/sample/Const?
&Deterministic_1/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:2(
&Deterministic_1/sample/concat/values_0?
"Deterministic_1/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"Deterministic_1/sample/concat/axis?
Deterministic_1/sample/concatConcatV2/Deterministic_1/sample/concat/values_0:output:0)Deterministic_1/sample/BroadcastArgs:r0:0%Deterministic_1/sample/Const:output:0+Deterministic_1/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Deterministic_1/sample/concat?
"Deterministic_1/sample/BroadcastToBroadcastToTActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/add:z:0&Deterministic_1/sample/concat:output:0*
T0*+
_output_shapes
:?????????2$
"Deterministic_1/sample/BroadcastTo?
Deterministic_1/sample/Shape_1Shape+Deterministic_1/sample/BroadcastTo:output:0*
T0*
_output_shapes
:2 
Deterministic_1/sample/Shape_1?
*Deterministic_1/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*Deterministic_1/sample/strided_slice/stack?
,Deterministic_1/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,Deterministic_1/sample/strided_slice/stack_1?
,Deterministic_1/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,Deterministic_1/sample/strided_slice/stack_2?
$Deterministic_1/sample/strided_sliceStridedSlice'Deterministic_1/sample/Shape_1:output:03Deterministic_1/sample/strided_slice/stack:output:05Deterministic_1/sample/strided_slice/stack_1:output:05Deterministic_1/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2&
$Deterministic_1/sample/strided_slice?
$Deterministic_1/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2&
$Deterministic_1/sample/concat_1/axis?
Deterministic_1/sample/concat_1ConcatV2,Deterministic_1/sample/sample_shape:output:0-Deterministic_1/sample/strided_slice:output:0-Deterministic_1/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2!
Deterministic_1/sample/concat_1?
Deterministic_1/sample/ReshapeReshape+Deterministic_1/sample/BroadcastTo:output:0(Deterministic_1/sample/concat_1:output:0*
T0*'
_output_shapes
:?????????2 
Deterministic_1/sample/Reshapew
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum'Deterministic_1/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:?????????2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:?????????2
clip_by_value?
IdentityIdentityclip_by_value:z:0I^ActorDistributionNetwork/EncodingNetwork/dense_35/BiasAdd/ReadVariableOpH^ActorDistributionNetwork/EncodingNetwork/dense_35/MatMul/ReadVariableOpI^ActorDistributionNetwork/EncodingNetwork/dense_36/BiasAdd/ReadVariableOpH^ActorDistributionNetwork/EncodingNetwork/dense_36/MatMul/ReadVariableOpU^ActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/BiasAdd/ReadVariableOp_^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp^^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp0^normalize_observations/normalize/ReadVariableOp2^normalize_observations/normalize/ReadVariableOp_18^normalize_observations/normalize/truediv/ReadVariableOp:^normalize_observations/normalize/truediv_1/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*|
_input_shapesk
i:?????????:?????????:?????????:??????????::::::::::2?
HActorDistributionNetwork/EncodingNetwork/dense_35/BiasAdd/ReadVariableOpHActorDistributionNetwork/EncodingNetwork/dense_35/BiasAdd/ReadVariableOp2?
GActorDistributionNetwork/EncodingNetwork/dense_35/MatMul/ReadVariableOpGActorDistributionNetwork/EncodingNetwork/dense_35/MatMul/ReadVariableOp2?
HActorDistributionNetwork/EncodingNetwork/dense_36/BiasAdd/ReadVariableOpHActorDistributionNetwork/EncodingNetwork/dense_36/BiasAdd/ReadVariableOp2?
GActorDistributionNetwork/EncodingNetwork/dense_36/MatMul/ReadVariableOpGActorDistributionNetwork/EncodingNetwork/dense_36/MatMul/ReadVariableOp2?
TActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/BiasAdd/ReadVariableOpTActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/BiasAdd/ReadVariableOp2?
^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp2?
]ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp]ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp2b
/normalize_observations/normalize/ReadVariableOp/normalize_observations/normalize/ReadVariableOp2f
1normalize_observations/normalize/ReadVariableOp_11normalize_observations/normalize/ReadVariableOp_12r
7normalize_observations/normalize/truediv/ReadVariableOp7normalize_observations/normalize/truediv/ReadVariableOp2v
9normalize_observations/normalize/truediv_1/ReadVariableOp9normalize_observations/normalize/truediv_1/ReadVariableOp:N J
#
_output_shapes
:?????????
#
_user_specified_name	time_step:NJ
#
_output_shapes
:?????????
#
_user_specified_name	time_step:NJ
#
_output_shapes
:?????????
#
_user_specified_name	time_step:SO
(
_output_shapes
:??????????
#
_user_specified_name	time_step
?
g
-__inference_function_with_signature_164557513
unknown
identity	??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallunknown*
Tin
2*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *'
f"R 
__inference_<lambda>_1645570722
StatefulPartitionedCall}
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0	*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:22
StatefulPartitionedCallStatefulPartitionedCall
?
_
__inference_<lambda>_164557072
readvariableop_resource
identity	??ReadVariableOpp
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0	2
ReadVariableOpj
IdentityIdentityReadVariableOp:value:0^ReadVariableOp*
T0	*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2 
ReadVariableOpReadVariableOp
?
)
'__inference_signature_wrapper_164557528?
PartitionedCallPartitionedCall*	
Tin
 *

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *6
f1R/
-__inference_function_with_signature_1645575242
PartitionedCall*
_input_shapes 
?
a
'__inference_signature_wrapper_164557521
unknown
identity	??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallunknown*
Tin
2*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *6
f1R/
-__inference_function_with_signature_1645575132
StatefulPartitionedCall}
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0	*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:22
StatefulPartitionedCallStatefulPartitionedCall
?
?
-__inference_function_with_signature_164557501

batch_size?
PartitionedCallPartitionedCall
batch_size*
Tin
2*

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *0
f+R)
'__inference_get_initial_state_1645575002
PartitionedCall*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size"?L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
action?
4

0/discount&
action_0/discount:0?????????
?
0/observation.
action_0/observation:0??????????
0
0/reward$
action_0/reward:0?????????
6
0/step_type'
action_0/step_type:0?????????:
action0
StatefulPartitionedCall:0?????????tensorflow/serving/predict*e
get_initial_stateP
2

batch_size$
get_initial_state_batch_size:0 tensorflow/serving/predict*,
get_metadatatensorflow/serving/predict*Z
get_train_stepH*
int64!
StatefulPartitionedCall_1:0	 tensorflow/serving/predict:??
?

train_step
metadata
model_variables
_all_assets

signatures
?action
?distribution
?get_initial_state
?get_metadata
?get_train_step"
_generic_user_object
:	 (2Variable
 "
trackable_dict_wrapper
?
0
1
2
	3

4
5
6
7
8
9
10
11
12
13
14
15"
trackable_tuple_wrapper
'
0"
trackable_list_wrapper
d
?action
?get_initial_state
?get_train_step
?get_metadata"
signature_map
L:J
??28ActorDistributionNetwork/EncodingNetwork/dense_35/kernel
E:C?26ActorDistributionNetwork/EncodingNetwork/dense_35/bias
K:I	?d28ActorDistributionNetwork/EncodingNetwork/dense_36/kernel
D:Bd26ActorDistributionNetwork/EncodingNetwork/dense_36/bias
P:N2BActorDistributionNetwork/NormalProjectionNetwork/bias_layer_7/bias
`:^d2NActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/kernel
Z:X2LActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/bias
:?2count
:?2mean_sum
:?2var_sum
?:=	?K2,ValueNetwork/EncodingNetwork/dense_37/kernel
8:6K2*ValueNetwork/EncodingNetwork/dense_37/bias
>:<K(2,ValueNetwork/EncodingNetwork/dense_38/kernel
8:6(2*ValueNetwork/EncodingNetwork/dense_38/bias
.:,(2ValueNetwork/dense_39/kernel
(:&2ValueNetwork/dense_39/bias
1
ref
1"
trackable_tuple_wrapper
c
_actor_network
_observation_normalizer
_value_network"
_generic_user_object
?
_encoder
_projection_networks
	variables
trainable_variables
regularization_losses
 	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "ActorDistributionNetwork", "name": "ActorDistributionNetwork", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
^
!_flat_tensor_spec

"_count
#	_mean_sum
$_var_sum"
_generic_user_object
?
%_encoder
&_postprocessing_layers
'	variables
(trainable_variables
)regularization_losses
*	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "ValueNetwork", "name": "ValueNetwork", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
?
+_postprocessing_layers
,	variables
-trainable_variables
.regularization_losses
/	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "EncodingNetwork", "name": "EncodingNetwork", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
?
0_means_projection_layer
	1_bias
2	variables
3trainable_variables
4regularization_losses
5	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "NormalProjectionNetwork", "name": "NormalProjectionNetwork", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
Q
0
1
2
	3
4
5

6"
trackable_list_wrapper
Q
0
1
2
	3
4
5

6"
trackable_list_wrapper
 "
trackable_list_wrapper
?
6layer_metrics
	variables
7metrics
trainable_variables
regularization_losses
8layer_regularization_losses
9non_trainable_variables

:layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
?
;_postprocessing_layers
<	variables
=trainable_variables
>regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "EncodingNetwork", "name": "EncodingNetwork", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
?

kernel
bias
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_39", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_39", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.03, "maxval": 0.03, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 40}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 40]}}
J
0
1
2
3
4
5"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Dlayer_metrics
'	variables
Emetrics
(trainable_variables
)regularization_losses
Flayer_regularization_losses
Gnon_trainable_variables

Hlayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
5
I0
J1
K2"
trackable_list_wrapper
<
0
1
2
	3"
trackable_list_wrapper
<
0
1
2
	3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Llayer_metrics
,	variables
Mmetrics
-trainable_variables
.regularization_losses
Nlayer_regularization_losses
Onon_trainable_variables

Players
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

kernel
bias
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "means_projection_layer", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "means_projection_layer", "trainable": true, "dtype": "float32", "units": 28, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 0.1, "mode": "fan_in", "distribution": "truncated_normal", "seed": null, "dtype": "float32"}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 100]}}
?

bias
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BiasLayer", "name": "bias_layer_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "bias_layer_7", "trainable": true, "dtype": "float32", "bias_initializer": {"class_name": "Constant", "config": {"value": -0.8697231582271624}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 28]}}
5
0
1

2"
trackable_list_wrapper
5
0
1

2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Ylayer_metrics
2	variables
Zmetrics
3trainable_variables
4regularization_losses
[layer_regularization_losses
\non_trainable_variables

]layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
5
^0
_1
`2"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
alayer_metrics
<	variables
bmetrics
=trainable_variables
>regularization_losses
clayer_regularization_losses
dnon_trainable_variables

elayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
flayer_metrics
@	variables
gmetrics
Atrainable_variables
Bregularization_losses
hlayer_regularization_losses
inon_trainable_variables

jlayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
?
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_14", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?

kernel
bias
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_35", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_35", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 246}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 246]}}
?

kernel
	bias
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_36", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_36", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 200}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 200]}}
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
I0
J1
K2"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
wlayer_metrics
Q	variables
xmetrics
Rtrainable_variables
Sregularization_losses
ylayer_regularization_losses
znon_trainable_variables

{layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
'

0"
trackable_list_wrapper
'

0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
|layer_metrics
U	variables
}metrics
Vtrainable_variables
Wregularization_losses
~layer_regularization_losses
non_trainable_variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_15", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?

kernel
bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_37", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_37", "trainable": true, "dtype": "float32", "units": 75, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null, "dtype": "float32"}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 246}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 246]}}
?

kernel
bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_38", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_38", "trainable": true, "dtype": "float32", "units": 40, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null, "dtype": "float32"}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 75}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 75]}}
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
^0
_1
`2"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
k	variables
?metrics
ltrainable_variables
mregularization_losses
 ?layer_regularization_losses
?non_trainable_variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
o	variables
?metrics
ptrainable_variables
qregularization_losses
 ?layer_regularization_losses
?non_trainable_variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
0
	1"
trackable_list_wrapper
.
0
	1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
s	variables
?metrics
ttrainable_variables
uregularization_losses
 ?layer_regularization_losses
?non_trainable_variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses
 ?layer_regularization_losses
?non_trainable_variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses
 ?layer_regularization_losses
?non_trainable_variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?	variables
?metrics
?trainable_variables
?regularization_losses
 ?layer_regularization_losses
?non_trainable_variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?2?
+__inference_polymorphic_action_fn_164557653
+__inference_polymorphic_action_fn_164557778?
???
FullArgSpec(
args ?
j	time_step
jpolicy_state
varargs
 
varkw
 
defaults?
? 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_polymorphic_distribution_fn_164557886?
???
FullArgSpec(
args ?
j	time_step
jpolicy_state
varargs
 
varkw
 
defaults?
? 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_get_initial_state_164557889?
???
FullArgSpec!
args?
jself
j
batch_size
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
__inference_<lambda>_164557075"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
__inference_<lambda>_164557072"?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
'__inference_signature_wrapper_164557494
0/discount0/observation0/reward0/step_type"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
'__inference_signature_wrapper_164557506
batch_size"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
'__inference_signature_wrapper_164557521"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
'__inference_signature_wrapper_164557528"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpecU
argsM?J
jself
jobservations
j	step_type
jnetwork_state

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpecU
argsM?J
jself
jobservations
j	step_type
jnetwork_state

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpecL
argsD?A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults?

 
? 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpecL
argsD?A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults?

 
? 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpecL
argsD?A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults?

 
? 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpecL
argsD?A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults?

 
? 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec?
args7?4
jself
jinputs
j
outer_rank

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec?
args7?4
jself
jinputs
j
outer_rank

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpecL
argsD?A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults?

 
? 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpecL
argsD?A
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults?

 
? 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 =
__inference_<lambda>_164557072?

? 
? "? 	6
__inference_<lambda>_164557075?

? 
? "? T
'__inference_get_initial_state_164557889)"?
?
?

batch_size 
? "? ?
+__inference_polymorphic_action_fn_164557653?
	
???
???
???
TimeStep,
	step_type?
	step_type?????????&
reward?
reward?????????*
discount?
discount?????????5
observation&?#
observation??????????
? 
? "V?S

PolicyStep*
action ?
action?????????
state? 
info? ?
+__inference_polymorphic_action_fn_164557778?
	
???
???
???
TimeStep6
	step_type)?&
time_step/step_type?????????0
reward&?#
time_step/reward?????????4
discount(?%
time_step/discount??????????
observation0?-
time_step/observation??????????
? 
? "V?S

PolicyStep*
action ?
action?????????
state? 
info? ?
1__inference_polymorphic_distribution_fn_164557886?
	
???
???
???
TimeStep,
	step_type?
	step_type?????????&
reward?
reward?????????*
discount?
discount?????????5
observation&?#
observation??????????
? 
? "???

PolicyStep?
action?????Ã??~
`
C?@
"j tf_agents.policies.greedy_policy
jDeterministicWithLogProb
.?+
)
loc"?
Identity?????????
? _TFPTypeSpec
state? 
info? ?
'__inference_signature_wrapper_164557494?
	
???
? 
???
.

0/discount ?

0/discount?????????
9
0/observation(?%
0/observation??????????
*
0/reward?
0/reward?????????
0
0/step_type!?
0/step_type?????????"/?,
*
action ?
action?????????b
'__inference_signature_wrapper_16455750670?-
? 
&?#
!

batch_size?

batch_size "? [
'__inference_signature_wrapper_1645575210?

? 
? "?

int64?
int64 	?
'__inference_signature_wrapper_164557528?

? 
? "? 