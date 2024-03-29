��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
AvgPool

value"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype:
2
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resource�
�
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%��8"&
exponential_avg_factorfloat%  �?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
_
Pad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.15.02v2.15.0-rc1-8-g6887368d6d48��
v
countVarHandleOp*
_output_shapes
: *

debug_namecount/*
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
v
totalVarHandleOp*
_output_shapes
: *

debug_nametotal/*
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
|
count_1VarHandleOp*
_output_shapes
: *

debug_name
count_1/*
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
|
total_1VarHandleOp*
_output_shapes
: *

debug_name
total_1/*
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
�
RMSprop/velocity/fc/biasVarHandleOp*
_output_shapes
: *)

debug_nameRMSprop/velocity/fc/bias/*
dtype0*
shape:*)
shared_nameRMSprop/velocity/fc/bias
�
,RMSprop/velocity/fc/bias/Read/ReadVariableOpReadVariableOpRMSprop/velocity/fc/bias*
_output_shapes
:*
dtype0
�
RMSprop/velocity/fc/kernelVarHandleOp*
_output_shapes
: *+

debug_nameRMSprop/velocity/fc/kernel/*
dtype0*
shape:	�*+
shared_nameRMSprop/velocity/fc/kernel
�
.RMSprop/velocity/fc/kernel/Read/ReadVariableOpReadVariableOpRMSprop/velocity/fc/kernel*
_output_shapes
:	�*
dtype0
�
RMSprop/velocity/bn3/betaVarHandleOp*
_output_shapes
: **

debug_nameRMSprop/velocity/bn3/beta/*
dtype0*
shape:�**
shared_nameRMSprop/velocity/bn3/beta
�
-RMSprop/velocity/bn3/beta/Read/ReadVariableOpReadVariableOpRMSprop/velocity/bn3/beta*
_output_shapes	
:�*
dtype0
�
RMSprop/velocity/bn3/gammaVarHandleOp*
_output_shapes
: *+

debug_nameRMSprop/velocity/bn3/gamma/*
dtype0*
shape:�*+
shared_nameRMSprop/velocity/bn3/gamma
�
.RMSprop/velocity/bn3/gamma/Read/ReadVariableOpReadVariableOpRMSprop/velocity/bn3/gamma*
_output_shapes	
:�*
dtype0
�
RMSprop/velocity/conv3/biasVarHandleOp*
_output_shapes
: *,

debug_nameRMSprop/velocity/conv3/bias/*
dtype0*
shape:�*,
shared_nameRMSprop/velocity/conv3/bias
�
/RMSprop/velocity/conv3/bias/Read/ReadVariableOpReadVariableOpRMSprop/velocity/conv3/bias*
_output_shapes	
:�*
dtype0
�
RMSprop/velocity/conv3/kernelVarHandleOp*
_output_shapes
: *.

debug_name RMSprop/velocity/conv3/kernel/*
dtype0*
shape:��*.
shared_nameRMSprop/velocity/conv3/kernel
�
1RMSprop/velocity/conv3/kernel/Read/ReadVariableOpReadVariableOpRMSprop/velocity/conv3/kernel*(
_output_shapes
:��*
dtype0
�
RMSprop/velocity/bn2/betaVarHandleOp*
_output_shapes
: **

debug_nameRMSprop/velocity/bn2/beta/*
dtype0*
shape:�**
shared_nameRMSprop/velocity/bn2/beta
�
-RMSprop/velocity/bn2/beta/Read/ReadVariableOpReadVariableOpRMSprop/velocity/bn2/beta*
_output_shapes	
:�*
dtype0
�
RMSprop/velocity/bn2/gammaVarHandleOp*
_output_shapes
: *+

debug_nameRMSprop/velocity/bn2/gamma/*
dtype0*
shape:�*+
shared_nameRMSprop/velocity/bn2/gamma
�
.RMSprop/velocity/bn2/gamma/Read/ReadVariableOpReadVariableOpRMSprop/velocity/bn2/gamma*
_output_shapes	
:�*
dtype0
�
RMSprop/velocity/conv2/biasVarHandleOp*
_output_shapes
: *,

debug_nameRMSprop/velocity/conv2/bias/*
dtype0*
shape:�*,
shared_nameRMSprop/velocity/conv2/bias
�
/RMSprop/velocity/conv2/bias/Read/ReadVariableOpReadVariableOpRMSprop/velocity/conv2/bias*
_output_shapes	
:�*
dtype0
�
RMSprop/velocity/conv2/kernelVarHandleOp*
_output_shapes
: *.

debug_name RMSprop/velocity/conv2/kernel/*
dtype0*
shape:@�*.
shared_nameRMSprop/velocity/conv2/kernel
�
1RMSprop/velocity/conv2/kernel/Read/ReadVariableOpReadVariableOpRMSprop/velocity/conv2/kernel*'
_output_shapes
:@�*
dtype0
�
RMSprop/velocity/bn1/betaVarHandleOp*
_output_shapes
: **

debug_nameRMSprop/velocity/bn1/beta/*
dtype0*
shape:@**
shared_nameRMSprop/velocity/bn1/beta
�
-RMSprop/velocity/bn1/beta/Read/ReadVariableOpReadVariableOpRMSprop/velocity/bn1/beta*
_output_shapes
:@*
dtype0
�
RMSprop/velocity/bn1/gammaVarHandleOp*
_output_shapes
: *+

debug_nameRMSprop/velocity/bn1/gamma/*
dtype0*
shape:@*+
shared_nameRMSprop/velocity/bn1/gamma
�
.RMSprop/velocity/bn1/gamma/Read/ReadVariableOpReadVariableOpRMSprop/velocity/bn1/gamma*
_output_shapes
:@*
dtype0
�
RMSprop/velocity/conv1/biasVarHandleOp*
_output_shapes
: *,

debug_nameRMSprop/velocity/conv1/bias/*
dtype0*
shape:@*,
shared_nameRMSprop/velocity/conv1/bias
�
/RMSprop/velocity/conv1/bias/Read/ReadVariableOpReadVariableOpRMSprop/velocity/conv1/bias*
_output_shapes
:@*
dtype0
�
RMSprop/velocity/conv1/kernelVarHandleOp*
_output_shapes
: *.

debug_name RMSprop/velocity/conv1/kernel/*
dtype0*
shape: @*.
shared_nameRMSprop/velocity/conv1/kernel
�
1RMSprop/velocity/conv1/kernel/Read/ReadVariableOpReadVariableOpRMSprop/velocity/conv1/kernel*&
_output_shapes
: @*
dtype0
�
RMSprop/velocity/bn0/betaVarHandleOp*
_output_shapes
: **

debug_nameRMSprop/velocity/bn0/beta/*
dtype0*
shape: **
shared_nameRMSprop/velocity/bn0/beta
�
-RMSprop/velocity/bn0/beta/Read/ReadVariableOpReadVariableOpRMSprop/velocity/bn0/beta*
_output_shapes
: *
dtype0
�
RMSprop/velocity/bn0/gammaVarHandleOp*
_output_shapes
: *+

debug_nameRMSprop/velocity/bn0/gamma/*
dtype0*
shape: *+
shared_nameRMSprop/velocity/bn0/gamma
�
.RMSprop/velocity/bn0/gamma/Read/ReadVariableOpReadVariableOpRMSprop/velocity/bn0/gamma*
_output_shapes
: *
dtype0
�
RMSprop/velocity/conv0/biasVarHandleOp*
_output_shapes
: *,

debug_nameRMSprop/velocity/conv0/bias/*
dtype0*
shape: *,
shared_nameRMSprop/velocity/conv0/bias
�
/RMSprop/velocity/conv0/bias/Read/ReadVariableOpReadVariableOpRMSprop/velocity/conv0/bias*
_output_shapes
: *
dtype0
�
RMSprop/velocity/conv0/kernelVarHandleOp*
_output_shapes
: *.

debug_name RMSprop/velocity/conv0/kernel/*
dtype0*
shape: *.
shared_nameRMSprop/velocity/conv0/kernel
�
1RMSprop/velocity/conv0/kernel/Read/ReadVariableOpReadVariableOpRMSprop/velocity/conv0/kernel*&
_output_shapes
: *
dtype0
�
learning_rateVarHandleOp*
_output_shapes
: *

debug_namelearning_rate/*
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
�
	iterationVarHandleOp*
_output_shapes
: *

debug_name
iteration/*
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
�
fc/biasVarHandleOp*
_output_shapes
: *

debug_name
fc/bias/*
dtype0*
shape:*
shared_name	fc/bias
_
fc/bias/Read/ReadVariableOpReadVariableOpfc/bias*
_output_shapes
:*
dtype0
�
	fc/kernelVarHandleOp*
_output_shapes
: *

debug_name
fc/kernel/*
dtype0*
shape:	�*
shared_name	fc/kernel
h
fc/kernel/Read/ReadVariableOpReadVariableOp	fc/kernel*
_output_shapes
:	�*
dtype0
�
bn3/moving_varianceVarHandleOp*
_output_shapes
: *$

debug_namebn3/moving_variance/*
dtype0*
shape:�*$
shared_namebn3/moving_variance
x
'bn3/moving_variance/Read/ReadVariableOpReadVariableOpbn3/moving_variance*
_output_shapes	
:�*
dtype0
�
bn3/moving_meanVarHandleOp*
_output_shapes
: * 

debug_namebn3/moving_mean/*
dtype0*
shape:�* 
shared_namebn3/moving_mean
p
#bn3/moving_mean/Read/ReadVariableOpReadVariableOpbn3/moving_mean*
_output_shapes	
:�*
dtype0
�
bn3/betaVarHandleOp*
_output_shapes
: *

debug_name	bn3/beta/*
dtype0*
shape:�*
shared_name
bn3/beta
b
bn3/beta/Read/ReadVariableOpReadVariableOpbn3/beta*
_output_shapes	
:�*
dtype0
�
	bn3/gammaVarHandleOp*
_output_shapes
: *

debug_name
bn3/gamma/*
dtype0*
shape:�*
shared_name	bn3/gamma
d
bn3/gamma/Read/ReadVariableOpReadVariableOp	bn3/gamma*
_output_shapes	
:�*
dtype0
�

conv3/biasVarHandleOp*
_output_shapes
: *

debug_nameconv3/bias/*
dtype0*
shape:�*
shared_name
conv3/bias
f
conv3/bias/Read/ReadVariableOpReadVariableOp
conv3/bias*
_output_shapes	
:�*
dtype0
�
conv3/kernelVarHandleOp*
_output_shapes
: *

debug_nameconv3/kernel/*
dtype0*
shape:��*
shared_nameconv3/kernel
w
 conv3/kernel/Read/ReadVariableOpReadVariableOpconv3/kernel*(
_output_shapes
:��*
dtype0
�
bn2/moving_varianceVarHandleOp*
_output_shapes
: *$

debug_namebn2/moving_variance/*
dtype0*
shape:�*$
shared_namebn2/moving_variance
x
'bn2/moving_variance/Read/ReadVariableOpReadVariableOpbn2/moving_variance*
_output_shapes	
:�*
dtype0
�
bn2/moving_meanVarHandleOp*
_output_shapes
: * 

debug_namebn2/moving_mean/*
dtype0*
shape:�* 
shared_namebn2/moving_mean
p
#bn2/moving_mean/Read/ReadVariableOpReadVariableOpbn2/moving_mean*
_output_shapes	
:�*
dtype0
�
bn2/betaVarHandleOp*
_output_shapes
: *

debug_name	bn2/beta/*
dtype0*
shape:�*
shared_name
bn2/beta
b
bn2/beta/Read/ReadVariableOpReadVariableOpbn2/beta*
_output_shapes	
:�*
dtype0
�
	bn2/gammaVarHandleOp*
_output_shapes
: *

debug_name
bn2/gamma/*
dtype0*
shape:�*
shared_name	bn2/gamma
d
bn2/gamma/Read/ReadVariableOpReadVariableOp	bn2/gamma*
_output_shapes	
:�*
dtype0
�

conv2/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2/bias/*
dtype0*
shape:�*
shared_name
conv2/bias
f
conv2/bias/Read/ReadVariableOpReadVariableOp
conv2/bias*
_output_shapes	
:�*
dtype0
�
conv2/kernelVarHandleOp*
_output_shapes
: *

debug_nameconv2/kernel/*
dtype0*
shape:@�*
shared_nameconv2/kernel
v
 conv2/kernel/Read/ReadVariableOpReadVariableOpconv2/kernel*'
_output_shapes
:@�*
dtype0
�
bn1/moving_varianceVarHandleOp*
_output_shapes
: *$

debug_namebn1/moving_variance/*
dtype0*
shape:@*$
shared_namebn1/moving_variance
w
'bn1/moving_variance/Read/ReadVariableOpReadVariableOpbn1/moving_variance*
_output_shapes
:@*
dtype0
�
bn1/moving_meanVarHandleOp*
_output_shapes
: * 

debug_namebn1/moving_mean/*
dtype0*
shape:@* 
shared_namebn1/moving_mean
o
#bn1/moving_mean/Read/ReadVariableOpReadVariableOpbn1/moving_mean*
_output_shapes
:@*
dtype0
�
bn1/betaVarHandleOp*
_output_shapes
: *

debug_name	bn1/beta/*
dtype0*
shape:@*
shared_name
bn1/beta
a
bn1/beta/Read/ReadVariableOpReadVariableOpbn1/beta*
_output_shapes
:@*
dtype0
�
	bn1/gammaVarHandleOp*
_output_shapes
: *

debug_name
bn1/gamma/*
dtype0*
shape:@*
shared_name	bn1/gamma
c
bn1/gamma/Read/ReadVariableOpReadVariableOp	bn1/gamma*
_output_shapes
:@*
dtype0
�

conv1/biasVarHandleOp*
_output_shapes
: *

debug_nameconv1/bias/*
dtype0*
shape:@*
shared_name
conv1/bias
e
conv1/bias/Read/ReadVariableOpReadVariableOp
conv1/bias*
_output_shapes
:@*
dtype0
�
conv1/kernelVarHandleOp*
_output_shapes
: *

debug_nameconv1/kernel/*
dtype0*
shape: @*
shared_nameconv1/kernel
u
 conv1/kernel/Read/ReadVariableOpReadVariableOpconv1/kernel*&
_output_shapes
: @*
dtype0
�
bn0/moving_varianceVarHandleOp*
_output_shapes
: *$

debug_namebn0/moving_variance/*
dtype0*
shape: *$
shared_namebn0/moving_variance
w
'bn0/moving_variance/Read/ReadVariableOpReadVariableOpbn0/moving_variance*
_output_shapes
: *
dtype0
�
bn0/moving_meanVarHandleOp*
_output_shapes
: * 

debug_namebn0/moving_mean/*
dtype0*
shape: * 
shared_namebn0/moving_mean
o
#bn0/moving_mean/Read/ReadVariableOpReadVariableOpbn0/moving_mean*
_output_shapes
: *
dtype0
�
bn0/betaVarHandleOp*
_output_shapes
: *

debug_name	bn0/beta/*
dtype0*
shape: *
shared_name
bn0/beta
a
bn0/beta/Read/ReadVariableOpReadVariableOpbn0/beta*
_output_shapes
: *
dtype0
�
	bn0/gammaVarHandleOp*
_output_shapes
: *

debug_name
bn0/gamma/*
dtype0*
shape: *
shared_name	bn0/gamma
c
bn0/gamma/Read/ReadVariableOpReadVariableOp	bn0/gamma*
_output_shapes
: *
dtype0
�

conv0/biasVarHandleOp*
_output_shapes
: *

debug_nameconv0/bias/*
dtype0*
shape: *
shared_name
conv0/bias
e
conv0/bias/Read/ReadVariableOpReadVariableOp
conv0/bias*
_output_shapes
: *
dtype0
�
conv0/kernelVarHandleOp*
_output_shapes
: *

debug_nameconv0/kernel/*
dtype0*
shape: *
shared_nameconv0/kernel
u
 conv0/kernel/Read/ReadVariableOpReadVariableOpconv0/kernel*&
_output_shapes
: *
dtype0
�
serving_default_input_1Placeholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv0/kernel
conv0/bias	bn0/gammabn0/betabn0/moving_meanbn0/moving_varianceconv1/kernel
conv1/bias	bn1/gammabn1/betabn1/moving_meanbn1/moving_varianceconv2/kernel
conv2/bias	bn2/gammabn2/betabn2/moving_meanbn2/moving_varianceconv3/kernel
conv3/bias	bn3/gammabn3/betabn3/moving_meanbn3/moving_variance	fc/kernelfc/bias*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_36948

NoOpNoOp
��
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� Bږ
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer-8

layer-9
layer-10
layer_with_weights-4
layer-11
layer_with_weights-5
layer-12
layer-13
layer-14
layer_with_weights-6
layer-15
layer_with_weights-7
layer-16
layer-17
layer-18
layer-19
layer-20
layer_with_weights-8
layer-21
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
�
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses* 
�
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses

,kernel
-bias
 ._jit_compiled_convolution_op*
�
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses
5axis
	6gamma
7beta
8moving_mean
9moving_variance*
�
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses* 
�
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses* 
�
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses

Lkernel
Mbias
 N_jit_compiled_convolution_op*
�
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses
Uaxis
	Vgamma
Wbeta
Xmoving_mean
Ymoving_variance*
�
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses* 
�
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses* 
�
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses* 
�
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses

rkernel
sbias
 t_jit_compiled_convolution_op*
�
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
y__call__
*z&call_and_return_all_conditional_losses
{axis
	|gamma
}beta
~moving_mean
moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
,0
-1
62
73
84
95
L6
M7
V8
W9
X10
Y11
r12
s13
|14
}15
~16
17
�18
�19
�20
�21
�22
�23
�24
�25*
�
,0
-1
62
73
L4
M5
V6
W7
r8
s9
|10
}11
�12
�13
�14
�15
�16
�17*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
�
�
_variables
�_iterations
�_learning_rate
�_index_dict
�_velocities
�
_momentums
�_average_gradients
�_update_step_xla*

�serving_default* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

,0
-1*

,0
-1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
\V
VARIABLE_VALUEconv0/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
conv0/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
60
71
82
93*

60
71*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
XR
VARIABLE_VALUE	bn0/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEbn0/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEbn0/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUEbn0/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

L0
M1*

L0
M1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
\V
VARIABLE_VALUEconv1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
conv1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
V0
W1
X2
Y3*

V0
W1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
XR
VARIABLE_VALUE	bn1/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEbn1/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEbn1/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUEbn1/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

r0
s1*

r0
s1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
\V
VARIABLE_VALUEconv2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
conv2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
|0
}1
~2
3*

|0
}1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
u	variables
vtrainable_variables
wregularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
XR
VARIABLE_VALUE	bn2/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEbn2/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEbn2/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUEbn2/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
\V
VARIABLE_VALUEconv3/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
conv3/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
�0
�1
�2
�3*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
XR
VARIABLE_VALUE	bn3/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEbn3/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEbn3/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUEbn3/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
YS
VARIABLE_VALUE	fc/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEfc/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
>
80
91
X2
Y3
~4
5
�6
�7*
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21*

�0
�1*
* 
* 
* 
* 
* 
* 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

80
91*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

X0
Y1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

~0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
hb
VARIABLE_VALUERMSprop/velocity/conv0/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUERMSprop/velocity/conv0/bias1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUERMSprop/velocity/bn0/gamma1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUERMSprop/velocity/bn0/beta1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUERMSprop/velocity/conv1/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUERMSprop/velocity/conv1/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUERMSprop/velocity/bn1/gamma1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUERMSprop/velocity/bn1/beta1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUERMSprop/velocity/conv2/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUERMSprop/velocity/conv2/bias2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUERMSprop/velocity/bn2/gamma2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUERMSprop/velocity/bn2/beta2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUERMSprop/velocity/conv3/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUERMSprop/velocity/conv3/bias2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUERMSprop/velocity/bn3/gamma2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUERMSprop/velocity/bn3/beta2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUERMSprop/velocity/fc/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUERMSprop/velocity/fc/bias2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv0/kernel
conv0/bias	bn0/gammabn0/betabn0/moving_meanbn0/moving_varianceconv1/kernel
conv1/bias	bn1/gammabn1/betabn1/moving_meanbn1/moving_varianceconv2/kernel
conv2/bias	bn2/gammabn2/betabn2/moving_meanbn2/moving_varianceconv3/kernel
conv3/bias	bn3/gammabn3/betabn3/moving_meanbn3/moving_variance	fc/kernelfc/bias	iterationlearning_rateRMSprop/velocity/conv0/kernelRMSprop/velocity/conv0/biasRMSprop/velocity/bn0/gammaRMSprop/velocity/bn0/betaRMSprop/velocity/conv1/kernelRMSprop/velocity/conv1/biasRMSprop/velocity/bn1/gammaRMSprop/velocity/bn1/betaRMSprop/velocity/conv2/kernelRMSprop/velocity/conv2/biasRMSprop/velocity/bn2/gammaRMSprop/velocity/bn2/betaRMSprop/velocity/conv3/kernelRMSprop/velocity/conv3/biasRMSprop/velocity/bn3/gammaRMSprop/velocity/bn3/betaRMSprop/velocity/fc/kernelRMSprop/velocity/fc/biastotal_1count_1totalcountConst*?
Tin8
624*
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
GPU 2J 8� *'
f"R 
__inference__traced_save_37753
�	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv0/kernel
conv0/bias	bn0/gammabn0/betabn0/moving_meanbn0/moving_varianceconv1/kernel
conv1/bias	bn1/gammabn1/betabn1/moving_meanbn1/moving_varianceconv2/kernel
conv2/bias	bn2/gammabn2/betabn2/moving_meanbn2/moving_varianceconv3/kernel
conv3/bias	bn3/gammabn3/betabn3/moving_meanbn3/moving_variance	fc/kernelfc/bias	iterationlearning_rateRMSprop/velocity/conv0/kernelRMSprop/velocity/conv0/biasRMSprop/velocity/bn0/gammaRMSprop/velocity/bn0/betaRMSprop/velocity/conv1/kernelRMSprop/velocity/conv1/biasRMSprop/velocity/bn1/gammaRMSprop/velocity/bn1/betaRMSprop/velocity/conv2/kernelRMSprop/velocity/conv2/biasRMSprop/velocity/bn2/gammaRMSprop/velocity/bn2/betaRMSprop/velocity/conv3/kernelRMSprop/velocity/conv3/biasRMSprop/velocity/bn3/gammaRMSprop/velocity/bn3/betaRMSprop/velocity/fc/kernelRMSprop/velocity/fc/biastotal_1count_1totalcount*>
Tin7
523*
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
GPU 2J 8� **
f%R#
!__inference__traced_restore_37912��
�
F
*__inference_activation_layer_call_fn_37045

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_36478j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:����������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:����������� :Y U
1
_output_shapes
:����������� 
 
_user_specified_nameinputs
�
�
3__inference_BrainDetectionModel_layer_call_fn_36751
input_1!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@�

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:	�

unknown_16:	�&

unknown_17:��

unknown_18:	�

unknown_19:	�

unknown_20:	�

unknown_21:	�

unknown_22:	�

unknown_23:	�

unknown_24:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_36612o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name36747:%!

_user_specified_name36745:%!

_user_specified_name36743:%!

_user_specified_name36741:%!

_user_specified_name36739:%!

_user_specified_name36737:%!

_user_specified_name36735:%!

_user_specified_name36733:%!

_user_specified_name36731:%!

_user_specified_name36729:%!

_user_specified_name36727:%!

_user_specified_name36725:%!

_user_specified_name36723:%!

_user_specified_name36721:%!

_user_specified_name36719:%!

_user_specified_name36717:%
!

_user_specified_name36715:%	!

_user_specified_name36713:%!

_user_specified_name36711:%!

_user_specified_name36709:%!

_user_specified_name36707:%!

_user_specified_name36705:%!

_user_specified_name36703:%!

_user_specified_name36701:%!

_user_specified_name36699:%!

_user_specified_name36697:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�
a
E__inference_activation_layer_call_and_return_conditional_losses_36478

inputs
identityP
ReluReluinputs*
T0*1
_output_shapes
:����������� d
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:����������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:����������� :Y U
1
_output_shapes
:����������� 
 
_user_specified_nameinputs
�
�
>__inference_bn0_layer_call_and_return_conditional_losses_36184

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�
>__inference_bn1_layer_call_and_return_conditional_losses_36238

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%���=�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
>__inference_bn0_layer_call_and_return_conditional_losses_37040

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�

�
@__inference_conv2_layer_call_and_return_conditional_losses_36522

inputs9
conv2d_readvariableop_resource:@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
"__inference_fc_layer_call_fn_37420

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_fc_layer_call_and_return_conditional_losses_36605o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name37416:%!

_user_specified_name37414:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�X
�
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_36612
input_1%
conv0_36460: 
conv0_36462: 
	bn0_36465: 
	bn0_36467: 
	bn0_36469: 
	bn0_36471: %
conv1_36491: @
conv1_36493:@
	bn1_36496:@
	bn1_36498:@
	bn1_36500:@
	bn1_36502:@&
conv2_36523:@�
conv2_36525:	�
	bn2_36528:	�
	bn2_36530:	�
	bn2_36532:	�
	bn2_36534:	�'
conv3_36554:��
conv3_36556:	�
	bn3_36559:	�
	bn3_36561:	�
	bn3_36563:	�
	bn3_36565:	�
fc_36606:	�
fc_36608:
identity��bn0/StatefulPartitionedCall�bn1/StatefulPartitionedCall�bn2/StatefulPartitionedCall�bn3/StatefulPartitionedCall�conv0/StatefulPartitionedCall�conv1/StatefulPartitionedCall�conv2/StatefulPartitionedCall�conv3/StatefulPartitionedCall�dropout/StatefulPartitionedCall�fc/StatefulPartitionedCall�
zero_padding2d/PartitionedCallPartitionedCallinput_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_zero_padding2d_layer_call_and_return_conditional_losses_36143�
conv0/StatefulPartitionedCallStatefulPartitionedCall'zero_padding2d/PartitionedCall:output:0conv0_36460conv0_36462*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_conv0_layer_call_and_return_conditional_losses_36459�
bn0/StatefulPartitionedCallStatefulPartitionedCall&conv0/StatefulPartitionedCall:output:0	bn0_36465	bn0_36467	bn0_36469	bn0_36471*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_bn0_layer_call_and_return_conditional_losses_36166�
activation/PartitionedCallPartitionedCall$bn0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_36478�
max_pool0/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������;; * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_max_pool0_layer_call_and_return_conditional_losses_36215�
conv1/StatefulPartitionedCallStatefulPartitionedCall"max_pool0/PartitionedCall:output:0conv1_36491conv1_36493*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������99@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_conv1_layer_call_and_return_conditional_losses_36490�
bn1/StatefulPartitionedCallStatefulPartitionedCall&conv1/StatefulPartitionedCall:output:0	bn1_36496	bn1_36498	bn1_36500	bn1_36502*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������99@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_bn1_layer_call_and_return_conditional_losses_36238�
activation_1/PartitionedCallPartitionedCall$bn1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������99@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_36509�
max_pool1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_max_pool1_layer_call_and_return_conditional_losses_36287�
Avg_pool0/PartitionedCallPartitionedCall"max_pool1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_Avg_pool0_layer_call_and_return_conditional_losses_36297�
conv2/StatefulPartitionedCallStatefulPartitionedCall"Avg_pool0/PartitionedCall:output:0conv2_36523conv2_36525*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_conv2_layer_call_and_return_conditional_losses_36522�
bn2/StatefulPartitionedCallStatefulPartitionedCall&conv2/StatefulPartitionedCall:output:0	bn2_36528	bn2_36530	bn2_36532	bn2_36534*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_bn2_layer_call_and_return_conditional_losses_36320�
activation_2/PartitionedCallPartitionedCall$bn2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_activation_2_layer_call_and_return_conditional_losses_36541�
Avg_pool1/PartitionedCallPartitionedCall%activation_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_Avg_pool1_layer_call_and_return_conditional_losses_36369�
conv3/StatefulPartitionedCallStatefulPartitionedCall"Avg_pool1/PartitionedCall:output:0conv3_36554conv3_36556*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_conv3_layer_call_and_return_conditional_losses_36553�
bn3/StatefulPartitionedCallStatefulPartitionedCall&conv3/StatefulPartitionedCall:output:0	bn3_36559	bn3_36561	bn3_36563	bn3_36565*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_bn3_layer_call_and_return_conditional_losses_36392�
activation_3/PartitionedCallPartitionedCall$bn3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_activation_3_layer_call_and_return_conditional_losses_36572�
max_pool2/PartitionedCallPartitionedCall%activation_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_max_pool2_layer_call_and_return_conditional_losses_36441�
flatten/PartitionedCallPartitionedCall"max_pool2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_36580�
dropout/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_36593�
fc/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0fc_36606fc_36608*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_fc_layer_call_and_return_conditional_losses_36605r
IdentityIdentity#fc/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^bn0/StatefulPartitionedCall^bn1/StatefulPartitionedCall^bn2/StatefulPartitionedCall^bn3/StatefulPartitionedCall^conv0/StatefulPartitionedCall^conv1/StatefulPartitionedCall^conv2/StatefulPartitionedCall^conv3/StatefulPartitionedCall ^dropout/StatefulPartitionedCall^fc/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 2:
bn0/StatefulPartitionedCallbn0/StatefulPartitionedCall2:
bn1/StatefulPartitionedCallbn1/StatefulPartitionedCall2:
bn2/StatefulPartitionedCallbn2/StatefulPartitionedCall2:
bn3/StatefulPartitionedCallbn3/StatefulPartitionedCall2>
conv0/StatefulPartitionedCallconv0/StatefulPartitionedCall2>
conv1/StatefulPartitionedCallconv1/StatefulPartitionedCall2>
conv2/StatefulPartitionedCallconv2/StatefulPartitionedCall2>
conv3/StatefulPartitionedCallconv3/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall28
fc/StatefulPartitionedCallfc/StatefulPartitionedCall:%!

_user_specified_name36608:%!

_user_specified_name36606:%!

_user_specified_name36565:%!

_user_specified_name36563:%!

_user_specified_name36561:%!

_user_specified_name36559:%!

_user_specified_name36556:%!

_user_specified_name36554:%!

_user_specified_name36534:%!

_user_specified_name36532:%!

_user_specified_name36530:%!

_user_specified_name36528:%!

_user_specified_name36525:%!

_user_specified_name36523:%!

_user_specified_name36502:%!

_user_specified_name36500:%
!

_user_specified_name36498:%	!

_user_specified_name36496:%!

_user_specified_name36493:%!

_user_specified_name36491:%!

_user_specified_name36471:%!

_user_specified_name36469:%!

_user_specified_name36467:%!

_user_specified_name36465:%!

_user_specified_name36462:%!

_user_specified_name36460:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�

�
@__inference_conv1_layer_call_and_return_conditional_losses_37079

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������99@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������99@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������99@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������;; : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������;; 
 
_user_specified_nameinputs
��
�
!__inference__traced_restore_37912
file_prefix7
assignvariableop_conv0_kernel: +
assignvariableop_1_conv0_bias: *
assignvariableop_2_bn0_gamma: )
assignvariableop_3_bn0_beta: 0
"assignvariableop_4_bn0_moving_mean: 4
&assignvariableop_5_bn0_moving_variance: 9
assignvariableop_6_conv1_kernel: @+
assignvariableop_7_conv1_bias:@*
assignvariableop_8_bn1_gamma:@)
assignvariableop_9_bn1_beta:@1
#assignvariableop_10_bn1_moving_mean:@5
'assignvariableop_11_bn1_moving_variance:@;
 assignvariableop_12_conv2_kernel:@�-
assignvariableop_13_conv2_bias:	�,
assignvariableop_14_bn2_gamma:	�+
assignvariableop_15_bn2_beta:	�2
#assignvariableop_16_bn2_moving_mean:	�6
'assignvariableop_17_bn2_moving_variance:	�<
 assignvariableop_18_conv3_kernel:��-
assignvariableop_19_conv3_bias:	�,
assignvariableop_20_bn3_gamma:	�+
assignvariableop_21_bn3_beta:	�2
#assignvariableop_22_bn3_moving_mean:	�6
'assignvariableop_23_bn3_moving_variance:	�0
assignvariableop_24_fc_kernel:	�)
assignvariableop_25_fc_bias:'
assignvariableop_26_iteration:	 +
!assignvariableop_27_learning_rate: K
1assignvariableop_28_rmsprop_velocity_conv0_kernel: =
/assignvariableop_29_rmsprop_velocity_conv0_bias: <
.assignvariableop_30_rmsprop_velocity_bn0_gamma: ;
-assignvariableop_31_rmsprop_velocity_bn0_beta: K
1assignvariableop_32_rmsprop_velocity_conv1_kernel: @=
/assignvariableop_33_rmsprop_velocity_conv1_bias:@<
.assignvariableop_34_rmsprop_velocity_bn1_gamma:@;
-assignvariableop_35_rmsprop_velocity_bn1_beta:@L
1assignvariableop_36_rmsprop_velocity_conv2_kernel:@�>
/assignvariableop_37_rmsprop_velocity_conv2_bias:	�=
.assignvariableop_38_rmsprop_velocity_bn2_gamma:	�<
-assignvariableop_39_rmsprop_velocity_bn2_beta:	�M
1assignvariableop_40_rmsprop_velocity_conv3_kernel:��>
/assignvariableop_41_rmsprop_velocity_conv3_bias:	�=
.assignvariableop_42_rmsprop_velocity_bn3_gamma:	�<
-assignvariableop_43_rmsprop_velocity_bn3_beta:	�A
.assignvariableop_44_rmsprop_velocity_fc_kernel:	�:
,assignvariableop_45_rmsprop_velocity_fc_bias:%
assignvariableop_46_total_1: %
assignvariableop_47_count_1: #
assignvariableop_48_total: #
assignvariableop_49_count: 
identity_51��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:3*
dtype0*�
value�B�3B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:3*
dtype0*y
valuepBn3B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::*A
dtypes7
523	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_conv0_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv0_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_bn0_gammaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_bn0_betaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_bn0_moving_meanIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp&assignvariableop_5_bn0_moving_varianceIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_conv1_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_conv1_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_bn1_gammaIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_bn1_betaIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp#assignvariableop_10_bn1_moving_meanIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp'assignvariableop_11_bn1_moving_varianceIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp assignvariableop_12_conv2_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_conv2_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_bn2_gammaIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_bn2_betaIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp#assignvariableop_16_bn2_moving_meanIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp'assignvariableop_17_bn2_moving_varianceIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp assignvariableop_18_conv3_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpassignvariableop_19_conv3_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpassignvariableop_20_bn3_gammaIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpassignvariableop_21_bn3_betaIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp#assignvariableop_22_bn3_moving_meanIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp'assignvariableop_23_bn3_moving_varianceIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpassignvariableop_24_fc_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOpassignvariableop_25_fc_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpassignvariableop_26_iterationIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp!assignvariableop_27_learning_rateIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp1assignvariableop_28_rmsprop_velocity_conv0_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp/assignvariableop_29_rmsprop_velocity_conv0_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp.assignvariableop_30_rmsprop_velocity_bn0_gammaIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp-assignvariableop_31_rmsprop_velocity_bn0_betaIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp1assignvariableop_32_rmsprop_velocity_conv1_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp/assignvariableop_33_rmsprop_velocity_conv1_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp.assignvariableop_34_rmsprop_velocity_bn1_gammaIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp-assignvariableop_35_rmsprop_velocity_bn1_betaIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp1assignvariableop_36_rmsprop_velocity_conv2_kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp/assignvariableop_37_rmsprop_velocity_conv2_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp.assignvariableop_38_rmsprop_velocity_bn2_gammaIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp-assignvariableop_39_rmsprop_velocity_bn2_betaIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp1assignvariableop_40_rmsprop_velocity_conv3_kernelIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp/assignvariableop_41_rmsprop_velocity_conv3_biasIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp.assignvariableop_42_rmsprop_velocity_bn3_gammaIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp-assignvariableop_43_rmsprop_velocity_bn3_betaIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp.assignvariableop_44_rmsprop_velocity_fc_kernelIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp,assignvariableop_45_rmsprop_velocity_fc_biasIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOpassignvariableop_46_total_1Identity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOpassignvariableop_47_count_1Identity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOpassignvariableop_48_totalIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOpassignvariableop_49_countIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �	
Identity_50Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_51IdentityIdentity_50:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_51Identity_51:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:%2!

_user_specified_namecount:%1!

_user_specified_nametotal:'0#
!
_user_specified_name	count_1:'/#
!
_user_specified_name	total_1:8.4
2
_user_specified_nameRMSprop/velocity/fc/bias::-6
4
_user_specified_nameRMSprop/velocity/fc/kernel:9,5
3
_user_specified_nameRMSprop/velocity/bn3/beta::+6
4
_user_specified_nameRMSprop/velocity/bn3/gamma:;*7
5
_user_specified_nameRMSprop/velocity/conv3/bias:=)9
7
_user_specified_nameRMSprop/velocity/conv3/kernel:9(5
3
_user_specified_nameRMSprop/velocity/bn2/beta::'6
4
_user_specified_nameRMSprop/velocity/bn2/gamma:;&7
5
_user_specified_nameRMSprop/velocity/conv2/bias:=%9
7
_user_specified_nameRMSprop/velocity/conv2/kernel:9$5
3
_user_specified_nameRMSprop/velocity/bn1/beta::#6
4
_user_specified_nameRMSprop/velocity/bn1/gamma:;"7
5
_user_specified_nameRMSprop/velocity/conv1/bias:=!9
7
_user_specified_nameRMSprop/velocity/conv1/kernel:9 5
3
_user_specified_nameRMSprop/velocity/bn0/beta::6
4
_user_specified_nameRMSprop/velocity/bn0/gamma:;7
5
_user_specified_nameRMSprop/velocity/conv0/bias:=9
7
_user_specified_nameRMSprop/velocity/conv0/kernel:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:'#
!
_user_specified_name	fc/bias:)%
#
_user_specified_name	fc/kernel:3/
-
_user_specified_namebn3/moving_variance:/+
)
_user_specified_namebn3/moving_mean:($
"
_user_specified_name
bn3/beta:)%
#
_user_specified_name	bn3/gamma:*&
$
_user_specified_name
conv3/bias:,(
&
_user_specified_nameconv3/kernel:3/
-
_user_specified_namebn2/moving_variance:/+
)
_user_specified_namebn2/moving_mean:($
"
_user_specified_name
bn2/beta:)%
#
_user_specified_name	bn2/gamma:*&
$
_user_specified_name
conv2/bias:,(
&
_user_specified_nameconv2/kernel:3/
-
_user_specified_namebn1/moving_variance:/+
)
_user_specified_namebn1/moving_mean:(
$
"
_user_specified_name
bn1/beta:)	%
#
_user_specified_name	bn1/gamma:*&
$
_user_specified_name
conv1/bias:,(
&
_user_specified_nameconv1/kernel:3/
-
_user_specified_namebn0/moving_variance:/+
)
_user_specified_namebn0/moving_mean:($
"
_user_specified_name
bn0/beta:)%
#
_user_specified_name	bn0/gamma:*&
$
_user_specified_name
conv0/bias:,(
&
_user_specified_nameconv0/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
J
.__inference_zero_padding2d_layer_call_fn_36953

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_zero_padding2d_layer_call_and_return_conditional_losses_36143�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
c
G__inference_activation_2_layer_call_and_return_conditional_losses_36541

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:����������c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
@__inference_conv0_layer_call_and_return_conditional_losses_36459

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:����������� S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
3__inference_BrainDetectionModel_layer_call_fn_36808
input_1!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@�

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:	�

unknown_16:	�&

unknown_17:��

unknown_18:	�

unknown_19:	�

unknown_20:	�

unknown_21:	�

unknown_22:	�

unknown_23:	�

unknown_24:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_36694o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name36804:%!

_user_specified_name36802:%!

_user_specified_name36800:%!

_user_specified_name36798:%!

_user_specified_name36796:%!

_user_specified_name36794:%!

_user_specified_name36792:%!

_user_specified_name36790:%!

_user_specified_name36788:%!

_user_specified_name36786:%!

_user_specified_name36784:%!

_user_specified_name36782:%!

_user_specified_name36780:%!

_user_specified_name36778:%!

_user_specified_name36776:%!

_user_specified_name36774:%
!

_user_specified_name36772:%	!

_user_specified_name36770:%!

_user_specified_name36768:%!

_user_specified_name36766:%!

_user_specified_name36764:%!

_user_specified_name36762:%!

_user_specified_name36760:%!

_user_specified_name36758:%!

_user_specified_name36756:%!

_user_specified_name36754:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�
c
G__inference_activation_1_layer_call_and_return_conditional_losses_36509

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:���������99@b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������99@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������99@:W S
/
_output_shapes
:���������99@
 
_user_specified_nameinputs
�W
�
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_36694
input_1%
conv0_36616: 
conv0_36618: 
	bn0_36621: 
	bn0_36623: 
	bn0_36625: 
	bn0_36627: %
conv1_36632: @
conv1_36634:@
	bn1_36637:@
	bn1_36639:@
	bn1_36641:@
	bn1_36643:@&
conv2_36649:@�
conv2_36651:	�
	bn2_36654:	�
	bn2_36656:	�
	bn2_36658:	�
	bn2_36660:	�'
conv3_36665:��
conv3_36667:	�
	bn3_36670:	�
	bn3_36672:	�
	bn3_36674:	�
	bn3_36676:	�
fc_36688:	�
fc_36690:
identity��bn0/StatefulPartitionedCall�bn1/StatefulPartitionedCall�bn2/StatefulPartitionedCall�bn3/StatefulPartitionedCall�conv0/StatefulPartitionedCall�conv1/StatefulPartitionedCall�conv2/StatefulPartitionedCall�conv3/StatefulPartitionedCall�fc/StatefulPartitionedCall�
zero_padding2d/PartitionedCallPartitionedCallinput_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_zero_padding2d_layer_call_and_return_conditional_losses_36143�
conv0/StatefulPartitionedCallStatefulPartitionedCall'zero_padding2d/PartitionedCall:output:0conv0_36616conv0_36618*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_conv0_layer_call_and_return_conditional_losses_36459�
bn0/StatefulPartitionedCallStatefulPartitionedCall&conv0/StatefulPartitionedCall:output:0	bn0_36621	bn0_36623	bn0_36625	bn0_36627*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_bn0_layer_call_and_return_conditional_losses_36184�
activation/PartitionedCallPartitionedCall$bn0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_36478�
max_pool0/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������;; * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_max_pool0_layer_call_and_return_conditional_losses_36215�
conv1/StatefulPartitionedCallStatefulPartitionedCall"max_pool0/PartitionedCall:output:0conv1_36632conv1_36634*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������99@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_conv1_layer_call_and_return_conditional_losses_36490�
bn1/StatefulPartitionedCallStatefulPartitionedCall&conv1/StatefulPartitionedCall:output:0	bn1_36637	bn1_36639	bn1_36641	bn1_36643*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������99@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_bn1_layer_call_and_return_conditional_losses_36256�
activation_1/PartitionedCallPartitionedCall$bn1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������99@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_36509�
max_pool1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_max_pool1_layer_call_and_return_conditional_losses_36287�
Avg_pool0/PartitionedCallPartitionedCall"max_pool1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_Avg_pool0_layer_call_and_return_conditional_losses_36297�
conv2/StatefulPartitionedCallStatefulPartitionedCall"Avg_pool0/PartitionedCall:output:0conv2_36649conv2_36651*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_conv2_layer_call_and_return_conditional_losses_36522�
bn2/StatefulPartitionedCallStatefulPartitionedCall&conv2/StatefulPartitionedCall:output:0	bn2_36654	bn2_36656	bn2_36658	bn2_36660*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_bn2_layer_call_and_return_conditional_losses_36338�
activation_2/PartitionedCallPartitionedCall$bn2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_activation_2_layer_call_and_return_conditional_losses_36541�
Avg_pool1/PartitionedCallPartitionedCall%activation_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_Avg_pool1_layer_call_and_return_conditional_losses_36369�
conv3/StatefulPartitionedCallStatefulPartitionedCall"Avg_pool1/PartitionedCall:output:0conv3_36665conv3_36667*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_conv3_layer_call_and_return_conditional_losses_36553�
bn3/StatefulPartitionedCallStatefulPartitionedCall&conv3/StatefulPartitionedCall:output:0	bn3_36670	bn3_36672	bn3_36674	bn3_36676*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_bn3_layer_call_and_return_conditional_losses_36410�
activation_3/PartitionedCallPartitionedCall$bn3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_activation_3_layer_call_and_return_conditional_losses_36572�
max_pool2/PartitionedCallPartitionedCall%activation_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_max_pool2_layer_call_and_return_conditional_losses_36441�
flatten/PartitionedCallPartitionedCall"max_pool2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_36580�
dropout/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_36686�
fc/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0fc_36688fc_36690*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *F
fAR?
=__inference_fc_layer_call_and_return_conditional_losses_36605r
IdentityIdentity#fc/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^bn0/StatefulPartitionedCall^bn1/StatefulPartitionedCall^bn2/StatefulPartitionedCall^bn3/StatefulPartitionedCall^conv0/StatefulPartitionedCall^conv1/StatefulPartitionedCall^conv2/StatefulPartitionedCall^conv3/StatefulPartitionedCall^fc/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 2:
bn0/StatefulPartitionedCallbn0/StatefulPartitionedCall2:
bn1/StatefulPartitionedCallbn1/StatefulPartitionedCall2:
bn2/StatefulPartitionedCallbn2/StatefulPartitionedCall2:
bn3/StatefulPartitionedCallbn3/StatefulPartitionedCall2>
conv0/StatefulPartitionedCallconv0/StatefulPartitionedCall2>
conv1/StatefulPartitionedCallconv1/StatefulPartitionedCall2>
conv2/StatefulPartitionedCallconv2/StatefulPartitionedCall2>
conv3/StatefulPartitionedCallconv3/StatefulPartitionedCall28
fc/StatefulPartitionedCallfc/StatefulPartitionedCall:%!

_user_specified_name36690:%!

_user_specified_name36688:%!

_user_specified_name36676:%!

_user_specified_name36674:%!

_user_specified_name36672:%!

_user_specified_name36670:%!

_user_specified_name36667:%!

_user_specified_name36665:%!

_user_specified_name36660:%!

_user_specified_name36658:%!

_user_specified_name36656:%!

_user_specified_name36654:%!

_user_specified_name36651:%!

_user_specified_name36649:%!

_user_specified_name36643:%!

_user_specified_name36641:%
!

_user_specified_name36639:%	!

_user_specified_name36637:%!

_user_specified_name36634:%!

_user_specified_name36632:%!

_user_specified_name36627:%!

_user_specified_name36625:%!

_user_specified_name36623:%!

_user_specified_name36621:%!

_user_specified_name36618:%!

_user_specified_name36616:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�

a
B__inference_dropout_layer_call_and_return_conditional_losses_36593

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
c
G__inference_activation_1_layer_call_and_return_conditional_losses_37151

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:���������99@b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������99@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������99@:W S
/
_output_shapes
:���������99@
 
_user_specified_nameinputs
�

�
@__inference_conv2_layer_call_and_return_conditional_losses_37190

inputs9
conv2d_readvariableop_resource:@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
`
B__inference_dropout_layer_call_and_return_conditional_losses_37411

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
>__inference_bn3_layer_call_and_return_conditional_losses_36410

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�	
�
#__inference_bn3_layer_call_fn_37317

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_bn3_layer_call_and_return_conditional_losses_36410�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name37313:%!

_user_specified_name37311:%!

_user_specified_name37309:%!

_user_specified_name37307:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
>__inference_bn1_layer_call_and_return_conditional_losses_36256

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�	
�
#__inference_bn1_layer_call_fn_37092

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_bn1_layer_call_and_return_conditional_losses_36238�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name37088:%!

_user_specified_name37086:%!

_user_specified_name37084:%!

_user_specified_name37082:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�

�
@__inference_conv1_layer_call_and_return_conditional_losses_36490

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������99@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������99@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������99@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������;; : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������;; 
 
_user_specified_nameinputs
�	
�
#__inference_bn2_layer_call_fn_37203

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_bn2_layer_call_and_return_conditional_losses_36320�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name37199:%!

_user_specified_name37197:%!

_user_specified_name37195:%!

_user_specified_name37193:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�

�
=__inference_fc_layer_call_and_return_conditional_losses_37431

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
@__inference_conv3_layer_call_and_return_conditional_losses_36553

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
E
)__inference_Avg_pool1_layer_call_fn_37267

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_Avg_pool1_layer_call_and_return_conditional_losses_36369�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
`
D__inference_max_pool0_layer_call_and_return_conditional_losses_36215

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�	
�
#__inference_bn0_layer_call_fn_37004

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_bn0_layer_call_and_return_conditional_losses_36184�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name37000:%!

_user_specified_name36998:%!

_user_specified_name36996:%!

_user_specified_name36994:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
`
'__inference_dropout_layer_call_fn_37389

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_36593p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
`
D__inference_Avg_pool1_layer_call_and_return_conditional_losses_36369

inputs
identity�
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

�
=__inference_fc_layer_call_and_return_conditional_losses_36605

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
#__inference_bn1_layer_call_fn_37105

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_bn1_layer_call_and_return_conditional_losses_36256�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name37101:%!

_user_specified_name37099:%!

_user_specified_name37097:%!

_user_specified_name37095:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
c
G__inference_activation_3_layer_call_and_return_conditional_losses_37363

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:����������c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
%__inference_conv0_layer_call_fn_36968

inputs!
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_conv0_layer_call_and_return_conditional_losses_36459y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:����������� <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name36964:%!

_user_specified_name36962:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
`
D__inference_max_pool2_layer_call_and_return_conditional_losses_36441

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
>__inference_bn2_layer_call_and_return_conditional_losses_37234

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%���=�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
H
,__inference_activation_1_layer_call_fn_37146

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������99@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_36509h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������99@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������99@:W S
/
_output_shapes
:���������99@
 
_user_specified_nameinputs
�
E
)__inference_max_pool2_layer_call_fn_37368

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_max_pool2_layer_call_and_return_conditional_losses_36441�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
%__inference_conv2_layer_call_fn_37180

inputs"
unknown:@�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_conv2_layer_call_and_return_conditional_losses_36522x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name37176:%!

_user_specified_name37174:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
>__inference_bn2_layer_call_and_return_conditional_losses_36320

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%���=�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
`
D__inference_Avg_pool1_layer_call_and_return_conditional_losses_37272

inputs
identity�
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
%__inference_conv1_layer_call_fn_37069

inputs!
unknown: @
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������99@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_conv1_layer_call_and_return_conditional_losses_36490w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������99@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������;; : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name37065:%!

_user_specified_name37063:W S
/
_output_shapes
:���������;; 
 
_user_specified_nameinputs
�
�
>__inference_bn3_layer_call_and_return_conditional_losses_37335

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%���=�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
>__inference_bn0_layer_call_and_return_conditional_losses_36166

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
exponential_avg_factor%���=�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
`
D__inference_max_pool0_layer_call_and_return_conditional_losses_37060

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�	
�
#__inference_bn0_layer_call_fn_36991

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_bn0_layer_call_and_return_conditional_losses_36166�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name36987:%!

_user_specified_name36985:%!

_user_specified_name36983:%!

_user_specified_name36981:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
`
D__inference_Avg_pool0_layer_call_and_return_conditional_losses_36297

inputs
identity�
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
H
,__inference_activation_2_layer_call_fn_37257

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_activation_2_layer_call_and_return_conditional_losses_36541i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
C
'__inference_dropout_layer_call_fn_37394

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_36686a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
#__inference_bn3_layer_call_fn_37304

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_bn3_layer_call_and_return_conditional_losses_36392�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name37300:%!

_user_specified_name37298:%!

_user_specified_name37296:%!

_user_specified_name37294:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
c
G__inference_activation_2_layer_call_and_return_conditional_losses_37262

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:����������c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
`
D__inference_max_pool2_layer_call_and_return_conditional_losses_37373

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
^
B__inference_flatten_layer_call_and_return_conditional_losses_36580

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
`
B__inference_dropout_layer_call_and_return_conditional_losses_36686

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
@__inference_conv0_layer_call_and_return_conditional_losses_36978

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:����������� S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
>__inference_bn3_layer_call_and_return_conditional_losses_37353

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
>__inference_bn2_layer_call_and_return_conditional_losses_37252

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
a
E__inference_activation_layer_call_and_return_conditional_losses_37050

inputs
identityP
ReluReluinputs*
T0*1
_output_shapes
:����������� d
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:����������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:����������� :Y U
1
_output_shapes
:����������� 
 
_user_specified_nameinputs
�
E
)__inference_max_pool0_layer_call_fn_37055

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_max_pool0_layer_call_and_return_conditional_losses_36215�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
e
I__inference_zero_padding2d_layer_call_and_return_conditional_losses_36143

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
%__inference_conv3_layer_call_fn_37281

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_conv3_layer_call_and_return_conditional_losses_36553x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name37277:%!

_user_specified_name37275:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
E
)__inference_Avg_pool0_layer_call_fn_37166

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_Avg_pool0_layer_call_and_return_conditional_losses_36297�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
`
D__inference_max_pool1_layer_call_and_return_conditional_losses_36287

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
>__inference_bn2_layer_call_and_return_conditional_losses_36338

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
��
�
 __inference__wrapped_model_36137
input_1R
8braindetectionmodel_conv0_conv2d_readvariableop_resource: G
9braindetectionmodel_conv0_biasadd_readvariableop_resource: =
/braindetectionmodel_bn0_readvariableop_resource: ?
1braindetectionmodel_bn0_readvariableop_1_resource: N
@braindetectionmodel_bn0_fusedbatchnormv3_readvariableop_resource: P
Bbraindetectionmodel_bn0_fusedbatchnormv3_readvariableop_1_resource: R
8braindetectionmodel_conv1_conv2d_readvariableop_resource: @G
9braindetectionmodel_conv1_biasadd_readvariableop_resource:@=
/braindetectionmodel_bn1_readvariableop_resource:@?
1braindetectionmodel_bn1_readvariableop_1_resource:@N
@braindetectionmodel_bn1_fusedbatchnormv3_readvariableop_resource:@P
Bbraindetectionmodel_bn1_fusedbatchnormv3_readvariableop_1_resource:@S
8braindetectionmodel_conv2_conv2d_readvariableop_resource:@�H
9braindetectionmodel_conv2_biasadd_readvariableop_resource:	�>
/braindetectionmodel_bn2_readvariableop_resource:	�@
1braindetectionmodel_bn2_readvariableop_1_resource:	�O
@braindetectionmodel_bn2_fusedbatchnormv3_readvariableop_resource:	�Q
Bbraindetectionmodel_bn2_fusedbatchnormv3_readvariableop_1_resource:	�T
8braindetectionmodel_conv3_conv2d_readvariableop_resource:��H
9braindetectionmodel_conv3_biasadd_readvariableop_resource:	�>
/braindetectionmodel_bn3_readvariableop_resource:	�@
1braindetectionmodel_bn3_readvariableop_1_resource:	�O
@braindetectionmodel_bn3_fusedbatchnormv3_readvariableop_resource:	�Q
Bbraindetectionmodel_bn3_fusedbatchnormv3_readvariableop_1_resource:	�H
5braindetectionmodel_fc_matmul_readvariableop_resource:	�D
6braindetectionmodel_fc_biasadd_readvariableop_resource:
identity��7BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp�9BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp_1�&BrainDetectionModel/bn0/ReadVariableOp�(BrainDetectionModel/bn0/ReadVariableOp_1�7BrainDetectionModel/bn1/FusedBatchNormV3/ReadVariableOp�9BrainDetectionModel/bn1/FusedBatchNormV3/ReadVariableOp_1�&BrainDetectionModel/bn1/ReadVariableOp�(BrainDetectionModel/bn1/ReadVariableOp_1�7BrainDetectionModel/bn2/FusedBatchNormV3/ReadVariableOp�9BrainDetectionModel/bn2/FusedBatchNormV3/ReadVariableOp_1�&BrainDetectionModel/bn2/ReadVariableOp�(BrainDetectionModel/bn2/ReadVariableOp_1�7BrainDetectionModel/bn3/FusedBatchNormV3/ReadVariableOp�9BrainDetectionModel/bn3/FusedBatchNormV3/ReadVariableOp_1�&BrainDetectionModel/bn3/ReadVariableOp�(BrainDetectionModel/bn3/ReadVariableOp_1�0BrainDetectionModel/conv0/BiasAdd/ReadVariableOp�/BrainDetectionModel/conv0/Conv2D/ReadVariableOp�0BrainDetectionModel/conv1/BiasAdd/ReadVariableOp�/BrainDetectionModel/conv1/Conv2D/ReadVariableOp�0BrainDetectionModel/conv2/BiasAdd/ReadVariableOp�/BrainDetectionModel/conv2/Conv2D/ReadVariableOp�0BrainDetectionModel/conv3/BiasAdd/ReadVariableOp�/BrainDetectionModel/conv3/Conv2D/ReadVariableOp�-BrainDetectionModel/fc/BiasAdd/ReadVariableOp�,BrainDetectionModel/fc/MatMul/ReadVariableOp�
/BrainDetectionModel/zero_padding2d/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             �
&BrainDetectionModel/zero_padding2d/PadPadinput_18BrainDetectionModel/zero_padding2d/Pad/paddings:output:0*
T0*1
_output_shapes
:������������
/BrainDetectionModel/conv0/Conv2D/ReadVariableOpReadVariableOp8braindetectionmodel_conv0_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
 BrainDetectionModel/conv0/Conv2DConv2D/BrainDetectionModel/zero_padding2d/Pad:output:07BrainDetectionModel/conv0/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingVALID*
strides
�
0BrainDetectionModel/conv0/BiasAdd/ReadVariableOpReadVariableOp9braindetectionmodel_conv0_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
!BrainDetectionModel/conv0/BiasAddBiasAdd)BrainDetectionModel/conv0/Conv2D:output:08BrainDetectionModel/conv0/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� �
&BrainDetectionModel/bn0/ReadVariableOpReadVariableOp/braindetectionmodel_bn0_readvariableop_resource*
_output_shapes
: *
dtype0�
(BrainDetectionModel/bn0/ReadVariableOp_1ReadVariableOp1braindetectionmodel_bn0_readvariableop_1_resource*
_output_shapes
: *
dtype0�
7BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOpReadVariableOp@braindetectionmodel_bn0_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
9BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbraindetectionmodel_bn0_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
(BrainDetectionModel/bn0/FusedBatchNormV3FusedBatchNormV3*BrainDetectionModel/conv0/BiasAdd:output:0.BrainDetectionModel/bn0/ReadVariableOp:value:00BrainDetectionModel/bn0/ReadVariableOp_1:value:0?BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp:value:0ABrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:����������� : : : : :*
epsilon%o�:*
is_training( �
#BrainDetectionModel/activation/ReluRelu,BrainDetectionModel/bn0/FusedBatchNormV3:y:0*
T0*1
_output_shapes
:����������� �
%BrainDetectionModel/max_pool0/MaxPoolMaxPool1BrainDetectionModel/activation/Relu:activations:0*/
_output_shapes
:���������;; *
ksize
*
paddingVALID*
strides
�
/BrainDetectionModel/conv1/Conv2D/ReadVariableOpReadVariableOp8braindetectionmodel_conv1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
 BrainDetectionModel/conv1/Conv2DConv2D.BrainDetectionModel/max_pool0/MaxPool:output:07BrainDetectionModel/conv1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������99@*
