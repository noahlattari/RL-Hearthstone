¢
«
B
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
delete_old_dirsbool(
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
2	
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
³
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
dtypetype
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
list(type)(0
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
list(type)(0
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
¾
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
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 
&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.4.12v2.4.0-49-g85c8b2a817f8ü
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
È
5ActorDistributionNetwork/EncodingNetwork/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
öÈ*F
shared_name75ActorDistributionNetwork/EncodingNetwork/dense/kernel
Á
IActorDistributionNetwork/EncodingNetwork/dense/kernel/Read/ReadVariableOpReadVariableOp5ActorDistributionNetwork/EncodingNetwork/dense/kernel* 
_output_shapes
:
öÈ*
dtype0
¿
3ActorDistributionNetwork/EncodingNetwork/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*D
shared_name53ActorDistributionNetwork/EncodingNetwork/dense/bias
¸
GActorDistributionNetwork/EncodingNetwork/dense/bias/Read/ReadVariableOpReadVariableOp3ActorDistributionNetwork/EncodingNetwork/dense/bias*
_output_shapes	
:È*
dtype0
Ë
7ActorDistributionNetwork/EncodingNetwork/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Èd*H
shared_name97ActorDistributionNetwork/EncodingNetwork/dense_1/kernel
Ä
KActorDistributionNetwork/EncodingNetwork/dense_1/kernel/Read/ReadVariableOpReadVariableOp7ActorDistributionNetwork/EncodingNetwork/dense_1/kernel*
_output_shapes
:	Èd*
dtype0
Â
5ActorDistributionNetwork/EncodingNetwork/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*F
shared_name75ActorDistributionNetwork/EncodingNetwork/dense_1/bias
»
IActorDistributionNetwork/EncodingNetwork/dense_1/bias/Read/ReadVariableOpReadVariableOp5ActorDistributionNetwork/EncodingNetwork/dense_1/bias*
_output_shapes
:d*
dtype0
Ø
@ActorDistributionNetwork/NormalProjectionNetwork/bias_layer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*Q
shared_nameB@ActorDistributionNetwork/NormalProjectionNetwork/bias_layer/bias
Ñ
TActorDistributionNetwork/NormalProjectionNetwork/bias_layer/bias/Read/ReadVariableOpReadVariableOp@ActorDistributionNetwork/NormalProjectionNetwork/bias_layer/bias*
_output_shapes
:*
dtype0
ø
NActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*_
shared_namePNActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/kernel
ñ
bActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/kernel/Read/ReadVariableOpReadVariableOpNActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/kernel*
_output_shapes

:d*
dtype0
ð
LActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*]
shared_nameNLActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/bias
é
`ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/bias/Read/ReadVariableOpReadVariableOpLActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/bias*
_output_shapes
:*
dtype0
c
countVarHandleOp*
_output_shapes
: *
dtype0*
shape:ö*
shared_namecount
\
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes	
:ö*
dtype0
i
mean_sumVarHandleOp*
_output_shapes
: *
dtype0*
shape:ö*
shared_name
mean_sum
b
mean_sum/Read/ReadVariableOpReadVariableOpmean_sum*
_output_shapes	
:ö*
dtype0
g
var_sumVarHandleOp*
_output_shapes
: *
dtype0*
shape:ö*
shared_name	var_sum
`
var_sum/Read/ReadVariableOpReadVariableOpvar_sum*
_output_shapes	
:ö*
dtype0
³
+ValueNetwork/EncodingNetwork/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	öK*<
shared_name-+ValueNetwork/EncodingNetwork/dense_2/kernel
¬
?ValueNetwork/EncodingNetwork/dense_2/kernel/Read/ReadVariableOpReadVariableOp+ValueNetwork/EncodingNetwork/dense_2/kernel*
_output_shapes
:	öK*
dtype0
ª
)ValueNetwork/EncodingNetwork/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:K*:
shared_name+)ValueNetwork/EncodingNetwork/dense_2/bias
£
=ValueNetwork/EncodingNetwork/dense_2/bias/Read/ReadVariableOpReadVariableOp)ValueNetwork/EncodingNetwork/dense_2/bias*
_output_shapes
:K*
dtype0
²
+ValueNetwork/EncodingNetwork/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:K(*<
shared_name-+ValueNetwork/EncodingNetwork/dense_3/kernel
«
?ValueNetwork/EncodingNetwork/dense_3/kernel/Read/ReadVariableOpReadVariableOp+ValueNetwork/EncodingNetwork/dense_3/kernel*
_output_shapes

:K(*
dtype0
ª
)ValueNetwork/EncodingNetwork/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*:
shared_name+)ValueNetwork/EncodingNetwork/dense_3/bias
£
=ValueNetwork/EncodingNetwork/dense_3/bias/Read/ReadVariableOpReadVariableOp)ValueNetwork/EncodingNetwork/dense_3/bias*
_output_shapes
:(*
dtype0

ValueNetwork/dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(*,
shared_nameValueNetwork/dense_4/kernel

/ValueNetwork/dense_4/kernel/Read/ReadVariableOpReadVariableOpValueNetwork/dense_4/kernel*
_output_shapes

:(*
dtype0

ValueNetwork/dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameValueNetwork/dense_4/bias

-ValueNetwork/dense_4/bias/Read/ReadVariableOpReadVariableOpValueNetwork/dense_4/bias*
_output_shapes
:*
dtype0

NoOpNoOp
¯8
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ê7
valueà7BÝ7 BÖ7
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
wu
VARIABLE_VALUE5ActorDistributionNetwork/EncodingNetwork/dense/kernel,model_variables/0/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE3ActorDistributionNetwork/EncodingNetwork/dense/bias,model_variables/1/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE7ActorDistributionNetwork/EncodingNetwork/dense_1/kernel,model_variables/2/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUE5ActorDistributionNetwork/EncodingNetwork/dense_1/bias,model_variables/3/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE@ActorDistributionNetwork/NormalProjectionNetwork/bias_layer/bias,model_variables/4/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUENActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/kernel,model_variables/5/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUELActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/bias,model_variables/6/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUEcount,model_variables/7/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEmean_sum,model_variables/8/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEvar_sum,model_variables/9/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUE+ValueNetwork/EncodingNetwork/dense_2/kernel-model_variables/10/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUE)ValueNetwork/EncodingNetwork/dense_2/bias-model_variables/11/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUE+ValueNetwork/EncodingNetwork/dense_3/kernel-model_variables/12/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUE)ValueNetwork/EncodingNetwork/dense_3/bias-model_variables/13/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUEValueNetwork/dense_4/kernel-model_variables/14/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEValueNetwork/dense_4/bias-model_variables/15/.ATTRIBUTES/VARIABLE_VALUE
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
­
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
­
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
­
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
­
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
­
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
­
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
­
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
®
|layer_metrics
U	variables
}metrics
Vtrainable_variables
Wregularization_losses
~layer_regularization_losses
non_trainable_variables
layers
 
 
 
 

00
11
V
	variables
trainable_variables
regularization_losses
	keras_api
l

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
l

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
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
²
layer_metrics
k	variables
metrics
ltrainable_variables
mregularization_losses
 layer_regularization_losses
non_trainable_variables
layers

0
1

0
1
 
²
layer_metrics
o	variables
metrics
ptrainable_variables
qregularization_losses
 layer_regularization_losses
non_trainable_variables
layers

0
	1

0
	1
 
²
layer_metrics
s	variables
metrics
ttrainable_variables
uregularization_losses
 layer_regularization_losses
non_trainable_variables
layers
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
µ
layer_metrics
	variables
metrics
trainable_variables
regularization_losses
 layer_regularization_losses
non_trainable_variables
 layers

0
1

0
1
 
µ
¡layer_metrics
	variables
¢metrics
trainable_variables
regularization_losses
 £layer_regularization_losses
¤non_trainable_variables
¥layers

0
1

0
1
 
µ
¦layer_metrics
	variables
§metrics
trainable_variables
regularization_losses
 ¨layer_regularization_losses