paddingVALID*
strides
�
0BrainDetectionModel/conv1/BiasAdd/ReadVariableOpReadVariableOp9braindetectionmodel_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
!BrainDetectionModel/conv1/BiasAddBiasAdd)BrainDetectionModel/conv1/Conv2D:output:08BrainDetectionModel/conv1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������99@�
&BrainDetectionModel/bn1/ReadVariableOpReadVariableOp/braindetectionmodel_bn1_readvariableop_resource*
_output_shapes
:@*
dtype0�
(BrainDetectionModel/bn1/ReadVariableOp_1ReadVariableOp1braindetectionmodel_bn1_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
7BrainDetectionModel/bn1/FusedBatchNormV3/ReadVariableOpReadVariableOp@braindetectionmodel_bn1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
9BrainDetectionModel/bn1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbraindetectionmodel_bn1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
(BrainDetectionModel/bn1/FusedBatchNormV3FusedBatchNormV3*BrainDetectionModel/conv1/BiasAdd:output:0.BrainDetectionModel/bn1/ReadVariableOp:value:00BrainDetectionModel/bn1/ReadVariableOp_1:value:0?BrainDetectionModel/bn1/FusedBatchNormV3/ReadVariableOp:value:0ABrainDetectionModel/bn1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������99@:@:@:@:@:*
epsilon%o�:*
is_training( �
%BrainDetectionModel/activation_1/ReluRelu,BrainDetectionModel/bn1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������99@�
%BrainDetectionModel/max_pool1/MaxPoolMaxPool3BrainDetectionModel/activation_1/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
%BrainDetectionModel/Avg_pool0/AvgPoolAvgPool.BrainDetectionModel/max_pool1/MaxPool:output:0*
T0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
/BrainDetectionModel/conv2/Conv2D/ReadVariableOpReadVariableOp8braindetectionmodel_conv2_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
 BrainDetectionModel/conv2/Conv2DConv2D.BrainDetectionModel/Avg_pool0/AvgPool:output:07BrainDetectionModel/conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
0BrainDetectionModel/conv2/BiasAdd/ReadVariableOpReadVariableOp9braindetectionmodel_conv2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!BrainDetectionModel/conv2/BiasAddBiasAdd)BrainDetectionModel/conv2/Conv2D:output:08BrainDetectionModel/conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
&BrainDetectionModel/bn2/ReadVariableOpReadVariableOp/braindetectionmodel_bn2_readvariableop_resource*
_output_shapes	
:�*
dtype0�
(BrainDetectionModel/bn2/ReadVariableOp_1ReadVariableOp1braindetectionmodel_bn2_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
7BrainDetectionModel/bn2/FusedBatchNormV3/ReadVariableOpReadVariableOp@braindetectionmodel_bn2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
9BrainDetectionModel/bn2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbraindetectionmodel_bn2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
(BrainDetectionModel/bn2/FusedBatchNormV3FusedBatchNormV3*BrainDetectionModel/conv2/BiasAdd:output:0.BrainDetectionModel/bn2/ReadVariableOp:value:00BrainDetectionModel/bn2/ReadVariableOp_1:value:0?BrainDetectionModel/bn2/FusedBatchNormV3/ReadVariableOp:value:0ABrainDetectionModel/bn2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
is_training( �
%BrainDetectionModel/activation_2/ReluRelu,BrainDetectionModel/bn2/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:�����������
%BrainDetectionModel/Avg_pool1/AvgPoolAvgPool3BrainDetectionModel/activation_2/Relu:activations:0*
T0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
/BrainDetectionModel/conv3/Conv2D/ReadVariableOpReadVariableOp8braindetectionmodel_conv3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
 BrainDetectionModel/conv3/Conv2DConv2D.BrainDetectionModel/Avg_pool1/AvgPool:output:07BrainDetectionModel/conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
0BrainDetectionModel/conv3/BiasAdd/ReadVariableOpReadVariableOp9braindetectionmodel_conv3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!BrainDetectionModel/conv3/BiasAddBiasAdd)BrainDetectionModel/conv3/Conv2D:output:08BrainDetectionModel/conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
&BrainDetectionModel/bn3/ReadVariableOpReadVariableOp/braindetectionmodel_bn3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
(BrainDetectionModel/bn3/ReadVariableOp_1ReadVariableOp1braindetectionmodel_bn3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
7BrainDetectionModel/bn3/FusedBatchNormV3/ReadVariableOpReadVariableOp@braindetectionmodel_bn3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
9BrainDetectionModel/bn3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbraindetectionmodel_bn3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
(BrainDetectionModel/bn3/FusedBatchNormV3FusedBatchNormV3*BrainDetectionModel/conv3/BiasAdd:output:0.BrainDetectionModel/bn3/ReadVariableOp:value:00BrainDetectionModel/bn3/ReadVariableOp_1:value:0?BrainDetectionModel/bn3/FusedBatchNormV3/ReadVariableOp:value:0ABrainDetectionModel/bn3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
is_training( �
%BrainDetectionModel/activation_3/ReluRelu,BrainDetectionModel/bn3/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:�����������
%BrainDetectionModel/max_pool2/MaxPoolMaxPool3BrainDetectionModel/activation_3/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
r
!BrainDetectionModel/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����   �
#BrainDetectionModel/flatten/ReshapeReshape.BrainDetectionModel/max_pool2/MaxPool:output:0*BrainDetectionModel/flatten/Const:output:0*
T0*(
_output_shapes
:�����������
$BrainDetectionModel/dropout/IdentityIdentity,BrainDetectionModel/flatten/Reshape:output:0*
T0*(
_output_shapes
:�����������
,BrainDetectionModel/fc/MatMul/ReadVariableOpReadVariableOp5braindetectionmodel_fc_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
BrainDetectionModel/fc/MatMulMatMul-BrainDetectionModel/dropout/Identity:output:04BrainDetectionModel/fc/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-BrainDetectionModel/fc/BiasAdd/ReadVariableOpReadVariableOp6braindetectionmodel_fc_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BrainDetectionModel/fc/BiasAddBiasAdd'BrainDetectionModel/fc/MatMul:product:05BrainDetectionModel/fc/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
BrainDetectionModel/fc/SigmoidSigmoid'BrainDetectionModel/fc/BiasAdd:output:0*
T0*'
_output_shapes
:���������q
IdentityIdentity"BrainDetectionModel/fc/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������

NoOpNoOp8^BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp:^BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp_1'^BrainDetectionModel/bn0/ReadVariableOp)^BrainDetectionModel/bn0/ReadVariableOp_18^BrainDetectionModel/bn1/FusedBatchNormV3/ReadVariableOp:^BrainDetectionModel/bn1/FusedBatchNormV3/ReadVariableOp_1'^BrainDetectionModel/bn1/ReadVariableOp)^BrainDetectionModel/bn1/ReadVariableOp_18^BrainDetectionModel/bn2/FusedBatchNormV3/ReadVariableOp:^BrainDetectionModel/bn2/FusedBatchNormV3/ReadVariableOp_1'^BrainDetectionModel/bn2/ReadVariableOp)^BrainDetectionModel/bn2/ReadVariableOp_18^BrainDetectionModel/bn3/FusedBatchNormV3/ReadVariableOp:^BrainDetectionModel/bn3/FusedBatchNormV3/ReadVariableOp_1'^BrainDetectionModel/bn3/ReadVariableOp)^BrainDetectionModel/bn3/ReadVariableOp_11^BrainDetectionModel/conv0/BiasAdd/ReadVariableOp0^BrainDetectionModel/conv0/Conv2D/ReadVariableOp1^BrainDetectionModel/conv1/BiasAdd/ReadVariableOp0^BrainDetectionModel/conv1/Conv2D/ReadVariableOp1^BrainDetectionModel/conv2/BiasAdd/ReadVariableOp0^BrainDetectionModel/conv2/Conv2D/ReadVariableOp1^BrainDetectionModel/conv3/BiasAdd/ReadVariableOp0^BrainDetectionModel/conv3/Conv2D/ReadVariableOp.^BrainDetectionModel/fc/BiasAdd/ReadVariableOp-^BrainDetectionModel/fc/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 2v
9BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp_19BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp_12r
7BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp7BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp2T
(BrainDetectionModel/bn0/ReadVariableOp_1(BrainDetectionModel/bn0/ReadVariableOp_12P
&BrainDetectionModel/bn0/ReadVariableOp&BrainDetectionModel/bn0/ReadVariableOp2v
9BrainDetectionModel/bn1/FusedBatchNormV3/ReadVariableOp_19BrainDetectionModel/bn1/FusedBatchNormV3/ReadVariableOp_12r
7BrainDetectionModel/bn1/FusedBatchNormV3/ReadVariableOp7BrainDetectionModel/bn1/FusedBatchNormV3/ReadVariableOp2T
(BrainDetectionModel/bn1/ReadVariableOp_1(BrainDetectionModel/bn1/ReadVariableOp_12P
&BrainDetectionModel/bn1/ReadVariableOp&BrainDetectionModel/bn1/ReadVariableOp2v
9BrainDetectionModel/bn2/FusedBatchNormV3/ReadVariableOp_19BrainDetectionModel/bn2/FusedBatchNormV3/ReadVariableOp_12r
7BrainDetectionModel/bn2/FusedBatchNormV3/ReadVariableOp7BrainDetectionModel/bn2/FusedBatchNormV3/ReadVariableOp2T
(BrainDetectionModel/bn2/ReadVariableOp_1(BrainDetectionModel/bn2/ReadVariableOp_12P
&BrainDetectionModel/bn2/ReadVariableOp&BrainDetectionModel/bn2/ReadVariableOp2v
9BrainDetectionModel/bn3/FusedBatchNormV3/ReadVariableOp_19BrainDetectionModel/bn3/FusedBatchNormV3/ReadVariableOp_12r
7BrainDetectionModel/bn3/FusedBatchNormV3/ReadVariableOp7BrainDetectionModel/bn3/FusedBatchNormV3/ReadVariableOp2T
(BrainDetectionModel/bn3/ReadVariableOp_1(BrainDetectionModel/bn3/ReadVariableOp_12P
&BrainDetectionModel/bn3/ReadVariableOp&BrainDetectionModel/bn3/ReadVariableOp2d
0BrainDetectionModel/conv0/BiasAdd/ReadVariableOp0BrainDetectionModel/conv0/BiasAdd/ReadVariableOp2b
/BrainDetectionModel/conv0/Conv2D/ReadVariableOp/BrainDetectionModel/conv0/Conv2D/ReadVariableOp2d
0BrainDetectionModel/conv1/BiasAdd/ReadVariableOp0BrainDetectionModel/conv1/BiasAdd/ReadVariableOp2b
/BrainDetectionModel/conv1/Conv2D/ReadVariableOp/BrainDetectionModel/conv1/Conv2D/ReadVariableOp2d
0BrainDetectionModel/conv2/BiasAdd/ReadVariableOp0BrainDetectionModel/conv2/BiasAdd/ReadVariableOp2b
/BrainDetectionModel/conv2/Conv2D/ReadVariableOp/BrainDetectionModel/conv2/Conv2D/ReadVariableOp2d
0BrainDetectionModel/conv3/BiasAdd/ReadVariableOp0BrainDetectionModel/conv3/BiasAdd/ReadVariableOp2b
/BrainDetectionModel/conv3/Conv2D/ReadVariableOp/BrainDetectionModel/conv3/Conv2D/ReadVariableOp2^
-BrainDetectionModel/fc/BiasAdd/ReadVariableOp-BrainDetectionModel/fc/BiasAdd/ReadVariableOp2\
,BrainDetectionModel/fc/MatMul/ReadVariableOp,BrainDetectionModel/fc/MatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
��
�,
__inference__traced_save_37753
file_prefix=
#read_disablecopyonread_conv0_kernel: 1
#read_1_disablecopyonread_conv0_bias: 0
"read_2_disablecopyonread_bn0_gamma: /
!read_3_disablecopyonread_bn0_beta: 6
(read_4_disablecopyonread_bn0_moving_mean: :
,read_5_disablecopyonread_bn0_moving_variance: ?
%read_6_disablecopyonread_conv1_kernel: @1
#read_7_disablecopyonread_conv1_bias:@0
"read_8_disablecopyonread_bn1_gamma:@/
!read_9_disablecopyonread_bn1_beta:@7
)read_10_disablecopyonread_bn1_moving_mean:@;
-read_11_disablecopyonread_bn1_moving_variance:@A
&read_12_disablecopyonread_conv2_kernel:@�3
$read_13_disablecopyonread_conv2_bias:	�2
#read_14_disablecopyonread_bn2_gamma:	�1
"read_15_disablecopyonread_bn2_beta:	�8
)read_16_disablecopyonread_bn2_moving_mean:	�<
-read_17_disablecopyonread_bn2_moving_variance:	�B
&read_18_disablecopyonread_conv3_kernel:��3
$read_19_disablecopyonread_conv3_bias:	�2
#read_20_disablecopyonread_bn3_gamma:	�1
"read_21_disablecopyonread_bn3_beta:	�8
)read_22_disablecopyonread_bn3_moving_mean:	�<
-read_23_disablecopyonread_bn3_moving_variance:	�6
#read_24_disablecopyonread_fc_kernel:	�/
!read_25_disablecopyonread_fc_bias:-
#read_26_disablecopyonread_iteration:	 1
'read_27_disablecopyonread_learning_rate: Q
7read_28_disablecopyonread_rmsprop_velocity_conv0_kernel: C
5read_29_disablecopyonread_rmsprop_velocity_conv0_bias: B
4read_30_disablecopyonread_rmsprop_velocity_bn0_gamma: A
3read_31_disablecopyonread_rmsprop_velocity_bn0_beta: Q
7read_32_disablecopyonread_rmsprop_velocity_conv1_kernel: @C
5read_33_disablecopyonread_rmsprop_velocity_conv1_bias:@B
4read_34_disablecopyonread_rmsprop_velocity_bn1_gamma:@A
3read_35_disablecopyonread_rmsprop_velocity_bn1_beta:@R
7read_36_disablecopyonread_rmsprop_velocity_conv2_kernel:@�D
5read_37_disablecopyonread_rmsprop_velocity_conv2_bias:	�C
4read_38_disablecopyonread_rmsprop_velocity_bn2_gamma:	�B
3read_39_disablecopyonread_rmsprop_velocity_bn2_beta:	�S
7read_40_disablecopyonread_rmsprop_velocity_conv3_kernel:��D
5read_41_disablecopyonread_rmsprop_velocity_conv3_bias:	�C
4read_42_disablecopyonread_rmsprop_velocity_bn3_gamma:	�B
3read_43_disablecopyonread_rmsprop_velocity_bn3_beta:	�G
4read_44_disablecopyonread_rmsprop_velocity_fc_kernel:	�@
2read_45_disablecopyonread_rmsprop_velocity_fc_bias:+
!read_46_disablecopyonread_total_1: +
!read_47_disablecopyonread_count_1: )
read_48_disablecopyonread_total: )
read_49_disablecopyonread_count: 
savev2_const
identity_101��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_39/DisableCopyOnRead�Read_39/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_40/DisableCopyOnRead�Read_40/ReadVariableOp�Read_41/DisableCopyOnRead�Read_41/ReadVariableOp�Read_42/DisableCopyOnRead�Read_42/ReadVariableOp�Read_43/DisableCopyOnRead�Read_43/ReadVariableOp�Read_44/DisableCopyOnRead�Read_44/ReadVariableOp�Read_45/DisableCopyOnRead�Read_45/ReadVariableOp�Read_46/DisableCopyOnRead�Read_46/ReadVariableOp�Read_47/DisableCopyOnRead�Read_47/ReadVariableOp�Read_48/DisableCopyOnRead�Read_48/ReadVariableOp�Read_49/DisableCopyOnRead�Read_49/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: u
Read/DisableCopyOnReadDisableCopyOnRead#read_disablecopyonread_conv0_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp#read_disablecopyonread_conv0_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
: w
Read_1/DisableCopyOnReadDisableCopyOnRead#read_1_disablecopyonread_conv0_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp#read_1_disablecopyonread_conv0_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_2/DisableCopyOnReadDisableCopyOnRead"read_2_disablecopyonread_bn0_gamma"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp"read_2_disablecopyonread_bn0_gamma^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
: u
Read_3/DisableCopyOnReadDisableCopyOnRead!read_3_disablecopyonread_bn0_beta"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp!read_3_disablecopyonread_bn0_beta^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
: |
Read_4/DisableCopyOnReadDisableCopyOnRead(read_4_disablecopyonread_bn0_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp(read_4_disablecopyonread_bn0_moving_mean^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_5/DisableCopyOnReadDisableCopyOnRead,read_5_disablecopyonread_bn0_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp,read_5_disablecopyonread_bn0_moving_variance^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
: y
Read_6/DisableCopyOnReadDisableCopyOnRead%read_6_disablecopyonread_conv1_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp%read_6_disablecopyonread_conv1_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0v
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*&
_output_shapes
: @w
Read_7/DisableCopyOnReadDisableCopyOnRead#read_7_disablecopyonread_conv1_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp#read_7_disablecopyonread_conv1_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:@v
Read_8/DisableCopyOnReadDisableCopyOnRead"read_8_disablecopyonread_bn1_gamma"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp"read_8_disablecopyonread_bn1_gamma^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:@u
Read_9/DisableCopyOnReadDisableCopyOnRead!read_9_disablecopyonread_bn1_beta"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp!read_9_disablecopyonread_bn1_beta^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:@~
Read_10/DisableCopyOnReadDisableCopyOnRead)read_10_disablecopyonread_bn1_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp)read_10_disablecopyonread_bn1_moving_mean^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_11/DisableCopyOnReadDisableCopyOnRead-read_11_disablecopyonread_bn1_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp-read_11_disablecopyonread_bn1_moving_variance^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:@{
Read_12/DisableCopyOnReadDisableCopyOnRead&read_12_disablecopyonread_conv2_kernel"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp&read_12_disablecopyonread_conv2_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@�*
dtype0x
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@�n
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*'
_output_shapes
:@�y
Read_13/DisableCopyOnReadDisableCopyOnRead$read_13_disablecopyonread_conv2_bias"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp$read_13_disablecopyonread_conv2_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes	
:�x
Read_14/DisableCopyOnReadDisableCopyOnRead#read_14_disablecopyonread_bn2_gamma"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp#read_14_disablecopyonread_bn2_gamma^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes	
:�w
Read_15/DisableCopyOnReadDisableCopyOnRead"read_15_disablecopyonread_bn2_beta"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp"read_15_disablecopyonread_bn2_beta^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes	
:�~
Read_16/DisableCopyOnReadDisableCopyOnRead)read_16_disablecopyonread_bn2_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp)read_16_disablecopyonread_bn2_moving_mean^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_17/DisableCopyOnReadDisableCopyOnRead-read_17_disablecopyonread_bn2_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp-read_17_disablecopyonread_bn2_moving_variance^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes	
:�{
Read_18/DisableCopyOnReadDisableCopyOnRead&read_18_disablecopyonread_conv3_kernel"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp&read_18_disablecopyonread_conv3_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*(
_output_shapes
:��y
Read_19/DisableCopyOnReadDisableCopyOnRead$read_19_disablecopyonread_conv3_bias"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp$read_19_disablecopyonread_conv3_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes	
:�x
Read_20/DisableCopyOnReadDisableCopyOnRead#read_20_disablecopyonread_bn3_gamma"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp#read_20_disablecopyonread_bn3_gamma^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes	
:�w
Read_21/DisableCopyOnReadDisableCopyOnRead"read_21_disablecopyonread_bn3_beta"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp"read_21_disablecopyonread_bn3_beta^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes	
:�~
Read_22/DisableCopyOnReadDisableCopyOnRead)read_22_disablecopyonread_bn3_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp)read_22_disablecopyonread_bn3_moving_mean^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_23/DisableCopyOnReadDisableCopyOnRead-read_23_disablecopyonread_bn3_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp-read_23_disablecopyonread_bn3_moving_variance^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes	
:�x
Read_24/DisableCopyOnReadDisableCopyOnRead#read_24_disablecopyonread_fc_kernel"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp#read_24_disablecopyonread_fc_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:	�v
Read_25/DisableCopyOnReadDisableCopyOnRead!read_25_disablecopyonread_fc_bias"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp!read_25_disablecopyonread_fc_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_26/DisableCopyOnReadDisableCopyOnRead#read_26_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp#read_26_disablecopyonread_iteration^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_27/DisableCopyOnReadDisableCopyOnRead'read_27_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp'read_27_disablecopyonread_learning_rate^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_28/DisableCopyOnReadDisableCopyOnRead7read_28_disablecopyonread_rmsprop_velocity_conv0_kernel"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp7read_28_disablecopyonread_rmsprop_velocity_conv0_kernel^Read_28/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_29/DisableCopyOnReadDisableCopyOnRead5read_29_disablecopyonread_rmsprop_velocity_conv0_bias"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp5read_29_disablecopyonread_rmsprop_velocity_conv0_bias^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_30/DisableCopyOnReadDisableCopyOnRead4read_30_disablecopyonread_rmsprop_velocity_bn0_gamma"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp4read_30_disablecopyonread_rmsprop_velocity_bn0_gamma^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_31/DisableCopyOnReadDisableCopyOnRead3read_31_disablecopyonread_rmsprop_velocity_bn0_beta"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp3read_31_disablecopyonread_rmsprop_velocity_bn0_beta^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_32/DisableCopyOnReadDisableCopyOnRead7read_32_disablecopyonread_rmsprop_velocity_conv1_kernel"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp7read_32_disablecopyonread_rmsprop_velocity_conv1_kernel^Read_32/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*&
_output_shapes
: @�
Read_33/DisableCopyOnReadDisableCopyOnRead5read_33_disablecopyonread_rmsprop_velocity_conv1_bias"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp5read_33_disablecopyonread_rmsprop_velocity_conv1_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_34/DisableCopyOnReadDisableCopyOnRead4read_34_disablecopyonread_rmsprop_velocity_bn1_gamma"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp4read_34_disablecopyonread_rmsprop_velocity_bn1_gamma^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_35/DisableCopyOnReadDisableCopyOnRead3read_35_disablecopyonread_rmsprop_velocity_bn1_beta"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp3read_35_disablecopyonread_rmsprop_velocity_bn1_beta^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_36/DisableCopyOnReadDisableCopyOnRead7read_36_disablecopyonread_rmsprop_velocity_conv2_kernel"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp7read_36_disablecopyonread_rmsprop_velocity_conv2_kernel^Read_36/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@�*
dtype0x
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@�n
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*'
_output_shapes
:@��
Read_37/DisableCopyOnReadDisableCopyOnRead5read_37_disablecopyonread_rmsprop_velocity_conv2_bias"/device:CPU:0*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp5read_37_disablecopyonread_rmsprop_velocity_conv2_bias^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_38/DisableCopyOnReadDisableCopyOnRead4read_38_disablecopyonread_rmsprop_velocity_bn2_gamma"/device:CPU:0*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOp4read_38_disablecopyonread_rmsprop_velocity_bn2_gamma^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_39/DisableCopyOnReadDisableCopyOnRead3read_39_disablecopyonread_rmsprop_velocity_bn2_beta"/device:CPU:0*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOp3read_39_disablecopyonread_rmsprop_velocity_bn2_beta^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_40/DisableCopyOnReadDisableCopyOnRead7read_40_disablecopyonread_rmsprop_velocity_conv3_kernel"/device:CPU:0*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOp7read_40_disablecopyonread_rmsprop_velocity_conv3_kernel^Read_40/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_41/DisableCopyOnReadDisableCopyOnRead5read_41_disablecopyonread_rmsprop_velocity_conv3_bias"/device:CPU:0*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOp5read_41_disablecopyonread_rmsprop_velocity_conv3_bias^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_42/DisableCopyOnReadDisableCopyOnRead4read_42_disablecopyonread_rmsprop_velocity_bn3_gamma"/device:CPU:0*
_output_shapes
 �
Read_42/ReadVariableOpReadVariableOp4read_42_disablecopyonread_rmsprop_velocity_bn3_gamma^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_43/DisableCopyOnReadDisableCopyOnRead3read_43_disablecopyonread_rmsprop_velocity_bn3_beta"/device:CPU:0*
_output_shapes
 �
Read_43/ReadVariableOpReadVariableOp3read_43_disablecopyonread_rmsprop_velocity_bn3_beta^Read_43/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_44/DisableCopyOnReadDisableCopyOnRead4read_44_disablecopyonread_rmsprop_velocity_fc_kernel"/device:CPU:0*
_output_shapes
 �
Read_44/ReadVariableOpReadVariableOp4read_44_disablecopyonread_rmsprop_velocity_fc_kernel^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_45/DisableCopyOnReadDisableCopyOnRead2read_45_disablecopyonread_rmsprop_velocity_fc_bias"/device:CPU:0*
_output_shapes
 �
Read_45/ReadVariableOpReadVariableOp2read_45_disablecopyonread_rmsprop_velocity_fc_bias^Read_45/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_46/DisableCopyOnReadDisableCopyOnRead!read_46_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_46/ReadVariableOpReadVariableOp!read_46_disablecopyonread_total_1^Read_46/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_47/DisableCopyOnReadDisableCopyOnRead!read_47_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_47/ReadVariableOpReadVariableOp!read_47_disablecopyonread_count_1^Read_47/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_48/DisableCopyOnReadDisableCopyOnReadread_48_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_48/ReadVariableOpReadVariableOpread_48_disablecopyonread_total^Read_48/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_49/DisableCopyOnReadDisableCopyOnReadread_49_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_49/ReadVariableOpReadVariableOpread_49_disablecopyonread_count^Read_49/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:3*
dtype0*�
value�B�3B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:3*
dtype0*y
valuepBn3B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *A
dtypes7
523	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_100Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_101IdentityIdentity_100:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "%
identity_101Identity_101:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=39

_output_shapes
: 

_user_specified_nameConst:%2!

_user_specified_namecount:%1!

_user_specified_nametotal:'0#
!
_user_specified_name	count_1:'/#
!
_user_specified_name	total_1:8.4
2
_user_specified_nameRMSprop/velocity/fc/bias::-6
4
_user_specified_nameRMSprop/velocity/fc/kernel:9,5
3
_user_specified_nameRMSprop/velocity/bn3/beta::+6
4
_user_specified_nameRMSprop/velocity/bn3/gamma:;*7
5
_user_specified_nameRMSprop/velocity/conv3/bias:=)9
7
_user_specified_nameRMSprop/velocity/conv3/kernel:9(5
3
_user_specified_nameRMSprop/velocity/bn2/beta::'6
4
_user_specified_nameRMSprop/velocity/bn2/gamma:;&7
5
_user_specified_nameRMSprop/velocity/conv2/bias:=%9
7
_user_specified_nameRMSprop/velocity/conv2/kernel:9$5
3
_user_specified_nameRMSprop/velocity/bn1/beta::#6
4
_user_specified_nameRMSprop/velocity/bn1/gamma:;"7
5
_user_specified_nameRMSprop/velocity/conv1/bias:=!9
7
_user_specified_nameRMSprop/velocity/conv1/kernel:9 5
3
_user_specified_nameRMSprop/velocity/bn0/beta::6
4
_user_specified_nameRMSprop/velocity/bn0/gamma:;7
5
_user_specified_nameRMSprop/velocity/conv0/bias:=9
7
_user_specified_nameRMSprop/velocity/conv0/kernel:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:'#
!
_user_specified_name	fc/bias:)%
#
_user_specified_name	fc/kernel:3/
-
_user_specified_namebn3/moving_variance:/+
)
_user_specified_namebn3/moving_mean:($
"
_user_specified_name
bn3/beta:)%
#
_user_specified_name	bn3/gamma:*&
$
_user_specified_name
conv3/bias:,(
&
_user_specified_nameconv3/kernel:3/
-
_user_specified_namebn2/moving_variance:/+
)
_user_specified_namebn2/moving_mean:($
"
_user_specified_name
bn2/beta:)%
#
_user_specified_name	bn2/gamma:*&
$
_user_specified_name
conv2/bias:,(
&
_user_specified_nameconv2/kernel:3/
-
_user_specified_namebn1/moving_variance:/+
)
_user_specified_namebn1/moving_mean:(
$
"
_user_specified_name
bn1/beta:)	%
#
_user_specified_name	bn1/gamma:*&
$
_user_specified_name
conv1/bias:,(
&
_user_specified_nameconv1/kernel:3/
-
_user_specified_namebn0/moving_variance:/+
)
_user_specified_namebn0/moving_mean:($
"
_user_specified_name
bn0/beta:)%
#
_user_specified_name	bn0/gamma:*&
$
_user_specified_name
conv0/bias:,(
&
_user_specified_nameconv0/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
>__inference_bn3_layer_call_and_return_conditional_losses_36392

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%���=�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
E
)__inference_max_pool1_layer_call_fn_37156

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_max_pool1_layer_call_and_return_conditional_losses_36287�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

�
@__inference_conv3_layer_call_and_return_conditional_losses_37291

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
#__inference_bn2_layer_call_fn_37216

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_bn2_layer_call_and_return_conditional_losses_36338�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name37212:%!

_user_specified_name37210:%!

_user_specified_name37208:%!

_user_specified_name37206:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
C
'__inference_flatten_layer_call_fn_37378

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_36580a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
`
D__inference_Avg_pool0_layer_call_and_return_conditional_losses_37171

inputs
identity�
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
H
,__inference_activation_3_layer_call_fn_37358

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_activation_3_layer_call_and_return_conditional_losses_36572i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
^
B__inference_flatten_layer_call_and_return_conditional_losses_37384

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
>__inference_bn1_layer_call_and_return_conditional_losses_37123

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%���=�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
e
I__inference_zero_padding2d_layer_call_and_return_conditional_losses_36959

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4������������������������������������w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

a
B__inference_dropout_layer_call_and_return_conditional_losses_37406

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
>__inference_bn0_layer_call_and_return_conditional_losses_37022

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
exponential_avg_factor%���=�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�
>__inference_bn1_layer_call_and_return_conditional_losses_37141

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
c
G__inference_activation_3_layer_call_and_return_conditional_losses_36572

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:����������c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
#__inference_signature_wrapper_36948
input_1!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@�

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:	�

unknown_16:	�&

unknown_17:��

unknown_18:	�

unknown_19:	�

unknown_20:	�

unknown_21:	�

unknown_22:	�

unknown_23:	�

unknown_24:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__wrapped_model_36137o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name36944:%!

_user_specified_name36942:%!

_user_specified_name36940:%!

_user_specified_name36938:%!

_user_specified_name36936:%!

_user_specified_name36934:%!

_user_specified_name36932:%!

_user_specified_name36930:%!

_user_specified_name36928:%!

_user_specified_name36926:%!

_user_specified_name36924:%!

_user_specified_name36922:%!

_user_specified_name36920:%!

_user_specified_name36918:%!

_user_specified_name36916:%!

_user_specified_name36914:%
!

_user_specified_name36912:%	!

_user_specified_name36910:%!

_user_specified_name36908:%!

_user_specified_name36906:%!

_user_specified_name36904:%!

_user_specified_name36902:%!

_user_specified_name36900:%!

_user_specified_name36898:%!

_user_specified_name36896:%!

_user_specified_name36894:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�
`
D__inference_max_pool1_layer_call_and_return_conditional_losses_37161

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
E
input_1:
serving_default_input_1:0�����������6
fc0
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer-8

layer-9
layer-10
layer_with_weights-4
layer-11
layer_with_weights-5
layer-12
layer-13
layer-14
layer_with_weights-6
layer-15
layer_with_weights-7
layer-16
layer-17
layer-18
layer-19
layer-20
layer_with_weights-8
layer-21
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
�
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses"
_tf_keras_layer
�
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses

,kernel
-bias
 ._jit_compiled_convolution_op"
_tf_keras_layer
�
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses
5axis
	6gamma
7beta
8moving_mean
9moving_variance"
_tf_keras_layer
�
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses"
_tf_keras_layer
�
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses"
_tf_keras_layer
�
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses

Lkernel
Mbias
 N_jit_compiled_convolution_op"
_tf_keras_layer
�
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses
Uaxis
	Vgamma
Wbeta
Xmoving_mean
Ymoving_variance"
_tf_keras_layer
�
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses"
_tf_keras_layer
�
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses"
_tf_keras_layer
�
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses"
_tf_keras_layer
�
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses

rkernel
sbias
 t_jit_compiled_convolution_op"
_tf_keras_layer
�
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
y__call__
*z&call_and_return_all_conditional_losses
{axis
	|gamma
}beta
~moving_mean
moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
,0
-1
62
73
84
95
L6
M7
V8
W9
X10
Y11
r12
s13
|14
}15
~16
17
�18
�19
�20
�21
�22
�23
�24
�25"
trackable_list_wrapper
�
,0
-1
62
73
L4
M5
V6
W7
r8
s9
|10
}11
�12
�13
�14
�15
�16
�17"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
3__inference_BrainDetectionModel_layer_call_fn_36751
3__inference_BrainDetectionModel_layer_call_fn_36808�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_36612
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_36694�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�B�
 __inference__wrapped_model_36137input_1"�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�
_variables
�_iterations
�_learning_rate
�_index_dict
�_velocities
�
_momentums
�_average_gradients
�_update_step_xla"
experimentalOptimizer
-
�serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
.__inference_zero_padding2d_layer_call_fn_36953�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
I__inference_zero_padding2d_layer_call_and_return_conditional_losses_36959�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
%__inference_conv0_layer_call_fn_36968�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
@__inference_conv0_layer_call_and_return_conditional_losses_36978�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
&:$ 2conv0/kernel
: 2
conv0/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
<
60
71
82
93"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
#__inference_bn0_layer_call_fn_36991
#__inference_bn0_layer_call_fn_37004�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
>__inference_bn0_layer_call_and_return_conditional_losses_37022
>__inference_bn0_layer_call_and_return_conditional_losses_37040�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
: 2	bn0/gamma
: 2bn0/beta
:  (2bn0/moving_mean
#:!  (2bn0/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_activation_layer_call_fn_37045�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_activation_layer_call_and_return_conditional_losses_37050�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_max_pool0_layer_call_fn_37055�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_max_pool0_layer_call_and_return_conditional_losses_37060�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
L0
M1"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
%__inference_conv1_layer_call_fn_37069�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
@__inference_conv1_layer_call_and_return_conditional_losses_37079�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
&:$ @2conv1/kernel
:@2
conv1/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
<
V0
W1
X2
Y3"
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
#__inference_bn1_layer_call_fn_37092
#__inference_bn1_layer_call_fn_37105�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
>__inference_bn1_layer_call_and_return_conditional_losses_37123
>__inference_bn1_layer_call_and_return_conditional_losses_37141�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
:@2	bn1/gamma
:@2bn1/beta
:@ (2bn1/moving_mean
#:!@ (2bn1/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_activation_1_layer_call_fn_37146�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_activation_1_layer_call_and_return_conditional_losses_37151�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_max_pool1_layer_call_fn_37156�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_max_pool1_layer_call_and_return_conditional_losses_37161�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_Avg_pool0_layer_call_fn_37166�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_Avg_pool0_layer_call_and_return_conditional_losses_37171�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
r0
s1"
trackable_list_wrapper
.
r0
s1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
%__inference_conv2_layer_call_fn_37180�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
@__inference_conv2_layer_call_and_return_conditional_losses_37190�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
':%@�2conv2/kernel
:�2
conv2/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
<
|0
}1
~2
3"
trackable_list_wrapper
.
|0
}1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
u	variables
vtrainable_variables
wregularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
#__inference_bn2_layer_call_fn_37203
#__inference_bn2_layer_call_fn_37216�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
>__inference_bn2_layer_call_and_return_conditional_losses_37234
>__inference_bn2_layer_call_and_return_conditional_losses_37252�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
:�2	bn2/gamma
:�2bn2/beta
 :� (2bn2/moving_mean
$:"� (2bn2/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_activation_2_layer_call_fn_37257�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_activation_2_layer_call_and_return_conditional_losses_37262�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_Avg_pool1_layer_call_fn_37267�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_Avg_pool1_layer_call_and_return_conditional_losses_37272�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
%__inference_conv3_layer_call_fn_37281�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
@__inference_conv3_layer_call_and_return_conditional_losses_37291�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
(:&��2conv3/kernel
:�2
conv3/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
#__inference_bn3_layer_call_fn_37304
#__inference_bn3_layer_call_fn_37317�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
>__inference_bn3_layer_call_and_return_conditional_losses_37335
>__inference_bn3_layer_call_and_return_conditional_losses_37353�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
:�2	bn3/gamma
:�2bn3/beta
 :� (2bn3/moving_mean
$:"� (2bn3/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_activation_3_layer_call_fn_37358�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_activation_3_layer_call_and_return_conditional_losses_37363�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_max_pool2_layer_call_fn_37368�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_max_pool2_layer_call_and_return_conditional_losses_37373�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_flatten_layer_call_fn_37378�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_flatten_layer_call_and_return_conditional_losses_37384�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
'__inference_dropout_layer_call_fn_37389
'__inference_dropout_layer_call_fn_37394�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
B__inference_dropout_layer_call_and_return_conditional_losses_37406
B__inference_dropout_layer_call_and_return_conditional_losses_37411�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
"__inference_fc_layer_call_fn_37420�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
=__inference_fc_layer_call_and_return_conditional_losses_37431�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
:	�2	fc/kernel
:2fc/bias
Z
80
91
X2
Y3
~4
5
�6
�7"
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
3__inference_BrainDetectionModel_layer_call_fn_36751input_1"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
3__inference_BrainDetectionModel_layer_call_fn_36808input_1"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_36612input_1"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_36694input_1"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�2��
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�B�
#__inference_signature_wrapper_36948input_1"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs�
	jinput_1
kwonlydefaults
 
annotations� *
 
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
�B�
.__inference_zero_padding2d_layer_call_fn_36953inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_zero_padding2d_layer_call_and_return_conditional_losses_36959inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
%__inference_conv0_layer_call_fn_36968inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_conv0_layer_call_and_return_conditional_losses_36978inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
#__inference_bn0_layer_call_fn_36991inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference_bn0_layer_call_fn_37004inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
>__inference_bn0_layer_call_and_return_conditional_losses_37022inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
>__inference_bn0_layer_call_and_return_conditional_losses_37040inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
*__inference_activation_layer_call_fn_37045inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_activation_layer_call_and_return_conditional_losses_37050inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_max_pool0_layer_call_fn_37055inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_max_pool0_layer_call_and_return_conditional_losses_37060inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
%__inference_conv1_layer_call_fn_37069inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_conv1_layer_call_and_return_conditional_losses_37079inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
X0
Y1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
#__inference_bn1_layer_call_fn_37092inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference_bn1_layer_call_fn_37105inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
>__inference_bn1_layer_call_and_return_conditional_losses_37123inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
>__inference_bn1_layer_call_and_return_conditional_losses_37141inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
,__inference_activation_1_layer_call_fn_37146inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_activation_1_layer_call_and_return_conditional_losses_37151inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_max_pool1_layer_call_fn_37156inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_max_pool1_layer_call_and_return_conditional_losses_37161inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_Avg_pool0_layer_call_fn_37166inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_Avg_pool0_layer_call_and_return_conditional_losses_37171inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
%__inference_conv2_layer_call_fn_37180inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_conv2_layer_call_and_return_conditional_losses_37190inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
~0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
#__inference_bn2_layer_call_fn_37203inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference_bn2_layer_call_fn_37216inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
>__inference_bn2_layer_call_and_return_conditional_losses_37234inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
>__inference_bn2_layer_call_and_return_conditional_losses_37252inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
,__inference_activation_2_layer_call_fn_37257inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_activation_2_layer_call_and_return_conditional_losses_37262inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_Avg_pool1_layer_call_fn_37267inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_Avg_pool1_layer_call_and_return_conditional_losses_37272inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
%__inference_conv3_layer_call_fn_37281inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_conv3_layer_call_and_return_conditional_losses_37291inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
#__inference_bn3_layer_call_fn_37304inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference_bn3_layer_call_fn_37317inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
>__inference_bn3_layer_call_and_return_conditional_losses_37335inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
>__inference_bn3_layer_call_and_return_conditional_losses_37353inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
,__inference_activation_3_layer_call_fn_37358inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_activation_3_layer_call_and_return_conditional_losses_37363inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_max_pool2_layer_call_fn_37368inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_max_pool2_layer_call_and_return_conditional_losses_37373inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
'__inference_flatten_layer_call_fn_37378inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_flatten_layer_call_and_return_conditional_losses_37384inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
'__inference_dropout_layer_call_fn_37389inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
'__inference_dropout_layer_call_fn_37394inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dropout_layer_call_and_return_conditional_losses_37406inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dropout_layer_call_and_return_conditional_losses_37411inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
"__inference_fc_layer_call_fn_37420inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
=__inference_fc_layer_call_and_return_conditional_losses_37431inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
5:3 2RMSprop/velocity/conv0/kernel
':% 2RMSprop/velocity/conv0/bias
&:$ 2RMSprop/velocity/bn0/gamma
%:# 2RMSprop/velocity/bn0/beta
5:3 @2RMSprop/velocity/conv1/kernel
':%@2RMSprop/velocity/conv1/bias
&:$@2RMSprop/velocity/bn1/gamma
%:#@2RMSprop/velocity/bn1/beta
6:4@�2RMSprop/velocity/conv2/kernel
(:&�2RMSprop/velocity/conv2/bias
':%�2RMSprop/velocity/bn2/gamma
&:$�2RMSprop/velocity/bn2/beta
7:5��2RMSprop/velocity/conv3/kernel
(:&�2RMSprop/velocity/conv3/bias
':%�2RMSprop/velocity/bn3/gamma
&:$�2RMSprop/velocity/bn3/beta
+:)	�2RMSprop/velocity/fc/kernel
$:"2RMSprop/velocity/fc/bias
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper�
D__inference_Avg_pool0_layer_call_and_return_conditional_losses_37171�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
)__inference_Avg_pool0_layer_call_fn_37166�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
D__inference_Avg_pool1_layer_call_and_return_conditional_losses_37272�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
)__inference_Avg_pool1_layer_call_fn_37267�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_36612�",-6789LMVWXYrs|}~��������B�?
8�5
+�(
input_1�����������
p

 
� ",�)
"�
tensor_0���������
� �
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_36694�",-6789LMVWXYrs|}~��������B�?
8�5
+�(
input_1�����������
p 

 
� ",�)
"�
tensor_0���������
� �
3__inference_BrainDetectionModel_layer_call_fn_36751�",-6789LMVWXYrs|}~��������B�?
8�5
+�(
input_1�����������
p

 
� "!�
unknown����������
3__inference_BrainDetectionModel_layer_call_fn_36808�",-6789LMVWXYrs|}~��������B�?
8�5
+�(
input_1�����������
p 

 
� "!�
unknown����������
 __inference__wrapped_model_36137�",-6789LMVWXYrs|}~��������:�7
0�-
+�(
input_1�����������
� "'�$
"
fc�
fc����������
G__inference_activation_1_layer_call_and_return_conditional_losses_37151o7�4
-�*
(�%
inputs���������99@
� "4�1
*�'
tensor_0���������99@
� �
,__inference_activation_1_layer_call_fn_37146d7�4
-�*
(�%
inputs���������99@
� ")�&
unknown���������99@�
G__inference_activation_2_layer_call_and_return_conditional_losses_37262q8�5
.�+
)�&
inputs����������
� "5�2
+�(
tensor_0����������
� �
,__inference_activation_2_layer_call_fn_37257f8�5
.�+
)�&
inputs����������
� "*�'
unknown�����������
G__inference_activation_3_layer_call_and_return_conditional_losses_37363q8�5
.�+
)�&
inputs����������
� "5�2
+�(
tensor_0����������
� �
,__inference_activation_3_layer_call_fn_37358f8�5
.�+
)�&
inputs����������
� "*�'
unknown�����������
E__inference_activation_layer_call_and_return_conditional_losses_37050s9�6
/�,
*�'
inputs����������� 
� "6�3
,�)
tensor_0����������� 
� �
*__inference_activation_layer_call_fn_37045h9�6
/�,
*�'
inputs����������� 
� "+�(
unknown����������� �
>__inference_bn0_layer_call_and_return_conditional_losses_37022�6789Q�N
G�D
:�7
inputs+��������������������������� 
p

 
� "F�C
<�9
tensor_0+��������������������������� 
� �
>__inference_bn0_layer_call_and_return_conditional_losses_37040�6789Q�N
G�D
:�7
inputs+��������������������������� 
p 

 
� "F�C
<�9
tensor_0+��������������������������� 
� �
#__inference_bn0_layer_call_fn_36991�6789Q�N
G�D
:�7
inputs+��������������������������� 
p

 
� ";�8
unknown+��������������������������� �
#__inference_bn0_layer_call_fn_37004�6789Q�N
G�D
:�7
inputs+��������������������������� 
p 

 
� ";�8
unknown+��������������������������� �
>__inference_bn1_layer_call_and_return_conditional_losses_37123�VWXYQ�N
G�D
:�7
inputs+���������������������������@
p

 
� "F�C
<�9
tensor_0+���������������������������@
� �
>__inference_bn1_layer_call_and_return_conditional_losses_37141�VWXYQ�N
G�D
:�7
inputs+���������������������������@
p 

 
� "F�C
<�9
tensor_0+���������������������������@
� �
#__inference_bn1_layer_call_fn_37092�VWXYQ�N
G�D
:�7
inputs+���������������������������@
p

 
� ";�8
unknown+���������������������������@�
#__inference_bn1_layer_call_fn_37105�VWXYQ�N
G�D
:�7
inputs+���������������������������@
p 

 
� ";�8
unknown+���������������������������@�
>__inference_bn2_layer_call_and_return_conditional_losses_37234�|}~R�O
H�E
;�8
inputs,����������������������������
p

 
� "G�D
=�:
tensor_0,����������������������������
� �
>__inference_bn2_layer_call_and_return_conditional_losses_37252�|}~R�O
H�E
;�8
inputs,����������������������������
p 

 
� "G�D
=�:
tensor_0,����������������������������
� �
#__inference_bn2_layer_call_fn_37203�|}~R�O
H�E
;�8
inputs,����������������������������
p

 
� "<�9
unknown,�����������������������������
#__inference_bn2_layer_call_fn_37216�|}~R�O
H�E
;�8
inputs,����������������������������
p 

 
� "<�9
unknown,�����������������������������
>__inference_bn3_layer_call_and_return_conditional_losses_37335�����R�O
H�E
;�8
inputs,����������������������������
p

 
� "G�D
=�:
tensor_0,����������������������������
� �
>__inference_bn3_layer_call_and_return_conditional_losses_37353�����R�O
H�E
;�8
inputs,����������������������������
p 

 
� "G�D
=�:
tensor_0,����������������������������
� �
#__inference_bn3_layer_call_fn_37304�����R�O
H�E
;�8
inputs,����������������������������
p

 
� "<�9
unknown,�����������������������������
#__inference_bn3_layer_call_fn_37317�����R�O
H�E
;�8
inputs,����������������������������
p 

 
� "<�9
unknown,�����������������������������
@__inference_conv0_layer_call_and_return_conditional_losses_36978w,-9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0����������� 
� �
%__inference_conv0_layer_call_fn_36968l,-9�6
/�,
*�'
inputs�����������
� "+�(
unknown����������� �
@__inference_conv1_layer_call_and_return_conditional_losses_37079sLM7�4
-�*
(�%
inputs���������;; 
� "4�1
*�'
tensor_0���������99@
� �
%__inference_conv1_layer_call_fn_37069hLM7�4
-�*
(�%
inputs���������;; 
� ")�&
unknown���������99@�
@__inference_conv2_layer_call_and_return_conditional_losses_37190trs7�4
-�*
(�%
inputs���������@
� "5�2
+�(
tensor_0����������
� �
%__inference_conv2_layer_call_fn_37180irs7�4
-�*
(�%
inputs���������@
� "*�'
unknown�����������
@__inference_conv3_layer_call_and_return_conditional_losses_37291w��8�5
.�+
)�&
inputs����������
� "5�2
+�(
tensor_0����������
� �
%__inference_conv3_layer_call_fn_37281l��8�5
.�+
)�&
inputs����������
� "*�'
unknown�����������
B__inference_dropout_layer_call_and_return_conditional_losses_37406e4�1
*�'
!�
inputs����������
p
� "-�*
#� 
tensor_0����������
� �
B__inference_dropout_layer_call_and_return_conditional_losses_37411e4�1
*�'
!�
inputs����������
p 
� "-�*
#� 
tensor_0����������
� �
'__inference_dropout_layer_call_fn_37389Z4�1
*�'
!�
inputs����������
p
� ""�
unknown�����������
'__inference_dropout_layer_call_fn_37394Z4�1
*�'
!�
inputs����������
p 
� ""�
unknown�����������
=__inference_fc_layer_call_and_return_conditional_losses_37431f��0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������
� �
"__inference_fc_layer_call_fn_37420[��0�-
&�#
!�
inputs����������
� "!�
unknown����������
B__inference_flatten_layer_call_and_return_conditional_losses_37384i8�5
.�+
)�&
inputs����������
� "-�*
#� 
tensor_0����������
� �
'__inference_flatten_layer_call_fn_37378^8�5
.�+
)�&
inputs����������
� ""�
unknown�����������
D__inference_max_pool0_layer_call_and_return_conditional_losses_37060�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
)__inference_max_pool0_layer_call_fn_37055�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
D__inference_max_pool1_layer_call_and_return_conditional_losses_37161�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
)__inference_max_pool1_layer_call_fn_37156�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
D__inference_max_pool2_layer_call_and_return_conditional_losses_37373�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
)__inference_max_pool2_layer_call_fn_37368�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
#__inference_signature_wrapper_36948�",-6789LMVWXYrs|}~��������E�B
� 
;�8
6
input_1+�(
input_1�����������"'�$
"
fc�
fc����������
I__inference_zero_padding2d_layer_call_and_return_conditional_losses_36959�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
.__inference_zero_padding2d_layer_call_fn_36953�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4������������������������������������