©non_trainable_variables
ªlayers
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
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
y
action_0/observationPlaceholder*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿö*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿö
j
action_0/rewardPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
m
action_0/step_typePlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
×
StatefulPartitionedCallStatefulPartitionedCallaction_0/discountaction_0/observationaction_0/rewardaction_0/step_typemean_sumcountvar_sum5ActorDistributionNetwork/EncodingNetwork/dense/kernel3ActorDistributionNetwork/EncodingNetwork/dense/bias7ActorDistributionNetwork/EncodingNetwork/dense_1/kernel5ActorDistributionNetwork/EncodingNetwork/dense_1/biasNActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/kernelLActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/bias@ActorDistributionNetwork/NormalProjectionNetwork/bias_layer/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *0
f+R)
'__inference_signature_wrapper_197655304
]
get_initial_state_batch_sizePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ü
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
GPU 2J 8 *0
f+R)
'__inference_signature_wrapper_197655316
Ý
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
GPU 2J 8 *0
f+R)
'__inference_signature_wrapper_197655338

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
GPU 2J 8 *0
f+R)
'__inference_signature_wrapper_197655331
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ë

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariable/Read/ReadVariableOpIActorDistributionNetwork/EncodingNetwork/dense/kernel/Read/ReadVariableOpGActorDistributionNetwork/EncodingNetwork/dense/bias/Read/ReadVariableOpKActorDistributionNetwork/EncodingNetwork/dense_1/kernel/Read/ReadVariableOpIActorDistributionNetwork/EncodingNetwork/dense_1/bias/Read/ReadVariableOpTActorDistributionNetwork/NormalProjectionNetwork/bias_layer/bias/Read/ReadVariableOpbActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/kernel/Read/ReadVariableOp`ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/bias/Read/ReadVariableOpcount/Read/ReadVariableOpmean_sum/Read/ReadVariableOpvar_sum/Read/ReadVariableOp?ValueNetwork/EncodingNetwork/dense_2/kernel/Read/ReadVariableOp=ValueNetwork/EncodingNetwork/dense_2/bias/Read/ReadVariableOp?ValueNetwork/EncodingNetwork/dense_3/kernel/Read/ReadVariableOp=ValueNetwork/EncodingNetwork/dense_3/bias/Read/ReadVariableOp/ValueNetwork/dense_4/kernel/Read/ReadVariableOp-ValueNetwork/dense_4/bias/Read/ReadVariableOpConst*
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
GPU 2J 8 *+
f&R$
"__inference__traced_save_197655778
ò
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameVariable5ActorDistributionNetwork/EncodingNetwork/dense/kernel3ActorDistributionNetwork/EncodingNetwork/dense/bias7ActorDistributionNetwork/EncodingNetwork/dense_1/kernel5ActorDistributionNetwork/EncodingNetwork/dense_1/bias@ActorDistributionNetwork/NormalProjectionNetwork/bias_layer/biasNActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/kernelLActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/biascountmean_sumvar_sum+ValueNetwork/EncodingNetwork/dense_2/kernel)ValueNetwork/EncodingNetwork/dense_2/bias+ValueNetwork/EncodingNetwork/dense_3/kernel)ValueNetwork/EncodingNetwork/dense_3/biasValueNetwork/dense_4/kernelValueNetwork/dense_4/bias*
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
GPU 2J 8 *.
f)R'
%__inference__traced_restore_197655839¿
é1
Æ

"__inference__traced_save_197655778
file_prefix'
#savev2_variable_read_readvariableop	T
Psavev2_actordistributionnetwork_encodingnetwork_dense_kernel_read_readvariableopR
Nsavev2_actordistributionnetwork_encodingnetwork_dense_bias_read_readvariableopV
Rsavev2_actordistributionnetwork_encodingnetwork_dense_1_kernel_read_readvariableopT
Psavev2_actordistributionnetwork_encodingnetwork_dense_1_bias_read_readvariableop_
[savev2_actordistributionnetwork_normalprojectionnetwork_bias_layer_bias_read_readvariableopm
isavev2_actordistributionnetwork_normalprojectionnetwork_means_projection_layer_kernel_read_readvariableopk
gsavev2_actordistributionnetwork_normalprojectionnetwork_means_projection_layer_bias_read_readvariableop$
 savev2_count_read_readvariableop'
#savev2_mean_sum_read_readvariableop&
"savev2_var_sum_read_readvariableopJ
Fsavev2_valuenetwork_encodingnetwork_dense_2_kernel_read_readvariableopH
Dsavev2_valuenetwork_encodingnetwork_dense_2_bias_read_readvariableopJ
Fsavev2_valuenetwork_encodingnetwork_dense_3_kernel_read_readvariableopH
Dsavev2_valuenetwork_encodingnetwork_dense_3_bias_read_readvariableop:
6savev2_valuenetwork_dense_4_kernel_read_readvariableop8
4savev2_valuenetwork_dense_4_bias_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
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
Const_1
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
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename®
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*À
value¶B³B%train_step/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/0/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/1/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/2/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/3/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/4/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/5/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/6/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/7/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/8/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/9/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/10/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/11/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/12/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/13/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/14/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/15/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names¬
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*7
value.B,B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesÞ

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0#savev2_variable_read_readvariableopPsavev2_actordistributionnetwork_encodingnetwork_dense_kernel_read_readvariableopNsavev2_actordistributionnetwork_encodingnetwork_dense_bias_read_readvariableopRsavev2_actordistributionnetwork_encodingnetwork_dense_1_kernel_read_readvariableopPsavev2_actordistributionnetwork_encodingnetwork_dense_1_bias_read_readvariableop[savev2_actordistributionnetwork_normalprojectionnetwork_bias_layer_bias_read_readvariableopisavev2_actordistributionnetwork_normalprojectionnetwork_means_projection_layer_kernel_read_readvariableopgsavev2_actordistributionnetwork_normalprojectionnetwork_means_projection_layer_bias_read_readvariableop savev2_count_read_readvariableop#savev2_mean_sum_read_readvariableop"savev2_var_sum_read_readvariableopFsavev2_valuenetwork_encodingnetwork_dense_2_kernel_read_readvariableopDsavev2_valuenetwork_encodingnetwork_dense_2_bias_read_readvariableopFsavev2_valuenetwork_encodingnetwork_dense_3_kernel_read_readvariableopDsavev2_valuenetwork_encodingnetwork_dense_3_bias_read_readvariableop6savev2_valuenetwork_dense_4_kernel_read_readvariableop4savev2_valuenetwork_dense_4_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 * 
dtypes
2	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
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

identity_1Identity_1:output:0*
_input_shapes
: : :
öÈ:È:	Èd:d::d::ö:ö:ö:	öK:K:K(:(:(:: 2(
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
öÈ:!

_output_shapes	
:È:%!

_output_shapes
:	Èd: 
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
:ö:!


_output_shapes	
:ö:!

_output_shapes	
:ö:%!

_output_shapes
:	öK: 
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
Ã
¨
-__inference_function_with_signature_197655274
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
identity¢StatefulPartitionedCallè
StatefulPartitionedCallStatefulPartitionedCall	step_typerewarddiscountobservationunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *4
f/R-
+__inference_polymorphic_action_fn_1976552512
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*|
_input_shapesk
i:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿö::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_name0/step_type:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
0/reward:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
0/discount:WS
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿö
'
_user_specified_name0/observation
¿
¢
'__inference_signature_wrapper_197655304
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
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCall	step_typerewarddiscountobservationunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *6
f1R/
-__inference_function_with_signature_1976552742
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*|
_input_shapesk
i:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿö:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
0/discount:WS
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿö
'
_user_specified_name0/observation:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
0/reward:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_name0/step_type

a
'__inference_signature_wrapper_197655331
unknown
identity	¢StatefulPartitionedCall¶
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
GPU 2J 8 *6
f1R/
-__inference_function_with_signature_1976553232
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
5
 
__inference_<lambda>_197654885*
_input_shapes 
öÛ
ä
+__inference_polymorphic_action_fn_197655251
	time_step
time_step_1
time_step_2
time_step_3<
8normalize_observations_normalize_readvariableop_resourceD
@normalize_observations_normalize_truediv_readvariableop_resource>
:normalize_observations_normalize_readvariableop_1_resourceQ
Mactordistributionnetwork_encodingnetwork_dense_matmul_readvariableop_resourceR
Nactordistributionnetwork_encodingnetwork_dense_biasadd_readvariableop_resourceS
Oactordistributionnetwork_encodingnetwork_dense_1_matmul_readvariableop_resourceT
Pactordistributionnetwork_encodingnetwork_dense_1_biasadd_readvariableop_resourcej
factordistributionnetwork_normalprojectionnetwork_means_projection_layer_matmul_readvariableop_resourcek
gactordistributionnetwork_normalprojectionnetwork_means_projection_layer_biasadd_readvariableop_resource_
[actordistributionnetwork_normalprojectionnetwork_bias_layer_biasadd_readvariableop_resource
identity¢EActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp¢DActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp¢GActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp¢FActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp¢RActorDistributionNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOp¢^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp¢]ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp¢/normalize_observations/normalize/ReadVariableOp¢1normalize_observations/normalize/ReadVariableOp_1¢7normalize_observations/normalize/truediv/ReadVariableOp¢9normalize_observations/normalize/truediv_1/ReadVariableOpØ
/normalize_observations/normalize/ReadVariableOpReadVariableOp8normalize_observations_normalize_readvariableop_resource*
_output_shapes	
:ö*
dtype021
/normalize_observations/normalize/ReadVariableOpð
7normalize_observations/normalize/truediv/ReadVariableOpReadVariableOp@normalize_observations_normalize_truediv_readvariableop_resource*
_output_shapes	
:ö*
dtype029
7normalize_observations/normalize/truediv/ReadVariableOpÿ
(normalize_observations/normalize/truedivRealDiv7normalize_observations/normalize/ReadVariableOp:value:0?normalize_observations/normalize/truediv/ReadVariableOp:value:0*
T0*
_output_shapes	
:ö2*
(normalize_observations/normalize/truedivÞ
1normalize_observations/normalize/ReadVariableOp_1ReadVariableOp:normalize_observations_normalize_readvariableop_1_resource*
_output_shapes	
:ö*
dtype023
1normalize_observations/normalize/ReadVariableOp_1ô
9normalize_observations/normalize/truediv_1/ReadVariableOpReadVariableOp@normalize_observations_normalize_truediv_readvariableop_resource*
_output_shapes	
:ö*
dtype02;
9normalize_observations/normalize/truediv_1/ReadVariableOp
*normalize_observations/normalize/truediv_1RealDiv9normalize_observations/normalize/ReadVariableOp_1:value:0Anormalize_observations/normalize/truediv_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:ö2,
*normalize_observations/normalize/truediv_1¹
8normalize_observations/normalize/normalized_tensor/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2:
8normalize_observations/normalize/normalized_tensor/add/y
6normalize_observations/normalize/normalized_tensor/addAddV2.normalize_observations/normalize/truediv_1:z:0Anormalize_observations/normalize/normalized_tensor/add/y:output:0*
T0*
_output_shapes	
:ö28
6normalize_observations/normalize/normalized_tensor/addß
8normalize_observations/normalize/normalized_tensor/RsqrtRsqrt:normalize_observations/normalize/normalized_tensor/add:z:0*
T0*
_output_shapes	
:ö2:
8normalize_observations/normalize/normalized_tensor/Rsqrtõ
6normalize_observations/normalize/normalized_tensor/mulMultime_step_3<normalize_observations/normalize/normalized_tensor/Rsqrt:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿö28
6normalize_observations/normalize/normalized_tensor/mulË
6normalize_observations/normalize/normalized_tensor/NegNeg,normalize_observations/normalize/truediv:z:0*
T0*
_output_shapes	
:ö28
6normalize_observations/normalize/normalized_tensor/Neg
8normalize_observations/normalize/normalized_tensor/mul_1Mul:normalize_observations/normalize/normalized_tensor/Neg:y:0<normalize_observations/normalize/normalized_tensor/Rsqrt:y:0*
T0*
_output_shapes	
:ö2:
8normalize_observations/normalize/normalized_tensor/mul_1ª
8normalize_observations/normalize/normalized_tensor/add_1AddV2:normalize_observations/normalize/normalized_tensor/mul:z:0<normalize_observations/normalize/normalized_tensor/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿö2:
8normalize_observations/normalize/normalized_tensor/add_1Ñ
Dnormalize_observations/normalize/clipped_normalized_tensor/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2F
Dnormalize_observations/normalize/clipped_normalized_tensor/Minimum/yÓ
Bnormalize_observations/normalize/clipped_normalized_tensor/MinimumMinimum<normalize_observations/normalize/normalized_tensor/add_1:z:0Mnormalize_observations/normalize/clipped_normalized_tensor/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿö2D
Bnormalize_observations/normalize/clipped_normalized_tensor/MinimumÁ
<normalize_observations/normalize/clipped_normalized_tensor/yConst*
_output_shapes
: *
dtype0*
valueB
 *   À2>
<normalize_observations/normalize/clipped_normalized_tensor/yÅ
:normalize_observations/normalize/clipped_normalized_tensorMaximumFnormalize_observations/normalize/clipped_normalized_tensor/Minimum:z:0Enormalize_observations/normalize/clipped_normalized_tensor/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿö2<
:normalize_observations/normalize/clipped_normalized_tensorÁ
6ActorDistributionNetwork/EncodingNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿö   28
6ActorDistributionNetwork/EncodingNetwork/flatten/Const³
8ActorDistributionNetwork/EncodingNetwork/flatten/ReshapeReshape>normalize_observations/normalize/clipped_normalized_tensor:z:0?ActorDistributionNetwork/EncodingNetwork/flatten/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿö2:
8ActorDistributionNetwork/EncodingNetwork/flatten/Reshape
DActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpReadVariableOpMactordistributionnetwork_encodingnetwork_dense_matmul_readvariableop_resource* 
_output_shapes
:
öÈ*
dtype02F
DActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp¼
5ActorDistributionNetwork/EncodingNetwork/dense/MatMulMatMulAActorDistributionNetwork/EncodingNetwork/flatten/Reshape:output:0LActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ27
5ActorDistributionNetwork/EncodingNetwork/dense/MatMul
EActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpReadVariableOpNactordistributionnetwork_encodingnetwork_dense_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype02G
EActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp¾
6ActorDistributionNetwork/EncodingNetwork/dense/BiasAddBiasAdd?ActorDistributionNetwork/EncodingNetwork/dense/MatMul:product:0MActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ28
6ActorDistributionNetwork/EncodingNetwork/dense/BiasAddæ
3ActorDistributionNetwork/EncodingNetwork/dense/ReluRelu?ActorDistributionNetwork/EncodingNetwork/dense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ25
3ActorDistributionNetwork/EncodingNetwork/dense/Relu¡
FActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpReadVariableOpOactordistributionnetwork_encodingnetwork_dense_1_matmul_readvariableop_resource*
_output_shapes
:	Èd*
dtype02H
FActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpÁ
7ActorDistributionNetwork/EncodingNetwork/dense_1/MatMulMatMulAActorDistributionNetwork/EncodingNetwork/dense/Relu:activations:0NActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd29
7ActorDistributionNetwork/EncodingNetwork/dense_1/MatMul
GActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpReadVariableOpPactordistributionnetwork_encodingnetwork_dense_1_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02I
GActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpÅ
8ActorDistributionNetwork/EncodingNetwork/dense_1/BiasAddBiasAddAActorDistributionNetwork/EncodingNetwork/dense_1/MatMul:product:0OActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2:
8ActorDistributionNetwork/EncodingNetwork/dense_1/BiasAddë
5ActorDistributionNetwork/EncodingNetwork/dense_1/ReluReluAActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd27
5ActorDistributionNetwork/EncodingNetwork/dense_1/Reluå
]ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOpReadVariableOpfactordistributionnetwork_normalprojectionnetwork_means_projection_layer_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02_
]ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp
NActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMulMatMulCActorDistributionNetwork/EncodingNetwork/dense_1/Relu:activations:0eActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2P
NActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMulä
^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOpReadVariableOpgactordistributionnetwork_normalprojectionnetwork_means_projection_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02`
^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp¡
OActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAddBiasAddXActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul:product:0fActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Q
OActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAddÑ
>ActorDistributionNetwork/NormalProjectionNetwork/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2@
>ActorDistributionNetwork/NormalProjectionNetwork/Reshape/shapeÔ
8ActorDistributionNetwork/NormalProjectionNetwork/ReshapeReshapeXActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd:output:0GActorDistributionNetwork/NormalProjectionNetwork/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:
8ActorDistributionNetwork/NormalProjectionNetwork/Reshapeë
5ActorDistributionNetwork/NormalProjectionNetwork/TanhTanhAActorDistributionNetwork/NormalProjectionNetwork/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5ActorDistributionNetwork/NormalProjectionNetwork/Tanhµ
6ActorDistributionNetwork/NormalProjectionNetwork/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?28
6ActorDistributionNetwork/NormalProjectionNetwork/mul/x¡
4ActorDistributionNetwork/NormalProjectionNetwork/mulMul?ActorDistributionNetwork/NormalProjectionNetwork/mul/x:output:09ActorDistributionNetwork/NormalProjectionNetwork/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4ActorDistributionNetwork/NormalProjectionNetwork/mulµ
6ActorDistributionNetwork/NormalProjectionNetwork/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?28
6ActorDistributionNetwork/NormalProjectionNetwork/add/x¢
4ActorDistributionNetwork/NormalProjectionNetwork/addAddV2?ActorDistributionNetwork/NormalProjectionNetwork/add/x:output:08ActorDistributionNetwork/NormalProjectionNetwork/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4ActorDistributionNetwork/NormalProjectionNetwork/addó
;ActorDistributionNetwork/NormalProjectionNetwork/zeros_like	ZerosLike8ActorDistributionNetwork/NormalProjectionNetwork/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2=
;ActorDistributionNetwork/NormalProjectionNetwork/zeros_likeÀ
RActorDistributionNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOpReadVariableOp[actordistributionnetwork_normalprojectionnetwork_bias_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02T
RActorDistributionNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOpä
CActorDistributionNetwork/NormalProjectionNetwork/bias_layer/BiasAddBiasAdd?ActorDistributionNetwork/NormalProjectionNetwork/zeros_like:y:0ZActorDistributionNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2E
CActorDistributionNetwork/NormalProjectionNetwork/bias_layer/BiasAddÕ
@ActorDistributionNetwork/NormalProjectionNetwork/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2B
@ActorDistributionNetwork/NormalProjectionNetwork/Reshape_1/shapeÎ
:ActorDistributionNetwork/NormalProjectionNetwork/Reshape_1ReshapeLActorDistributionNetwork/NormalProjectionNetwork/bias_layer/BiasAdd:output:0IActorDistributionNetwork/NormalProjectionNetwork/Reshape_1/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2<
:ActorDistributionNetwork/NormalProjectionNetwork/Reshape_1ù
9ActorDistributionNetwork/NormalProjectionNetwork/SoftplusSoftplusCActorDistributionNetwork/NormalProjectionNetwork/Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9ActorDistributionNetwork/NormalProjectionNetwork/Softplus
gActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/ConstConst*
_output_shapes
: *
dtype0*
value	B :2i
gActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/Const¨
mActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/event_shapeConst*
_output_shapes
:*
dtype0*
valueB:2o
mActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/event_shapeØ
­ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/ShapeShapeGActorDistributionNetwork/NormalProjectionNetwork/Softplus:activations:0*
T0*
_output_shapes
:2°
­ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/ShapeÐ
»ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2¾
»ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stackË
½ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2À
½ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_1Ë
½ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2À
½ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_2Ù	
µActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_sliceStridedSlice¶ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/Shape:output:0ÄActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack:output:0ÆActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_1:output:0ÆActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2¸
µActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_sliceì
·ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/values_1Pack¾ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice:output:0*
N*
T0*
_output_shapes
:2º
·ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/values_1¯
³ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2¶
³ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/axisØ
®ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concatConcatV2¶ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/Shape:output:0ÀActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/values_1:output:0¼ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/axis:output:0*
N*
T0*
_output_shapes
:2±
®ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat
ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack
ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿ2 
ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_1
ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_2¸
ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_sliceStridedSlice·ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat:output:0¤ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack:output:0¦ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_1:output:0¦ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2
ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_sliceº
gActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/ShapeShape8ActorDistributionNetwork/NormalProjectionNetwork/add:z:0*
T0*
_output_shapes
:2i
gActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/Shape¸
uActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2w
uActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stackÅ
wActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2y
wActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_1¼
wActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2y
wActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_2®
oActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_sliceStridedSlicepActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/Shape:output:0~ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack:output:0ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_1:output:0ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2q
oActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_sliceª
oActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/BroadcastArgsBroadcastArgsActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice:output:0xActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice:output:0*
_output_shapes
:2q
oActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/BroadcastArgsï
SActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2U
SActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros/Const¨
MActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zerosFilltActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/BroadcastArgs:r0:0\ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros/Const:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2O
MActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zerosá
LActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/onesConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2N
LActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/ones£
©ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:2¬
©ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/sample_shapeÞ
LActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeroConst*
_output_shapes
: *
dtype0*
value	B : 2N
LActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zero
¿ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ShapeShapeVActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros:output:0*
T0*
_output_shapes
:2Â
¿ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ShapeÞ
ÊActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs/s1Const*
_output_shapes
: *
dtype0*
valueB 2Í
ÊActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs/s1ã
ÇActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgsBroadcastArgsÈActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/Shape:output:0ÓActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs/s1:output:0*
_output_shapes
:2Ê
ÇActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs
ÅActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shapeIdentityÌActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs:r0:0*
T0*
_output_shapes
:2È
ÅActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shapeÏ	
ãActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shapeIdentityÎActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape:output:0*
T0*
_output_shapes
:2æ
ãActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape
³ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/batch_shapeIdentityìActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape:output:0*
T0*
_output_shapes
:2¶
³ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/batch_shape¯
¯ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/ConstConst*
_output_shapes
:*
dtype0*
valueB:2²
¯ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/ConstÝ
µActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/event_shapeIdentity¸ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/Const:output:0*
T0*
_output_shapes
:2¸
µActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/event_shapeö
XActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2Z
XActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat/axisÇ
SActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concatConcatV2¼ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/batch_shape:output:0¾ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/event_shape:output:0aActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat/axis:output:0*
N*
T0*
_output_shapes
:2U
SActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat¦
UActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/IdentityIdentity8ActorDistributionNetwork/NormalProjectionNetwork/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2W
UActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/Identityù
XActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2Z
XActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros/Const£
RActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zerosFill\ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat:output:0aActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2T
RActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros
PActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/addAddV2^ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/Identity:output:0[ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2R
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
Deterministic/rtol
#Deterministic_1/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 2%
#Deterministic_1/sample/sample_shapeÀ
Deterministic_1/sample/ShapeShapeTActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/add:z:0*
T0*
_output_shapes
:2
Deterministic_1/sample/Shape
'Deterministic_1/sample/BroadcastArgs/s1Const*
_output_shapes
: *
dtype0*
valueB 2)
'Deterministic_1/sample/BroadcastArgs/s1Ò
$Deterministic_1/sample/BroadcastArgsBroadcastArgs%Deterministic_1/sample/Shape:output:00Deterministic_1/sample/BroadcastArgs/s1:output:0*
_output_shapes
:2&
$Deterministic_1/sample/BroadcastArgs
Deterministic_1/sample/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
Deterministic_1/sample/Const
&Deterministic_1/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:2(
&Deterministic_1/sample/concat/values_0
"Deterministic_1/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"Deterministic_1/sample/concat/axis¨
Deterministic_1/sample/concatConcatV2/Deterministic_1/sample/concat/values_0:output:0)Deterministic_1/sample/BroadcastArgs:r0:0%Deterministic_1/sample/Const:output:0+Deterministic_1/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Deterministic_1/sample/concat
"Deterministic_1/sample/BroadcastToBroadcastToTActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/add:z:0&Deterministic_1/sample/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"Deterministic_1/sample/BroadcastTo
Deterministic_1/sample/Shape_1Shape+Deterministic_1/sample/BroadcastTo:output:0*
T0*
_output_shapes
:2 
Deterministic_1/sample/Shape_1¢
*Deterministic_1/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*Deterministic_1/sample/strided_slice/stack¦
,Deterministic_1/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,Deterministic_1/sample/strided_slice/stack_1¦
,Deterministic_1/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,Deterministic_1/sample/strided_slice/stack_2ê
$Deterministic_1/sample/strided_sliceStridedSlice'Deterministic_1/sample/Shape_1:output:03Deterministic_1/sample/strided_slice/stack:output:05Deterministic_1/sample/strided_slice/stack_1:output:05Deterministic_1/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2&
$Deterministic_1/sample/strided_slice
$Deterministic_1/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2&
$Deterministic_1/sample/concat_1/axis
Deterministic_1/sample/concat_1ConcatV2,Deterministic_1/sample/sample_shape:output:0-Deterministic_1/sample/strided_slice:output:0-Deterministic_1/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2!
Deterministic_1/sample/concat_1Ô
Deterministic_1/sample/ReshapeReshape+Deterministic_1/sample/BroadcastTo:output:0(Deterministic_1/sample/concat_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
Deterministic_1/sample/Reshapew
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
clip_by_value/Minimum/y¶
clip_by_value/MinimumMinimum'Deterministic_1/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
clip_by_valueù
IdentityIdentityclip_by_value:z:0F^ActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpE^ActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpH^ActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpG^ActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpS^ActorDistributionNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOp_^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp^^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp0^normalize_observations/normalize/ReadVariableOp2^normalize_observations/normalize/ReadVariableOp_18^normalize_observations/normalize/truediv/ReadVariableOp:^normalize_observations/normalize/truediv_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*|
_input_shapesk
i:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿö::::::::::2
EActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpEActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp2
DActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpDActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp2
GActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpGActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp2
FActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpFActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp2¨
RActorDistributionNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOpRActorDistributionNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOp2À
^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp2¾
]ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp]ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp2b
/normalize_observations/normalize/ReadVariableOp/normalize_observations/normalize/ReadVariableOp2f
1normalize_observations/normalize/ReadVariableOp_11normalize_observations/normalize/ReadVariableOp_12r
7normalize_observations/normalize/truediv/ReadVariableOp7normalize_observations/normalize/truediv/ReadVariableOp2v
9normalize_observations/normalize/truediv_1/ReadVariableOp9normalize_observations/normalize/truediv_1/ReadVariableOp:N J
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#
_user_specified_name	time_step:NJ
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#
_user_specified_name	time_step:NJ
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#
_user_specified_name	time_step:SO
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿö
#
_user_specified_name	time_step
þ
g
-__inference_function_with_signature_197655323
unknown
identity	¢StatefulPartitionedCall§
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
GPU 2J 8 *'
f"R 
__inference_<lambda>_1976548822
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
ìÛ
Ü
+__inference_polymorphic_action_fn_197655463
	step_type

reward
discount
observation<
8normalize_observations_normalize_readvariableop_resourceD
@normalize_observations_normalize_truediv_readvariableop_resource>
:normalize_observations_normalize_readvariableop_1_resourceQ
Mactordistributionnetwork_encodingnetwork_dense_matmul_readvariableop_resourceR
Nactordistributionnetwork_encodingnetwork_dense_biasadd_readvariableop_resourceS
Oactordistributionnetwork_encodingnetwork_dense_1_matmul_readvariableop_resourceT
Pactordistributionnetwork_encodingnetwork_dense_1_biasadd_readvariableop_resourcej
factordistributionnetwork_normalprojectionnetwork_means_projection_layer_matmul_readvariableop_resourcek
gactordistributionnetwork_normalprojectionnetwork_means_projection_layer_biasadd_readvariableop_resource_
[actordistributionnetwork_normalprojectionnetwork_bias_layer_biasadd_readvariableop_resource
identity¢EActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp¢DActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp¢GActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp¢FActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp¢RActorDistributionNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOp¢^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp¢]ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp¢/normalize_observations/normalize/ReadVariableOp¢1normalize_observations/normalize/ReadVariableOp_1¢7normalize_observations/normalize/truediv/ReadVariableOp¢9normalize_observations/normalize/truediv_1/ReadVariableOpØ
/normalize_observations/normalize/ReadVariableOpReadVariableOp8normalize_observations_normalize_readvariableop_resource*
_output_shapes	
:ö*
dtype021
/normalize_observations/normalize/ReadVariableOpð
7normalize_observations/normalize/truediv/ReadVariableOpReadVariableOp@normalize_observations_normalize_truediv_readvariableop_resource*
_output_shapes	
:ö*
dtype029
7normalize_observations/normalize/truediv/ReadVariableOpÿ
(normalize_observations/normalize/truedivRealDiv7normalize_observations/normalize/ReadVariableOp:value:0?normalize_observations/normalize/truediv/ReadVariableOp:value:0*
T0*
_output_shapes	
:ö2*
(normalize_observations/normalize/truedivÞ
1normalize_observations/normalize/ReadVariableOp_1ReadVariableOp:normalize_observations_normalize_readvariableop_1_resource*
_output_shapes	
:ö*
dtype023
1normalize_observations/normalize/ReadVariableOp_1ô
9normalize_observations/normalize/truediv_1/ReadVariableOpReadVariableOp@normalize_observations_normalize_truediv_readvariableop_resource*
_output_shapes	
:ö*
dtype02;
9normalize_observations/normalize/truediv_1/ReadVariableOp
*normalize_observations/normalize/truediv_1RealDiv9normalize_observations/normalize/ReadVariableOp_1:value:0Anormalize_observations/normalize/truediv_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:ö2,
*normalize_observations/normalize/truediv_1¹
8normalize_observations/normalize/normalized_tensor/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2:
8normalize_observations/normalize/normalized_tensor/add/y
6normalize_observations/normalize/normalized_tensor/addAddV2.normalize_observations/normalize/truediv_1:z:0Anormalize_observations/normalize/normalized_tensor/add/y:output:0*
T0*
_output_shapes	
:ö28
6normalize_observations/normalize/normalized_tensor/addß
8normalize_observations/normalize/normalized_tensor/RsqrtRsqrt:normalize_observations/normalize/normalized_tensor/add:z:0*
T0*
_output_shapes	
:ö2:
8normalize_observations/normalize/normalized_tensor/Rsqrtõ
6normalize_observations/normalize/normalized_tensor/mulMulobservation<normalize_observations/normalize/normalized_tensor/Rsqrt:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿö28
6normalize_observations/normalize/normalized_tensor/mulË
6normalize_observations/normalize/normalized_tensor/NegNeg,normalize_observations/normalize/truediv:z:0*
T0*
_output_shapes	
:ö28
6normalize_observations/normalize/normalized_tensor/Neg
8normalize_observations/normalize/normalized_tensor/mul_1Mul:normalize_observations/normalize/normalized_tensor/Neg:y:0<normalize_observations/normalize/normalized_tensor/Rsqrt:y:0*
T0*
_output_shapes	
:ö2:
8normalize_observations/normalize/normalized_tensor/mul_1ª
8normalize_observations/normalize/normalized_tensor/add_1AddV2:normalize_observations/normalize/normalized_tensor/mul:z:0<normalize_observations/normalize/normalized_tensor/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿö2:
8normalize_observations/normalize/normalized_tensor/add_1Ñ
Dnormalize_observations/normalize/clipped_normalized_tensor/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2F
Dnormalize_observations/normalize/clipped_normalized_tensor/Minimum/yÓ
Bnormalize_observations/normalize/clipped_normalized_tensor/MinimumMinimum<normalize_observations/normalize/normalized_tensor/add_1:z:0Mnormalize_observations/normalize/clipped_normalized_tensor/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿö2D
Bnormalize_observations/normalize/clipped_normalized_tensor/MinimumÁ
<normalize_observations/normalize/clipped_normalized_tensor/yConst*
_output_shapes
: *
dtype0*
valueB
 *   À2>
<normalize_observations/normalize/clipped_normalized_tensor/yÅ
:normalize_observations/normalize/clipped_normalized_tensorMaximumFnormalize_observations/normalize/clipped_normalized_tensor/Minimum:z:0Enormalize_observations/normalize/clipped_normalized_tensor/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿö2<
:normalize_observations/normalize/clipped_normalized_tensorÁ
6ActorDistributionNetwork/EncodingNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿö   28
6ActorDistributionNetwork/EncodingNetwork/flatten/Const³
8ActorDistributionNetwork/EncodingNetwork/flatten/ReshapeReshape>normalize_observations/normalize/clipped_normalized_tensor:z:0?ActorDistributionNetwork/EncodingNetwork/flatten/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿö2:
8ActorDistributionNetwork/EncodingNetwork/flatten/Reshape
DActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpReadVariableOpMactordistributionnetwork_encodingnetwork_dense_matmul_readvariableop_resource* 
_output_shapes
:
öÈ*
dtype02F
DActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp¼
5ActorDistributionNetwork/EncodingNetwork/dense/MatMulMatMulAActorDistributionNetwork/EncodingNetwork/flatten/Reshape:output:0LActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ27
5ActorDistributionNetwork/EncodingNetwork/dense/MatMul
EActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpReadVariableOpNactordistributionnetwork_encodingnetwork_dense_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype02G
EActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp¾
6ActorDistributionNetwork/EncodingNetwork/dense/BiasAddBiasAdd?ActorDistributionNetwork/EncodingNetwork/dense/MatMul:product:0MActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ28
6ActorDistributionNetwork/EncodingNetwork/dense/BiasAddæ
3ActorDistributionNetwork/EncodingNetwork/dense/ReluRelu?ActorDistributionNetwork/EncodingNetwork/dense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ25
3ActorDistributionNetwork/EncodingNetwork/dense/Relu¡
FActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpReadVariableOpOactordistributionnetwork_encodingnetwork_dense_1_matmul_readvariableop_resource*
_output_shapes
:	Èd*
dtype02H
FActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpÁ
7ActorDistributionNetwork/EncodingNetwork/dense_1/MatMulMatMulAActorDistributionNetwork/EncodingNetwork/dense/Relu:activations:0NActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd29
7ActorDistributionNetwork/EncodingNetwork/dense_1/MatMul
GActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpReadVariableOpPactordistributionnetwork_encodingnetwork_dense_1_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02I
GActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpÅ
8ActorDistributionNetwork/EncodingNetwork/dense_1/BiasAddBiasAddAActorDistributionNetwork/EncodingNetwork/dense_1/MatMul:product:0OActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2:
8ActorDistributionNetwork/EncodingNetwork/dense_1/BiasAddë
5ActorDistributionNetwork/EncodingNetwork/dense_1/ReluReluAActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd27
5ActorDistributionNetwork/EncodingNetwork/dense_1/Reluå
]ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOpReadVariableOpfactordistributionnetwork_normalprojectionnetwork_means_projection_layer_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02_
]ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp
NActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMulMatMulCActorDistributionNetwork/EncodingNetwork/dense_1/Relu:activations:0eActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2P
NActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMulä
^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOpReadVariableOpgactordistributionnetwork_normalprojectionnetwork_means_projection_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02`
^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp¡
OActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAddBiasAddXActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul:product:0fActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Q
OActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAddÑ
>ActorDistributionNetwork/NormalProjectionNetwork/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2@
>ActorDistributionNetwork/NormalProjectionNetwork/Reshape/shapeÔ
8ActorDistributionNetwork/NormalProjectionNetwork/ReshapeReshapeXActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd:output:0GActorDistributionNetwork/NormalProjectionNetwork/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:
8ActorDistributionNetwork/NormalProjectionNetwork/Reshapeë
5ActorDistributionNetwork/NormalProjectionNetwork/TanhTanhAActorDistributionNetwork/NormalProjectionNetwork/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5ActorDistributionNetwork/NormalProjectionNetwork/Tanhµ
6ActorDistributionNetwork/NormalProjectionNetwork/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?28
6ActorDistributionNetwork/NormalProjectionNetwork/mul/x¡
4ActorDistributionNetwork/NormalProjectionNetwork/mulMul?ActorDistributionNetwork/NormalProjectionNetwork/mul/x:output:09ActorDistributionNetwork/NormalProjectionNetwork/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4ActorDistributionNetwork/NormalProjectionNetwork/mulµ
6ActorDistributionNetwork/NormalProjectionNetwork/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?28
6ActorDistributionNetwork/NormalProjectionNetwork/add/x¢
4ActorDistributionNetwork/NormalProjectionNetwork/addAddV2?ActorDistributionNetwork/NormalProjectionNetwork/add/x:output:08ActorDistributionNetwork/NormalProjectionNetwork/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4ActorDistributionNetwork/NormalProjectionNetwork/addó
;ActorDistributionNetwork/NormalProjectionNetwork/zeros_like	ZerosLike8ActorDistributionNetwork/NormalProjectionNetwork/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2=
;ActorDistributionNetwork/NormalProjectionNetwork/zeros_likeÀ
RActorDistributionNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOpReadVariableOp[actordistributionnetwork_normalprojectionnetwork_bias_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02T
RActorDistributionNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOpä
CActorDistributionNetwork/NormalProjectionNetwork/bias_layer/BiasAddBiasAdd?ActorDistributionNetwork/NormalProjectionNetwork/zeros_like:y:0ZActorDistributionNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2E
CActorDistributionNetwork/NormalProjectionNetwork/bias_layer/BiasAddÕ
@ActorDistributionNetwork/NormalProjectionNetwork/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2B
@ActorDistributionNetwork/NormalProjectionNetwork/Reshape_1/shapeÎ
:ActorDistributionNetwork/NormalProjectionNetwork/Reshape_1ReshapeLActorDistributionNetwork/NormalProjectionNetwork/bias_layer/BiasAdd:output:0IActorDistributionNetwork/NormalProjectionNetwork/Reshape_1/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2<
:ActorDistributionNetwork/NormalProjectionNetwork/Reshape_1ù
9ActorDistributionNetwork/NormalProjectionNetwork/SoftplusSoftplusCActorDistributionNetwork/NormalProjectionNetwork/Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9ActorDistributionNetwork/NormalProjectionNetwork/Softplus
gActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/ConstConst*
_output_shapes
: *
dtype0*
value	B :2i
gActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/Const¨
mActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/event_shapeConst*
_output_shapes
:*
dtype0*
valueB:2o
mActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/event_shapeØ
­ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/ShapeShapeGActorDistributionNetwork/NormalProjectionNetwork/Softplus:activations:0*
T0*
_output_shapes
:2°
­ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/ShapeÐ
»ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2¾
»ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stackË
½ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2À
½ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_1Ë
½ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2À
½ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_2Ù	
µActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_sliceStridedSlice¶ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/Shape:output:0ÄActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack:output:0ÆActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_1:output:0ÆActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2¸
µActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_sliceì
·ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/values_1Pack¾ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice:output:0*
N*
T0*
_output_shapes
:2º
·ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/values_1¯
³ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2¶
³ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/axisØ
®ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concatConcatV2¶ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/Shape:output:0ÀActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/values_1:output:0¼ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/axis:output:0*
N*
T0*
_output_shapes
:2±
®ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat
ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack
ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿ2 
ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_1
ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_2¸
ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_sliceStridedSlice·ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat:output:0¤ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack:output:0¦ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_1:output:0¦ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2
ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_sliceº
gActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/ShapeShape8ActorDistributionNetwork/NormalProjectionNetwork/add:z:0*
T0*
_output_shapes
:2i
gActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/Shape¸
uActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2w
uActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stackÅ
wActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2y
wActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_1¼
wActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2y
wActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_2®
oActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_sliceStridedSlicepActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/Shape:output:0~ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack:output:0ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_1:output:0ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2q
oActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_sliceª
oActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/BroadcastArgsBroadcastArgsActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice:output:0xActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice:output:0*
_output_shapes
:2q
oActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/BroadcastArgsï
SActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2U
SActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros/Const¨
MActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zerosFilltActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/BroadcastArgs:r0:0\ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros/Const:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2O
MActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zerosá
LActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/onesConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2N
LActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/ones£
©ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:2¬
©ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/sample_shapeÞ
LActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeroConst*
_output_shapes
: *
dtype0*
value	B : 2N
LActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zero
¿ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ShapeShapeVActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros:output:0*
T0*
_output_shapes
:2Â
¿ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ShapeÞ
ÊActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs/s1Const*
_output_shapes
: *
dtype0*
valueB 2Í
ÊActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs/s1ã
ÇActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgsBroadcastArgsÈActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/Shape:output:0ÓActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs/s1:output:0*
_output_shapes
:2Ê
ÇActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs
ÅActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shapeIdentityÌActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs:r0:0*
T0*
_output_shapes
:2È
ÅActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shapeÏ	
ãActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shapeIdentityÎActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape:output:0*
T0*
_output_shapes
:2æ
ãActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape
³ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/batch_shapeIdentityìActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape:output:0*
T0*
_output_shapes
:2¶
³ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/batch_shape¯
¯ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/ConstConst*
_output_shapes
:*
dtype0*
valueB:2²
¯ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/ConstÝ
µActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/event_shapeIdentity¸ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/Const:output:0*
T0*
_output_shapes
:2¸
µActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/event_shapeö
XActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2Z
XActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat/axisÇ
SActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concatConcatV2¼ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/batch_shape:output:0¾ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/event_shape:output:0aActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat/axis:output:0*
N*
T0*
_output_shapes
:2U
SActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat¦
UActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/IdentityIdentity8ActorDistributionNetwork/NormalProjectionNetwork/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2W
UActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/Identityù
XActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2Z
XActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros/Const£
RActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zerosFill\ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat:output:0aActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2T
RActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros
PActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/addAddV2^ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/Identity:output:0[ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2R
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
Deterministic/rtol
#Deterministic_1/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 2%
#Deterministic_1/sample/sample_shapeÀ
Deterministic_1/sample/ShapeShapeTActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/add:z:0*
T0*
_output_shapes
:2
Deterministic_1/sample/Shape
'Deterministic_1/sample/BroadcastArgs/s1Const*
_output_shapes
: *
dtype0*
valueB 2)
'Deterministic_1/sample/BroadcastArgs/s1Ò
$Deterministic_1/sample/BroadcastArgsBroadcastArgs%Deterministic_1/sample/Shape:output:00Deterministic_1/sample/BroadcastArgs/s1:output:0*
_output_shapes
:2&
$Deterministic_1/sample/BroadcastArgs
Deterministic_1/sample/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
Deterministic_1/sample/Const
&Deterministic_1/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:2(
&Deterministic_1/sample/concat/values_0
"Deterministic_1/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"Deterministic_1/sample/concat/axis¨
Deterministic_1/sample/concatConcatV2/Deterministic_1/sample/concat/values_0:output:0)Deterministic_1/sample/BroadcastArgs:r0:0%Deterministic_1/sample/Const:output:0+Deterministic_1/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Deterministic_1/sample/concat
"Deterministic_1/sample/BroadcastToBroadcastToTActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/add:z:0&Deterministic_1/sample/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"Deterministic_1/sample/BroadcastTo
Deterministic_1/sample/Shape_1Shape+Deterministic_1/sample/BroadcastTo:output:0*
T0*
_output_shapes
:2 
Deterministic_1/sample/Shape_1¢
*Deterministic_1/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*Deterministic_1/sample/strided_slice/stack¦
,Deterministic_1/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,Deterministic_1/sample/strided_slice/stack_1¦
,Deterministic_1/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,Deterministic_1/sample/strided_slice/stack_2ê
$Deterministic_1/sample/strided_sliceStridedSlice'Deterministic_1/sample/Shape_1:output:03Deterministic_1/sample/strided_slice/stack:output:05Deterministic_1/sample/strided_slice/stack_1:output:05Deterministic_1/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2&
$Deterministic_1/sample/strided_slice
$Deterministic_1/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2&
$Deterministic_1/sample/concat_1/axis
Deterministic_1/sample/concat_1ConcatV2,Deterministic_1/sample/sample_shape:output:0-Deterministic_1/sample/strided_slice:output:0-Deterministic_1/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2!
Deterministic_1/sample/concat_1Ô
Deterministic_1/sample/ReshapeReshape+Deterministic_1/sample/BroadcastTo:output:0(Deterministic_1/sample/concat_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
Deterministic_1/sample/Reshapew
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
clip_by_value/Minimum/y¶
clip_by_value/MinimumMinimum'Deterministic_1/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
clip_by_valueù
IdentityIdentityclip_by_value:z:0F^ActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpE^ActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpH^ActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpG^ActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpS^ActorDistributionNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOp_^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp^^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp0^normalize_observations/normalize/ReadVariableOp2^normalize_observations/normalize/ReadVariableOp_18^normalize_observations/normalize/truediv/ReadVariableOp:^normalize_observations/normalize/truediv_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*|
_input_shapesk
i:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿö::::::::::2
EActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpEActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp2
DActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpDActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp2
GActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpGActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp2
FActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpFActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp2¨
RActorDistributionNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOpRActorDistributionNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOp2À
^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp2¾
]ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp]ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp2b
/normalize_observations/normalize/ReadVariableOp/normalize_observations/normalize/ReadVariableOp2f
1normalize_observations/normalize/ReadVariableOp_11normalize_observations/normalize/ReadVariableOp_12r
7normalize_observations/normalize/truediv/ReadVariableOp7normalize_observations/normalize/truediv/ReadVariableOp2v
9normalize_observations/normalize/truediv_1/ReadVariableOp9normalize_observations/normalize/truediv_1/ReadVariableOp:N J
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#
_user_specified_name	step_type:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namereward:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
discount:UQ
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿö
%
_user_specified_nameobservation

9
'__inference_get_initial_state_197655699

batch_size*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
Ë
)
'__inference_signature_wrapper_197655338
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
GPU 2J 8 *6
f1R/
-__inference_function_with_signature_1976553342
PartitionedCall*
_input_shapes 
²
?
-__inference_function_with_signature_197655311

batch_size
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
GPU 2J 8 *0
f+R)
'__inference_get_initial_state_1976553102
PartitionedCall*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
ÆÜ

+__inference_polymorphic_action_fn_197655588
time_step_step_type
time_step_reward
time_step_discount
time_step_observation<
8normalize_observations_normalize_readvariableop_resourceD
@normalize_observations_normalize_truediv_readvariableop_resource>
:normalize_observations_normalize_readvariableop_1_resourceQ
Mactordistributionnetwork_encodingnetwork_dense_matmul_readvariableop_resourceR
Nactordistributionnetwork_encodingnetwork_dense_biasadd_readvariableop_resourceS
Oactordistributionnetwork_encodingnetwork_dense_1_matmul_readvariableop_resourceT
Pactordistributionnetwork_encodingnetwork_dense_1_biasadd_readvariableop_resourcej
factordistributionnetwork_normalprojectionnetwork_means_projection_layer_matmul_readvariableop_resourcek
gactordistributionnetwork_normalprojectionnetwork_means_projection_layer_biasadd_readvariableop_resource_
[actordistributionnetwork_normalprojectionnetwork_bias_layer_biasadd_readvariableop_resource
identity¢EActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp¢DActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp¢GActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp¢FActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp¢RActorDistributionNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOp¢^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp¢]ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp¢/normalize_observations/normalize/ReadVariableOp¢1normalize_observations/normalize/ReadVariableOp_1¢7normalize_observations/normalize/truediv/ReadVariableOp¢9normalize_observations/normalize/truediv_1/ReadVariableOpØ
/normalize_observations/normalize/ReadVariableOpReadVariableOp8normalize_observations_normalize_readvariableop_resource*
_output_shapes	
:ö*
dtype021
/normalize_observations/normalize/ReadVariableOpð
7normalize_observations/normalize/truediv/ReadVariableOpReadVariableOp@normalize_observations_normalize_truediv_readvariableop_resource*
_output_shapes	
:ö*
dtype029
7normalize_observations/normalize/truediv/ReadVariableOpÿ
(normalize_observations/normalize/truedivRealDiv7normalize_observations/normalize/ReadVariableOp:value:0?normalize_observations/normalize/truediv/ReadVariableOp:value:0*
T0*
_output_shapes	
:ö2*
(normalize_observations/normalize/truedivÞ
1normalize_observations/normalize/ReadVariableOp_1ReadVariableOp:normalize_observations_normalize_readvariableop_1_resource*
_output_shapes	
:ö*
dtype023
1normalize_observations/normalize/ReadVariableOp_1ô
9normalize_observations/normalize/truediv_1/ReadVariableOpReadVariableOp@normalize_observations_normalize_truediv_readvariableop_resource*
_output_shapes	
:ö*
dtype02;
9normalize_observations/normalize/truediv_1/ReadVariableOp
*normalize_observations/normalize/truediv_1RealDiv9normalize_observations/normalize/ReadVariableOp_1:value:0Anormalize_observations/normalize/truediv_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:ö2,
*normalize_observations/normalize/truediv_1¹
8normalize_observations/normalize/normalized_tensor/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2:
8normalize_observations/normalize/normalized_tensor/add/y
6normalize_observations/normalize/normalized_tensor/addAddV2.normalize_observations/normalize/truediv_1:z:0Anormalize_observations/normalize/normalized_tensor/add/y:output:0*
T0*
_output_shapes	
:ö28
6normalize_observations/normalize/normalized_tensor/addß
8normalize_observations/normalize/normalized_tensor/RsqrtRsqrt:normalize_observations/normalize/normalized_tensor/add:z:0*
T0*
_output_shapes	
:ö2:
8normalize_observations/normalize/normalized_tensor/Rsqrtÿ
6normalize_observations/normalize/normalized_tensor/mulMultime_step_observation<normalize_observations/normalize/normalized_tensor/Rsqrt:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿö28
6normalize_observations/normalize/normalized_tensor/mulË
6normalize_observations/normalize/normalized_tensor/NegNeg,normalize_observations/normalize/truediv:z:0*
T0*
_output_shapes	
:ö28
6normalize_observations/normalize/normalized_tensor/Neg
8normalize_observations/normalize/normalized_tensor/mul_1Mul:normalize_observations/normalize/normalized_tensor/Neg:y:0<normalize_observations/normalize/normalized_tensor/Rsqrt:y:0*
T0*
_output_shapes	
:ö2:
8normalize_observations/normalize/normalized_tensor/mul_1ª
8normalize_observations/normalize/normalized_tensor/add_1AddV2:normalize_observations/normalize/normalized_tensor/mul:z:0<normalize_observations/normalize/normalized_tensor/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿö2:
8normalize_observations/normalize/normalized_tensor/add_1Ñ
Dnormalize_observations/normalize/clipped_normalized_tensor/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2F
Dnormalize_observations/normalize/clipped_normalized_tensor/Minimum/yÓ
Bnormalize_observations/normalize/clipped_normalized_tensor/MinimumMinimum<normalize_observations/normalize/normalized_tensor/add_1:z:0Mnormalize_observations/normalize/clipped_normalized_tensor/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿö2D
Bnormalize_observations/normalize/clipped_normalized_tensor/MinimumÁ
<normalize_observations/normalize/clipped_normalized_tensor/yConst*
_output_shapes
: *
dtype0*
valueB
 *   À2>
<normalize_observations/normalize/clipped_normalized_tensor/yÅ
:normalize_observations/normalize/clipped_normalized_tensorMaximumFnormalize_observations/normalize/clipped_normalized_tensor/Minimum:z:0Enormalize_observations/normalize/clipped_normalized_tensor/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿö2<
:normalize_observations/normalize/clipped_normalized_tensorÁ
6ActorDistributionNetwork/EncodingNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿö   28
6ActorDistributionNetwork/EncodingNetwork/flatten/Const³
8ActorDistributionNetwork/EncodingNetwork/flatten/ReshapeReshape>normalize_observations/normalize/clipped_normalized_tensor:z:0?ActorDistributionNetwork/EncodingNetwork/flatten/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿö2:
8ActorDistributionNetwork/EncodingNetwork/flatten/Reshape
DActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpReadVariableOpMactordistributionnetwork_encodingnetwork_dense_matmul_readvariableop_resource* 
_output_shapes
:
öÈ*
dtype02F
DActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp¼
5ActorDistributionNetwork/EncodingNetwork/dense/MatMulMatMulAActorDistributionNetwork/EncodingNetwork/flatten/Reshape:output:0LActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ27
5ActorDistributionNetwork/EncodingNetwork/dense/MatMul
EActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpReadVariableOpNactordistributionnetwork_encodingnetwork_dense_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype02G
EActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp¾
6ActorDistributionNetwork/EncodingNetwork/dense/BiasAddBiasAdd?ActorDistributionNetwork/EncodingNetwork/dense/MatMul:product:0MActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ28
6ActorDistributionNetwork/EncodingNetwork/dense/BiasAddæ
3ActorDistributionNetwork/EncodingNetwork/dense/ReluRelu?ActorDistributionNetwork/EncodingNetwork/dense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ25
3ActorDistributionNetwork/EncodingNetwork/dense/Relu¡
FActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpReadVariableOpOactordistributionnetwork_encodingnetwork_dense_1_matmul_readvariableop_resource*
_output_shapes
:	Èd*
dtype02H
FActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpÁ
7ActorDistributionNetwork/EncodingNetwork/dense_1/MatMulMatMulAActorDistributionNetwork/EncodingNetwork/dense/Relu:activations:0NActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd29
7ActorDistributionNetwork/EncodingNetwork/dense_1/MatMul
GActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpReadVariableOpPactordistributionnetwork_encodingnetwork_dense_1_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02I
GActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpÅ
8ActorDistributionNetwork/EncodingNetwork/dense_1/BiasAddBiasAddAActorDistributionNetwork/EncodingNetwork/dense_1/MatMul:product:0OActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2:
8ActorDistributionNetwork/EncodingNetwork/dense_1/BiasAddë
5ActorDistributionNetwork/EncodingNetwork/dense_1/ReluReluAActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd27
5ActorDistributionNetwork/EncodingNetwork/dense_1/Reluå
]ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOpReadVariableOpfactordistributionnetwork_normalprojectionnetwork_means_projection_layer_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02_
]ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp
NActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMulMatMulCActorDistributionNetwork/EncodingNetwork/dense_1/Relu:activations:0eActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2P
NActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMulä
^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOpReadVariableOpgactordistributionnetwork_normalprojectionnetwork_means_projection_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02`
^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp¡
OActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAddBiasAddXActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul:product:0fActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Q
OActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAddÑ
>ActorDistributionNetwork/NormalProjectionNetwork/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2@
>ActorDistributionNetwork/NormalProjectionNetwork/Reshape/shapeÔ
8ActorDistributionNetwork/NormalProjectionNetwork/ReshapeReshapeXActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd:output:0GActorDistributionNetwork/NormalProjectionNetwork/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:
8ActorDistributionNetwork/NormalProjectionNetwork/Reshapeë
5ActorDistributionNetwork/NormalProjectionNetwork/TanhTanhAActorDistributionNetwork/NormalProjectionNetwork/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5ActorDistributionNetwork/NormalProjectionNetwork/Tanhµ
6ActorDistributionNetwork/NormalProjectionNetwork/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?28
6ActorDistributionNetwork/NormalProjectionNetwork/mul/x¡
4ActorDistributionNetwork/NormalProjectionNetwork/mulMul?ActorDistributionNetwork/NormalProjectionNetwork/mul/x:output:09ActorDistributionNetwork/NormalProjectionNetwork/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4ActorDistributionNetwork/NormalProjectionNetwork/mulµ
6ActorDistributionNetwork/NormalProjectionNetwork/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?28
6ActorDistributionNetwork/NormalProjectionNetwork/add/x¢
4ActorDistributionNetwork/NormalProjectionNetwork/addAddV2?ActorDistributionNetwork/NormalProjectionNetwork/add/x:output:08ActorDistributionNetwork/NormalProjectionNetwork/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4ActorDistributionNetwork/NormalProjectionNetwork/addó
;ActorDistributionNetwork/NormalProjectionNetwork/zeros_like	ZerosLike8ActorDistributionNetwork/NormalProjectionNetwork/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2=
;ActorDistributionNetwork/NormalProjectionNetwork/zeros_likeÀ
RActorDistributionNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOpReadVariableOp[actordistributionnetwork_normalprojectionnetwork_bias_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02T
RActorDistributionNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOpä
CActorDistributionNetwork/NormalProjectionNetwork/bias_layer/BiasAddBiasAdd?ActorDistributionNetwork/NormalProjectionNetwork/zeros_like:y:0ZActorDistributionNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2E
CActorDistributionNetwork/NormalProjectionNetwork/bias_layer/BiasAddÕ
@ActorDistributionNetwork/NormalProjectionNetwork/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2B
@ActorDistributionNetwork/NormalProjectionNetwork/Reshape_1/shapeÎ
:ActorDistributionNetwork/NormalProjectionNetwork/Reshape_1ReshapeLActorDistributionNetwork/NormalProjectionNetwork/bias_layer/BiasAdd:output:0IActorDistributionNetwork/NormalProjectionNetwork/Reshape_1/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2<
:ActorDistributionNetwork/NormalProjectionNetwork/Reshape_1ù
9ActorDistributionNetwork/NormalProjectionNetwork/SoftplusSoftplusCActorDistributionNetwork/NormalProjectionNetwork/Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9ActorDistributionNetwork/NormalProjectionNetwork/Softplus
gActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/ConstConst*
_output_shapes
: *
dtype0*
value	B :2i
gActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/Const¨
mActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/event_shapeConst*
_output_shapes
:*
dtype0*
valueB:2o
mActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/event_shapeØ
­ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/ShapeShapeGActorDistributionNetwork/NormalProjectionNetwork/Softplus:activations:0*
T0*
_output_shapes
:2°
­ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/ShapeÐ
»ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2¾
»ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stackË
½ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2À
½ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_1Ë
½ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2À
½ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_2Ù	
µActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_sliceStridedSlice¶ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/Shape:output:0ÄActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack:output:0ÆActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_1:output:0ÆActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2¸
µActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_sliceì
·ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/values_1Pack¾ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice:output:0*
N*
T0*
_output_shapes
:2º
·ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/values_1¯
³ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2¶
³ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/axisØ
®ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concatConcatV2¶ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/Shape:output:0ÀActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/values_1:output:0¼ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/axis:output:0*
N*
T0*
_output_shapes
:2±
®ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat
ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack
ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿ2 
ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_1
ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_2¸
ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_sliceStridedSlice·ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat:output:0¤ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack:output:0¦ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_1:output:0¦ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2
ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_sliceº
gActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/ShapeShape8ActorDistributionNetwork/NormalProjectionNetwork/add:z:0*
T0*
_output_shapes
:2i
gActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/Shape¸
uActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2w
uActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stackÅ
wActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2y
wActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_1¼
wActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2y
wActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_2®
oActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_sliceStridedSlicepActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/Shape:output:0~ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack:output:0ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_1:output:0ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2q
oActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_sliceª
oActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/BroadcastArgsBroadcastArgsActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice:output:0xActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice:output:0*
_output_shapes
:2q
oActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/BroadcastArgsï
SActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2U
SActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros/Const¨
MActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zerosFilltActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/BroadcastArgs:r0:0\ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros/Const:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2O
MActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zerosá
LActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/onesConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2N
LActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/ones£
©ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:2¬
©ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/sample_shapeÞ
LActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeroConst*
_output_shapes
: *
dtype0*
value	B : 2N
LActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zero
¿ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ShapeShapeVActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros:output:0*
T0*
_output_shapes
:2Â
¿ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ShapeÞ
ÊActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs/s1Const*
_output_shapes
: *
dtype0*
valueB 2Í
ÊActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs/s1ã
ÇActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgsBroadcastArgsÈActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/Shape:output:0ÓActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs/s1:output:0*
_output_shapes
:2Ê
ÇActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs
ÅActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shapeIdentityÌActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs:r0:0*
T0*
_output_shapes
:2È
ÅActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shapeÏ	
ãActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shapeIdentityÎActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape:output:0*
T0*
_output_shapes
:2æ
ãActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape
³ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/batch_shapeIdentityìActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape:output:0*
T0*
_output_shapes
:2¶
³ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/batch_shape¯
¯ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/ConstConst*
_output_shapes
:*
dtype0*
valueB:2²
¯ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/ConstÝ
µActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/event_shapeIdentity¸ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/Const:output:0*
T0*
_output_shapes
:2¸
µActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/event_shapeö
XActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2Z
XActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat/axisÇ
SActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concatConcatV2¼ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/batch_shape:output:0¾ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/event_shape:output:0aActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat/axis:output:0*
N*
T0*
_output_shapes
:2U
SActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat¦
UActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/IdentityIdentity8ActorDistributionNetwork/NormalProjectionNetwork/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2W
UActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/Identityù
XActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2Z
XActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros/Const£
RActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zerosFill\ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat:output:0aActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2T
RActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros
PActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/addAddV2^ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/Identity:output:0[ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2R
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
Deterministic/rtol
#Deterministic_1/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB 2%
#Deterministic_1/sample/sample_shapeÀ
Deterministic_1/sample/ShapeShapeTActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/add:z:0*
T0*
_output_shapes
:2
Deterministic_1/sample/Shape
'Deterministic_1/sample/BroadcastArgs/s1Const*
_output_shapes
: *
dtype0*
valueB 2)
'Deterministic_1/sample/BroadcastArgs/s1Ò
$Deterministic_1/sample/BroadcastArgsBroadcastArgs%Deterministic_1/sample/Shape:output:00Deterministic_1/sample/BroadcastArgs/s1:output:0*
_output_shapes
:2&
$Deterministic_1/sample/BroadcastArgs
Deterministic_1/sample/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
Deterministic_1/sample/Const
&Deterministic_1/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:2(
&Deterministic_1/sample/concat/values_0
"Deterministic_1/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"Deterministic_1/sample/concat/axis¨
Deterministic_1/sample/concatConcatV2/Deterministic_1/sample/concat/values_0:output:0)Deterministic_1/sample/BroadcastArgs:r0:0%Deterministic_1/sample/Const:output:0+Deterministic_1/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Deterministic_1/sample/concat
"Deterministic_1/sample/BroadcastToBroadcastToTActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/add:z:0&Deterministic_1/sample/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"Deterministic_1/sample/BroadcastTo
Deterministic_1/sample/Shape_1Shape+Deterministic_1/sample/BroadcastTo:output:0*
T0*
_output_shapes
:2 
Deterministic_1/sample/Shape_1¢
*Deterministic_1/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2,
*Deterministic_1/sample/strided_slice/stack¦
,Deterministic_1/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,Deterministic_1/sample/strided_slice/stack_1¦
,Deterministic_1/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,Deterministic_1/sample/strided_slice/stack_2ê
$Deterministic_1/sample/strided_sliceStridedSlice'Deterministic_1/sample/Shape_1:output:03Deterministic_1/sample/strided_slice/stack:output:05Deterministic_1/sample/strided_slice/stack_1:output:05Deterministic_1/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2&
$Deterministic_1/sample/strided_slice
$Deterministic_1/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2&
$Deterministic_1/sample/concat_1/axis
Deterministic_1/sample/concat_1ConcatV2,Deterministic_1/sample/sample_shape:output:0-Deterministic_1/sample/strided_slice:output:0-Deterministic_1/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2!
Deterministic_1/sample/concat_1Ô
Deterministic_1/sample/ReshapeReshape+Deterministic_1/sample/BroadcastTo:output:0(Deterministic_1/sample/concat_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
Deterministic_1/sample/Reshapew
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
clip_by_value/Minimum/y¶
clip_by_value/MinimumMinimum'Deterministic_1/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
clip_by_valueù
IdentityIdentityclip_by_value:z:0F^ActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpE^ActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpH^ActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpG^ActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpS^ActorDistributionNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOp_^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp^^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp0^normalize_observations/normalize/ReadVariableOp2^normalize_observations/normalize/ReadVariableOp_18^normalize_observations/normalize/truediv/ReadVariableOp:^normalize_observations/normalize/truediv_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*|
_input_shapesk
i:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿö::::::::::2
EActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpEActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp2
DActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpDActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp2
GActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpGActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp2
FActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpFActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp2¨
RActorDistributionNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOpRActorDistributionNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOp2À
^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp2¾
]ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp]ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp2b
/normalize_observations/normalize/ReadVariableOp/normalize_observations/normalize/ReadVariableOp2f
1normalize_observations/normalize/ReadVariableOp_11normalize_observations/normalize/ReadVariableOp_12r
7normalize_observations/normalize/truediv/ReadVariableOp7normalize_observations/normalize/truediv/ReadVariableOp2v
9normalize_observations/normalize/truediv_1/ReadVariableOp9normalize_observations/normalize/truediv_1/ReadVariableOp:X T
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_nametime_step/step_type:UQ
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_nametime_step/reward:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_nametime_step/discount:_[
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿö
/
_user_specified_nametime_step/observation
ºÁ
â
1__inference_polymorphic_distribution_fn_197655696
	step_type

reward
discount
observation<
8normalize_observations_normalize_readvariableop_resourceD
@normalize_observations_normalize_truediv_readvariableop_resource>
:normalize_observations_normalize_readvariableop_1_resourceQ
Mactordistributionnetwork_encodingnetwork_dense_matmul_readvariableop_resourceR
Nactordistributionnetwork_encodingnetwork_dense_biasadd_readvariableop_resourceS
Oactordistributionnetwork_encodingnetwork_dense_1_matmul_readvariableop_resourceT
Pactordistributionnetwork_encodingnetwork_dense_1_biasadd_readvariableop_resourcej
factordistributionnetwork_normalprojectionnetwork_means_projection_layer_matmul_readvariableop_resourcek
gactordistributionnetwork_normalprojectionnetwork_means_projection_layer_biasadd_readvariableop_resource_
[actordistributionnetwork_normalprojectionnetwork_bias_layer_biasadd_readvariableop_resource
identity¢EActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp¢DActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp¢GActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp¢FActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp¢RActorDistributionNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOp¢^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp¢]ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp¢/normalize_observations/normalize/ReadVariableOp¢1normalize_observations/normalize/ReadVariableOp_1¢7normalize_observations/normalize/truediv/ReadVariableOp¢9normalize_observations/normalize/truediv_1/ReadVariableOpØ
/normalize_observations/normalize/ReadVariableOpReadVariableOp8normalize_observations_normalize_readvariableop_resource*
_output_shapes	
:ö*
dtype021
/normalize_observations/normalize/ReadVariableOpð
7normalize_observations/normalize/truediv/ReadVariableOpReadVariableOp@normalize_observations_normalize_truediv_readvariableop_resource*
_output_shapes	
:ö*
dtype029
7normalize_observations/normalize/truediv/ReadVariableOpÿ
(normalize_observations/normalize/truedivRealDiv7normalize_observations/normalize/ReadVariableOp:value:0?normalize_observations/normalize/truediv/ReadVariableOp:value:0*
T0*
_output_shapes	
:ö2*
(normalize_observations/normalize/truedivÞ
1normalize_observations/normalize/ReadVariableOp_1ReadVariableOp:normalize_observations_normalize_readvariableop_1_resource*
_output_shapes	
:ö*
dtype023
1normalize_observations/normalize/ReadVariableOp_1ô
9normalize_observations/normalize/truediv_1/ReadVariableOpReadVariableOp@normalize_observations_normalize_truediv_readvariableop_resource*
_output_shapes	
:ö*
dtype02;
9normalize_observations/normalize/truediv_1/ReadVariableOp
*normalize_observations/normalize/truediv_1RealDiv9normalize_observations/normalize/ReadVariableOp_1:value:0Anormalize_observations/normalize/truediv_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:ö2,
*normalize_observations/normalize/truediv_1¹
8normalize_observations/normalize/normalized_tensor/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2:
8normalize_observations/normalize/normalized_tensor/add/y
6normalize_observations/normalize/normalized_tensor/addAddV2.normalize_observations/normalize/truediv_1:z:0Anormalize_observations/normalize/normalized_tensor/add/y:output:0*
T0*
_output_shapes	
:ö28
6normalize_observations/normalize/normalized_tensor/addß
8normalize_observations/normalize/normalized_tensor/RsqrtRsqrt:normalize_observations/normalize/normalized_tensor/add:z:0*
T0*
_output_shapes	
:ö2:
8normalize_observations/normalize/normalized_tensor/Rsqrtõ
6normalize_observations/normalize/normalized_tensor/mulMulobservation<normalize_observations/normalize/normalized_tensor/Rsqrt:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿö28
6normalize_observations/normalize/normalized_tensor/mulË
6normalize_observations/normalize/normalized_tensor/NegNeg,normalize_observations/normalize/truediv:z:0*
T0*
_output_shapes	
:ö28
6normalize_observations/normalize/normalized_tensor/Neg
8normalize_observations/normalize/normalized_tensor/mul_1Mul:normalize_observations/normalize/normalized_tensor/Neg:y:0<normalize_observations/normalize/normalized_tensor/Rsqrt:y:0*
T0*
_output_shapes	
:ö2:
8normalize_observations/normalize/normalized_tensor/mul_1ª
8normalize_observations/normalize/normalized_tensor/add_1AddV2:normalize_observations/normalize/normalized_tensor/mul:z:0<normalize_observations/normalize/normalized_tensor/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿö2:
8normalize_observations/normalize/normalized_tensor/add_1Ñ
Dnormalize_observations/normalize/clipped_normalized_tensor/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2F
Dnormalize_observations/normalize/clipped_normalized_tensor/Minimum/yÓ
Bnormalize_observations/normalize/clipped_normalized_tensor/MinimumMinimum<normalize_observations/normalize/normalized_tensor/add_1:z:0Mnormalize_observations/normalize/clipped_normalized_tensor/Minimum/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿö2D
Bnormalize_observations/normalize/clipped_normalized_tensor/MinimumÁ
<normalize_observations/normalize/clipped_normalized_tensor/yConst*
_output_shapes
: *
dtype0*
valueB
 *   À2>
<normalize_observations/normalize/clipped_normalized_tensor/yÅ
:normalize_observations/normalize/clipped_normalized_tensorMaximumFnormalize_observations/normalize/clipped_normalized_tensor/Minimum:z:0Enormalize_observations/normalize/clipped_normalized_tensor/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿö2<
:normalize_observations/normalize/clipped_normalized_tensorÁ
6ActorDistributionNetwork/EncodingNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿö   28
6ActorDistributionNetwork/EncodingNetwork/flatten/Const³
8ActorDistributionNetwork/EncodingNetwork/flatten/ReshapeReshape>normalize_observations/normalize/clipped_normalized_tensor:z:0?ActorDistributionNetwork/EncodingNetwork/flatten/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿö2:
8ActorDistributionNetwork/EncodingNetwork/flatten/Reshape
DActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpReadVariableOpMactordistributionnetwork_encodingnetwork_dense_matmul_readvariableop_resource* 
_output_shapes
:
öÈ*
dtype02F
DActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp¼
5ActorDistributionNetwork/EncodingNetwork/dense/MatMulMatMulAActorDistributionNetwork/EncodingNetwork/flatten/Reshape:output:0LActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ27
5ActorDistributionNetwork/EncodingNetwork/dense/MatMul
EActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpReadVariableOpNactordistributionnetwork_encodingnetwork_dense_biasadd_readvariableop_resource*
_output_shapes	
:È*
dtype02G
EActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp¾
6ActorDistributionNetwork/EncodingNetwork/dense/BiasAddBiasAdd?ActorDistributionNetwork/EncodingNetwork/dense/MatMul:product:0MActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ28
6ActorDistributionNetwork/EncodingNetwork/dense/BiasAddæ
3ActorDistributionNetwork/EncodingNetwork/dense/ReluRelu?ActorDistributionNetwork/EncodingNetwork/dense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ25
3ActorDistributionNetwork/EncodingNetwork/dense/Relu¡
FActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpReadVariableOpOactordistributionnetwork_encodingnetwork_dense_1_matmul_readvariableop_resource*
_output_shapes
:	Èd*
dtype02H
FActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpÁ
7ActorDistributionNetwork/EncodingNetwork/dense_1/MatMulMatMulAActorDistributionNetwork/EncodingNetwork/dense/Relu:activations:0NActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd29
7ActorDistributionNetwork/EncodingNetwork/dense_1/MatMul
GActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpReadVariableOpPactordistributionnetwork_encodingnetwork_dense_1_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02I
GActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpÅ
8ActorDistributionNetwork/EncodingNetwork/dense_1/BiasAddBiasAddAActorDistributionNetwork/EncodingNetwork/dense_1/MatMul:product:0OActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2:
8ActorDistributionNetwork/EncodingNetwork/dense_1/BiasAddë
5ActorDistributionNetwork/EncodingNetwork/dense_1/ReluReluAActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd27
5ActorDistributionNetwork/EncodingNetwork/dense_1/Reluå
]ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOpReadVariableOpfactordistributionnetwork_normalprojectionnetwork_means_projection_layer_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02_
]ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp
NActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMulMatMulCActorDistributionNetwork/EncodingNetwork/dense_1/Relu:activations:0eActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2P
NActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMulä
^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOpReadVariableOpgactordistributionnetwork_normalprojectionnetwork_means_projection_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02`
^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp¡
OActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAddBiasAddXActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul:product:0fActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Q
OActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAddÑ
>ActorDistributionNetwork/NormalProjectionNetwork/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2@
>ActorDistributionNetwork/NormalProjectionNetwork/Reshape/shapeÔ
8ActorDistributionNetwork/NormalProjectionNetwork/ReshapeReshapeXActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd:output:0GActorDistributionNetwork/NormalProjectionNetwork/Reshape/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:
8ActorDistributionNetwork/NormalProjectionNetwork/Reshapeë
5ActorDistributionNetwork/NormalProjectionNetwork/TanhTanhAActorDistributionNetwork/NormalProjectionNetwork/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5ActorDistributionNetwork/NormalProjectionNetwork/Tanhµ
6ActorDistributionNetwork/NormalProjectionNetwork/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?28
6ActorDistributionNetwork/NormalProjectionNetwork/mul/x¡
4ActorDistributionNetwork/NormalProjectionNetwork/mulMul?ActorDistributionNetwork/NormalProjectionNetwork/mul/x:output:09ActorDistributionNetwork/NormalProjectionNetwork/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4ActorDistributionNetwork/NormalProjectionNetwork/mulµ
6ActorDistributionNetwork/NormalProjectionNetwork/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?28
6ActorDistributionNetwork/NormalProjectionNetwork/add/x¢
4ActorDistributionNetwork/NormalProjectionNetwork/addAddV2?ActorDistributionNetwork/NormalProjectionNetwork/add/x:output:08ActorDistributionNetwork/NormalProjectionNetwork/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4ActorDistributionNetwork/NormalProjectionNetwork/addó
;ActorDistributionNetwork/NormalProjectionNetwork/zeros_like	ZerosLike8ActorDistributionNetwork/NormalProjectionNetwork/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2=
;ActorDistributionNetwork/NormalProjectionNetwork/zeros_likeÀ
RActorDistributionNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOpReadVariableOp[actordistributionnetwork_normalprojectionnetwork_bias_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02T
RActorDistributionNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOpä
CActorDistributionNetwork/NormalProjectionNetwork/bias_layer/BiasAddBiasAdd?ActorDistributionNetwork/NormalProjectionNetwork/zeros_like:y:0ZActorDistributionNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2E
CActorDistributionNetwork/NormalProjectionNetwork/bias_layer/BiasAddÕ
@ActorDistributionNetwork/NormalProjectionNetwork/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2B
@ActorDistributionNetwork/NormalProjectionNetwork/Reshape_1/shapeÎ
:ActorDistributionNetwork/NormalProjectionNetwork/Reshape_1ReshapeLActorDistributionNetwork/NormalProjectionNetwork/bias_layer/BiasAdd:output:0IActorDistributionNetwork/NormalProjectionNetwork/Reshape_1/shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2<
:ActorDistributionNetwork/NormalProjectionNetwork/Reshape_1ù
9ActorDistributionNetwork/NormalProjectionNetwork/SoftplusSoftplusCActorDistributionNetwork/NormalProjectionNetwork/Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9ActorDistributionNetwork/NormalProjectionNetwork/Softplus
gActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/ConstConst*
_output_shapes
: *
dtype0*
value	B :2i
gActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/Const¨
mActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/event_shapeConst*
_output_shapes
:*
dtype0*
valueB:2o
mActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/event_shapeØ
­ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/ShapeShapeGActorDistributionNetwork/NormalProjectionNetwork/Softplus:activations:0*
T0*
_output_shapes
:2°
­ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/ShapeÐ
»ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2¾
»ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stackË
½ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2À
½ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_1Ë
½ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2À
½ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_2Ù	
µActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_sliceStridedSlice¶ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/Shape:output:0ÄActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack:output:0ÆActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_1:output:0ÆActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2¸
µActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_sliceì
·ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/values_1Pack¾ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/strided_slice:output:0*
N*
T0*
_output_shapes
:2º
·ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/values_1¯
³ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2¶
³ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/axisØ
®ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concatConcatV2¶ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/Shape:output:0ÀActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/values_1:output:0¼ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat/axis:output:0*
N*
T0*
_output_shapes
:2±
®ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat
ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack
ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿ2 
ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_1
ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_2¸
ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_sliceStridedSlice·ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/LinearOperatorDiag/shape_tensor/concat:output:0¤ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack:output:0¦ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_1:output:0¦ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2
ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_sliceº
gActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/ShapeShape8ActorDistributionNetwork/NormalProjectionNetwork/add:z:0*
T0*
_output_shapes
:2i
gActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/Shape¸
uActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2w
uActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stackÅ
wActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2y
wActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_1¼
wActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2y
wActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_2®
oActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_sliceStridedSlicepActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/Shape:output:0~ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack:output:0ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_1:output:0ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2q
oActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_sliceª
oActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/BroadcastArgsBroadcastArgsActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/strided_slice:output:0xActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice:output:0*
_output_shapes
:2q
oActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/BroadcastArgsï
SActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2U
SActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros/Const¨
MActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zerosFilltActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/shapes_from_loc_and_scale/BroadcastArgs:r0:0\ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros/Const:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2O
MActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zerosá
LActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/onesConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2N
LActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/ones£
©ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/sample_shapeConst*
_output_shapes
:*
dtype0*
valueB:2¬
©ActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/sample_shapeÞ
LActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeroConst*
_output_shapes
: *
dtype0*
value	B : 2N
LActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zero
¿ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ShapeShapeVActorDistributionNetwork/NormalProjectionNetwork/MultivariateNormalDiag/zeros:output:0*
T0*
_output_shapes
:2Â
¿ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ShapeÞ
ÊActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs/s1Const*
_output_shapes
: *
dtype0*
valueB 2Í
ÊActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs/s1ã
ÇActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgsBroadcastArgsÈActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/Shape:output:0ÓActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs/s1:output:0*
_output_shapes
:2Ê
ÇActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs
ÅActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shapeIdentityÌActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/BroadcastArgs:r0:0*
T0*
_output_shapes
:2È
ÅActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shapeÏ	
ãActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shapeIdentityÎActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape:output:0*
T0*
_output_shapes
:2æ
ãActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape
³ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/batch_shapeIdentityìActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_SampleActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_Normal/batch_shape_tensor/batch_shape:output:0*
T0*
_output_shapes
:2¶
³ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/batch_shape¯
¯ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/ConstConst*
_output_shapes
:*
dtype0*
valueB:2²
¯ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/ConstÝ
µActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/event_shapeIdentity¸ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/Const:output:0*
T0*
_output_shapes
:2¸
µActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/event_shapeö
XActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2Z
XActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat/axisÇ
SActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concatConcatV2¼ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/batch_shape_tensor/batch_shape:output:0¾ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag_1/event_shape_tensor/event_shape:output:0aActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat/axis:output:0*
N*
T0*
_output_shapes
:2U
SActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat¦
UActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/IdentityIdentity8ActorDistributionNetwork/NormalProjectionNetwork/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2W
UActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/Identityù
XActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2Z
XActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros/Const£
RActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zerosFill\ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/concat:output:0aActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2T
RActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros
PActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/addAddV2^ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/Identity:output:0[ActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/zeros:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2R
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
Deterministic_1/rtol¼
IdentityIdentityTActorDistributionNetwork_NormalProjectionNetwork_MultivariateNormalDiag/mode/add:z:0F^ActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpE^ActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpH^ActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpG^ActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpS^ActorDistributionNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOp_^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp^^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp0^normalize_observations/normalize/ReadVariableOp2^normalize_observations/normalize/ReadVariableOp_18^normalize_observations/normalize/truediv/ReadVariableOp:^normalize_observations/normalize/truediv_1/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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
i:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿö::::::::::2
EActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOpEActorDistributionNetwork/EncodingNetwork/dense/BiasAdd/ReadVariableOp2
DActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOpDActorDistributionNetwork/EncodingNetwork/dense/MatMul/ReadVariableOp2
GActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOpGActorDistributionNetwork/EncodingNetwork/dense_1/BiasAdd/ReadVariableOp2
FActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOpFActorDistributionNetwork/EncodingNetwork/dense_1/MatMul/ReadVariableOp2¨
RActorDistributionNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOpRActorDistributionNetwork/NormalProjectionNetwork/bias_layer/BiasAdd/ReadVariableOp2À
^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp^ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/BiasAdd/ReadVariableOp2¾
]ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp]ActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/MatMul/ReadVariableOp2b
/normalize_observations/normalize/ReadVariableOp/normalize_observations/normalize/ReadVariableOp2f
1normalize_observations/normalize/ReadVariableOp_11normalize_observations/normalize/ReadVariableOp_12r
7normalize_observations/normalize/truediv/ReadVariableOp7normalize_observations/normalize/truediv/ReadVariableOp2v
9normalize_observations/normalize/truediv_1/ReadVariableOp9normalize_observations/normalize/truediv_1/ReadVariableOp:N J
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#
_user_specified_name	step_type:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namereward:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
discount:UQ
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿö
%
_user_specified_nameobservation
Â
/
-__inference_function_with_signature_197655334û
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
GPU 2J 8 *'
f"R 
__inference_<lambda>_1976548852
PartitionedCall*
_input_shapes 

_
__inference_<lambda>_197654882
readvariableop_resource
identity	¢ReadVariableOpp
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

9
'__inference_get_initial_state_197655310

batch_size*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
ÉN

%__inference__traced_restore_197655839
file_prefix
assignvariableop_variableL
Hassignvariableop_1_actordistributionnetwork_encodingnetwork_dense_kernelJ
Fassignvariableop_2_actordistributionnetwork_encodingnetwork_dense_biasN
Jassignvariableop_3_actordistributionnetwork_encodingnetwork_dense_1_kernelL
Hassignvariableop_4_actordistributionnetwork_encodingnetwork_dense_1_biasW
Sassignvariableop_5_actordistributionnetwork_normalprojectionnetwork_bias_layer_biase
aassignvariableop_6_actordistributionnetwork_normalprojectionnetwork_means_projection_layer_kernelc
_assignvariableop_7_actordistributionnetwork_normalprojectionnetwork_means_projection_layer_bias
assignvariableop_8_count
assignvariableop_9_mean_sum
assignvariableop_10_var_sumC
?assignvariableop_11_valuenetwork_encodingnetwork_dense_2_kernelA
=assignvariableop_12_valuenetwork_encodingnetwork_dense_2_biasC
?assignvariableop_13_valuenetwork_encodingnetwork_dense_3_kernelA
=assignvariableop_14_valuenetwork_encodingnetwork_dense_3_bias3
/assignvariableop_15_valuenetwork_dense_4_kernel1
-assignvariableop_16_valuenetwork_dense_4_bias
identity_18¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_2¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9´
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*À
value¶B³B%train_step/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/0/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/1/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/2/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/3/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/4/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/5/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/6/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/7/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/8/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/9/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/10/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/11/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/12/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/13/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/14/.ATTRIBUTES/VARIABLE_VALUEB-model_variables/15/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names²
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*7
value.B,B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices
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

Identity
AssignVariableOpAssignVariableOpassignvariableop_variableIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Í
AssignVariableOp_1AssignVariableOpHassignvariableop_1_actordistributionnetwork_encodingnetwork_dense_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Ë
AssignVariableOp_2AssignVariableOpFassignvariableop_2_actordistributionnetwork_encodingnetwork_dense_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Ï
AssignVariableOp_3AssignVariableOpJassignvariableop_3_actordistributionnetwork_encodingnetwork_dense_1_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Í
AssignVariableOp_4AssignVariableOpHassignvariableop_4_actordistributionnetwork_encodingnetwork_dense_1_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Ø
AssignVariableOp_5AssignVariableOpSassignvariableop_5_actordistributionnetwork_normalprojectionnetwork_bias_layer_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6æ
AssignVariableOp_6AssignVariableOpaassignvariableop_6_actordistributionnetwork_normalprojectionnetwork_means_projection_layer_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7ä
AssignVariableOp_7AssignVariableOp_assignvariableop_7_actordistributionnetwork_normalprojectionnetwork_means_projection_layer_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8
AssignVariableOp_8AssignVariableOpassignvariableop_8_countIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9 
AssignVariableOp_9AssignVariableOpassignvariableop_9_mean_sumIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10£
AssignVariableOp_10AssignVariableOpassignvariableop_10_var_sumIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Ç
AssignVariableOp_11AssignVariableOp?assignvariableop_11_valuenetwork_encodingnetwork_dense_2_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Å
AssignVariableOp_12AssignVariableOp=assignvariableop_12_valuenetwork_encodingnetwork_dense_2_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Ç
AssignVariableOp_13AssignVariableOp?assignvariableop_13_valuenetwork_encodingnetwork_dense_3_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Å
AssignVariableOp_14AssignVariableOp=assignvariableop_14_valuenetwork_encodingnetwork_dense_3_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15·
AssignVariableOp_15AssignVariableOp/assignvariableop_15_valuenetwork_dense_4_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16µ
AssignVariableOp_16AssignVariableOp-assignvariableop_16_valuenetwork_dense_4_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_169
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpÔ
Identity_17Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_17Ç
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
²
9
'__inference_signature_wrapper_197655316

batch_size
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
GPU 2J 8 *6
f1R/
-__inference_function_with_signature_1976553112
PartitionedCall*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size"±L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ä
action¹
4

0/discount&
action_0/discount:0ÿÿÿÿÿÿÿÿÿ
?
0/observation.
action_0/observation:0ÿÿÿÿÿÿÿÿÿö
0
0/reward$
action_0/reward:0ÿÿÿÿÿÿÿÿÿ
6
0/step_type'
action_0/step_type:0ÿÿÿÿÿÿÿÿÿ:
action0
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict*e
get_initial_stateP
2

batch_size$
get_initial_state_batch_size:0 tensorflow/serving/predict*,
get_metadatatensorflow/serving/predict*Z
get_train_stepH*
int64!
StatefulPartitionedCall_1:0	 tensorflow/serving/predict:ûï
Ò

train_step
metadata
model_variables
_all_assets

signatures
«action
¬distribution
­get_initial_state
®get_metadata
¯get_train_step"
_generic_user_object
:	 (2Variable
 "
trackable_dict_wrapper

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
°action
±get_initial_state
²get_train_step
³get_metadata"
signature_map
I:G
öÈ25ActorDistributionNetwork/EncodingNetwork/dense/kernel
B:@È23ActorDistributionNetwork/EncodingNetwork/dense/bias
J:H	Èd27ActorDistributionNetwork/EncodingNetwork/dense_1/kernel
C:Ad25ActorDistributionNetwork/EncodingNetwork/dense_1/bias
N:L2@ActorDistributionNetwork/NormalProjectionNetwork/bias_layer/bias
`:^d2NActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/kernel
Z:X2LActorDistributionNetwork/NormalProjectionNetwork/means_projection_layer/bias
:ö2count
:ö2mean_sum
:ö2var_sum
>:<	öK2+ValueNetwork/EncodingNetwork/dense_2/kernel
7:5K2)ValueNetwork/EncodingNetwork/dense_2/bias
=:;K(2+ValueNetwork/EncodingNetwork/dense_3/kernel
7:5(2)ValueNetwork/EncodingNetwork/dense_3/bias
-:+(2ValueNetwork/dense_4/kernel
':%2ValueNetwork/dense_4/bias
1
ref
1"
trackable_tuple_wrapper
c
_actor_network
_observation_normalizer
_value_network"
_generic_user_object
ë
_encoder
_projection_networks
	variables
trainable_variables
regularization_losses
 	keras_api
´__call__
+µ&call_and_return_all_conditional_losses"²
_tf_keras_layer{"class_name": "ActorDistributionNetwork", "name": "ActorDistributionNetwork", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
^
!_flat_tensor_spec

"_count
#	_mean_sum
$_var_sum"
_generic_user_object
Õ
%_encoder
&_postprocessing_layers
'	variables
(trainable_variables
)regularization_losses
*	keras_api
¶__call__
+·&call_and_return_all_conditional_losses"
_tf_keras_layer{"class_name": "ValueNetwork", "name": "ValueNetwork", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
Í
+_postprocessing_layers
,	variables
-trainable_variables
.regularization_losses
/	keras_api
¸__call__
+¹&call_and_return_all_conditional_losses" 
_tf_keras_layer{"class_name": "EncodingNetwork", "name": "EncodingNetwork", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
é
0_means_projection_layer
	1_bias
2	variables
3trainable_variables
4regularization_losses
5	keras_api
º__call__
+»&call_and_return_all_conditional_losses"°
_tf_keras_layer{"class_name": "NormalProjectionNetwork", "name": "NormalProjectionNetwork", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
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
°
6layer_metrics
	variables
7metrics
trainable_variables
regularization_losses
8layer_regularization_losses
9non_trainable_variables

:layers
´__call__
+µ&call_and_return_all_conditional_losses
'µ"call_and_return_conditional_losses"
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
Í
;_postprocessing_layers
<	variables
=trainable_variables
>regularization_losses
?	keras_api
¼__call__
+½&call_and_return_all_conditional_losses" 
_tf_keras_layer{"class_name": "EncodingNetwork", "name": "EncodingNetwork", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}


kernel
bias
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
¾__call__
+¿&call_and_return_all_conditional_losses"ê
_tf_keras_layerÐ{"class_name": "Dense", "name": "dense_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.03, "maxval": 0.03, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 40}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 40]}}
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
°
Dlayer_metrics
'	variables
Emetrics
(trainable_variables
)regularization_losses
Flayer_regularization_losses
Gnon_trainable_variables

Hlayers
¶__call__
+·&call_and_return_all_conditional_losses
'·"call_and_return_conditional_losses"
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
°
Llayer_metrics
,	variables
Mmetrics
-trainable_variables
.regularization_losses
Nlayer_regularization_losses
Onon_trainable_variables

Players
¸__call__
+¹&call_and_return_all_conditional_losses
'¹"call_and_return_conditional_losses"
_generic_user_object
ë

kernel
bias
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
À__call__
+Á&call_and_return_all_conditional_losses"Ä
_tf_keras_layerª{"class_name": "Dense", "name": "means_projection_layer", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "means_projection_layer", "trainable": true, "dtype": "float32", "units": 28, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "VarianceScaling", "config": {"scale": 0.1, "mode": "fan_in", "distribution": "truncated_normal", "seed": null, "dtype": "float32"}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 100]}}
æ

bias
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Â__call__
+Ã&call_and_return_all_conditional_losses"Ë
_tf_keras_layer±{"class_name": "BiasLayer", "name": "bias_layer", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "bias_layer", "trainable": true, "dtype": "float32", "bias_initializer": {"class_name": "Constant", "config": {"value": -0.8697231582271624}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 28]}}
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
°
Ylayer_metrics
2	variables
Zmetrics
3trainable_variables
4regularization_losses
[layer_regularization_losses
\non_trainable_variables

]layers
º__call__
+»&call_and_return_all_conditional_losses
'»"call_and_return_conditional_losses"
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
°
alayer_metrics
<	variables
bmetrics
=trainable_variables
>regularization_losses
clayer_regularization_losses
dnon_trainable_variables

elayers
¼__call__
+½&call_and_return_all_conditional_losses
'½"call_and_return_conditional_losses"
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
°
flayer_metrics
@	variables
gmetrics
Atrainable_variables
Bregularization_losses
hlayer_regularization_losses
inon_trainable_variables

jlayers
¾__call__
+¿&call_and_return_all_conditional_losses
'¿"call_and_return_conditional_losses"
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
ä
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
Ä__call__
+Å&call_and_return_all_conditional_losses"Ó
_tf_keras_layer¹{"class_name": "Flatten", "name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
í

kernel
bias
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
Æ__call__
+Ç&call_and_return_all_conditional_losses"Æ
_tf_keras_layer¬{"class_name": "Dense", "name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 246}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 246]}}
ñ

kernel
	bias
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
È__call__
+É&call_and_return_all_conditional_losses"Ê
_tf_keras_layer°{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 200}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 200]}}
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
°
wlayer_metrics
Q	variables
xmetrics
Rtrainable_variables
Sregularization_losses
ylayer_regularization_losses
znon_trainable_variables

{layers
À__call__
+Á&call_and_return_all_conditional_losses
'Á"call_and_return_conditional_losses"
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
±
|layer_metrics
U	variables
}metrics
Vtrainable_variables
Wregularization_losses
~layer_regularization_losses
non_trainable_variables
layers
Â__call__
+Ã&call_and_return_all_conditional_losses
'Ã"call_and_return_conditional_losses"
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
ì
	variables
trainable_variables
regularization_losses
	keras_api
Ê__call__
+Ë&call_and_return_all_conditional_losses"×
_tf_keras_layer½{"class_name": "Flatten", "name": "flatten_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}


kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
Ì__call__
+Í&call_and_return_all_conditional_losses"Þ
_tf_keras_layerÄ{"class_name": "Dense", "name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 75, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null, "dtype": "float32"}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 246}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 246]}}


kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
Î__call__
+Ï&call_and_return_all_conditional_losses"Ü
_tf_keras_layerÂ{"class_name": "Dense", "name": "dense_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 40, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null, "dtype": "float32"}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 75}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 75]}}
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
µ
layer_metrics
k	variables
metrics
ltrainable_variables
mregularization_losses
 layer_regularization_losses
non_trainable_variables
layers
Ä__call__
+Å&call_and_return_all_conditional_losses
'Å"call_and_return_conditional_losses"
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
µ
layer_metrics
o	variables
metrics
ptrainable_variables
qregularization_losses
 layer_regularization_losses
non_trainable_variables
layers
Æ__call__
+Ç&call_and_return_all_conditional_losses
'Ç"call_and_return_conditional_losses"
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
µ
layer_metrics
s	variables
metrics
ttrainable_variables
uregularization_losses
 layer_regularization_losses
non_trainable_variables
layers
È__call__
+É&call_and_return_all_conditional_losses
'É"call_and_return_conditional_losses"
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
¸
layer_metrics
	variables
metrics
trainable_variables
regularization_losses
 layer_regularization_losses
non_trainable_variables
 layers
Ê__call__
+Ë&call_and_return_all_conditional_losses
'Ë"call_and_return_conditional_losses"
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
¸
¡layer_metrics
	variables
¢metrics
trainable_variables
regularization_losses
 £layer_regularization_losses
¤non_trainable_variables
¥layers
Ì__call__
+Í&call_and_return_all_conditional_losses
'Í"call_and_return_conditional_losses"
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
¸
¦layer_metrics
	variables
§metrics
trainable_variables
regularization_losses
 ¨layer_regularization_losses
©non_trainable_variables
ªlayers
Î__call__
+Ï&call_and_return_all_conditional_losses
'Ï"call_and_return_conditional_losses"
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
2
+__inference_polymorphic_action_fn_197655463
+__inference_polymorphic_action_fn_197655588±
ª²¦
FullArgSpec(
args 
j	time_step
jpolicy_state
varargs
 
varkw
 
defaults¢
¢ 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ê2ç
1__inference_polymorphic_distribution_fn_197655696±
ª²¦
FullArgSpec(
args 
j	time_step
jpolicy_state
varargs
 
varkw
 
defaults¢
¢ 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Õ2Ò
'__inference_get_initial_state_197655699¦
²
FullArgSpec!
args
jself
j
batch_size
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
´B±
__inference_<lambda>_197654885"
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
´B±
__inference_<lambda>_197654882"
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
õBò
'__inference_signature_wrapper_197655304
0/discount0/observation0/reward0/step_type"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÑBÎ
'__inference_signature_wrapper_197655316
batch_size"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÃBÀ
'__inference_signature_wrapper_197655331"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÃBÀ
'__inference_signature_wrapper_197655338"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ê2çä
Û²×
FullArgSpecU
argsMJ
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
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ê2çä
Û²×
FullArgSpecU
argsMJ
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
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
æ2ãà
×²Ó
FullArgSpecL
argsDA
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults

 
¢ 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
æ2ãà
×²Ó
FullArgSpecL
argsDA
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults

 
¢ 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
æ2ãà
×²Ó
FullArgSpecL
argsDA
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults

 
¢ 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
æ2ãà
×²Ó
FullArgSpecL
argsDA
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults

 
¢ 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ô2ÑÎ
Å²Á
FullArgSpec?
args74
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
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ô2ÑÎ
Å²Á
FullArgSpec?
args74
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
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
æ2ãà
×²Ó
FullArgSpecL
argsDA
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults

 
¢ 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
æ2ãà
×²Ó
FullArgSpecL
argsDA
jself
jobservation
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults

 
¢ 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 =
__inference_<lambda>_197654882¢

¢ 
ª " 	6
__inference_<lambda>_197654885¢

¢ 
ª "ª T
'__inference_get_initial_state_197655699)"¢
¢


batch_size 
ª "¢ ö
+__inference_polymorphic_action_fn_197655463Æ
	
ß¢Û
Ó¢Ï
Ç²Ã
TimeStep,
	step_type
	step_typeÿÿÿÿÿÿÿÿÿ&
reward
rewardÿÿÿÿÿÿÿÿÿ*
discount
discountÿÿÿÿÿÿÿÿÿ5
observation&#
observationÿÿÿÿÿÿÿÿÿö
¢ 
ª "V²S

PolicyStep*
action 
actionÿÿÿÿÿÿÿÿÿ
state¢ 
info¢ 
+__inference_polymorphic_action_fn_197655588î
	
¢
û¢÷
ï²ë
TimeStep6
	step_type)&
time_step/step_typeÿÿÿÿÿÿÿÿÿ0
reward&#
time_step/rewardÿÿÿÿÿÿÿÿÿ4
discount(%
time_step/discountÿÿÿÿÿÿÿÿÿ?
observation0-
time_step/observationÿÿÿÿÿÿÿÿÿö
¢ 
ª "V²S

PolicyStep*
action 
actionÿÿÿÿÿÿÿÿÿ
state¢ 
info¢ ü
1__inference_polymorphic_distribution_fn_197655696Æ
	
ß¢Û
Ó¢Ï
Ç²Ã
TimeStep,
	step_type
	step_typeÿÿÿÿÿÿÿÿÿ&
reward
rewardÿÿÿÿÿÿÿÿÿ*
discount
discountÿÿÿÿÿÿÿÿÿ5
observation&#
observationÿÿÿÿÿÿÿÿÿö
¢ 
ª "Õ²Ñ

PolicyStep§
actionðáÃ¢~
`
C¢@
"j tf_agents.policies.greedy_policy
jDeterministicWithLogProb
.ª+
)
loc"
Identityÿÿÿÿÿÿÿÿÿ
ª _TFPTypeSpec
state¢ 
info¢ Å
'__inference_signature_wrapper_197655304
	
Ù¢Õ
¢ 
ÍªÉ
.

0/discount 

0/discountÿÿÿÿÿÿÿÿÿ
9
0/observation(%
0/observationÿÿÿÿÿÿÿÿÿö
*
0/reward
0/rewardÿÿÿÿÿÿÿÿÿ
0
0/step_type!
0/step_typeÿÿÿÿÿÿÿÿÿ"/ª,
*
action 
actionÿÿÿÿÿÿÿÿÿb
'__inference_signature_wrapper_19765531670¢-
¢ 
&ª#
!

batch_size

batch_size "ª [
'__inference_signature_wrapper_1976553310¢

¢ 
ª "ª

int64
int64 	?
'__inference_signature_wrapper_197655338¢

¢ 
ª "ª 