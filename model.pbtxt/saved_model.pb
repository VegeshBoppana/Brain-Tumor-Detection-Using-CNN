┤─
Ѕ┘
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ѕ
╝
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
ђ
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
Џ
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
resourceѕ
ч
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
epsilonfloat%иЛ8"&
exponential_avg_factorfloat%  ђ?";
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
ѓ
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
є
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( ѕ
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
dtypetypeѕ
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
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
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
┴
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
executor_typestring ѕе
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
░
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.15.02v2.15.0-rc1-8-g6887368d6d48╩М
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
ј
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
ѓ
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
ђ
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
І
	fc/kernelVarHandleOp*
_output_shapes
: *

debug_name
fc/kernel/*
dtype0*
shape:	ђ*
shared_name	fc/kernel
h
fc/kernel/Read/ReadVariableOpReadVariableOp	fc/kernel*
_output_shapes
:	ђ*
dtype0
Ц
bn3/moving_varianceVarHandleOp*
_output_shapes
: *$

debug_namebn3/moving_variance/*
dtype0*
shape:ђ*$
shared_namebn3/moving_variance
x
'bn3/moving_variance/Read/ReadVariableOpReadVariableOpbn3/moving_variance*
_output_shapes	
:ђ*
dtype0
Ў
bn3/moving_meanVarHandleOp*
_output_shapes
: * 

debug_namebn3/moving_mean/*
dtype0*
shape:ђ* 
shared_namebn3/moving_mean
p
#bn3/moving_mean/Read/ReadVariableOpReadVariableOpbn3/moving_mean*
_output_shapes	
:ђ*
dtype0
ё
bn3/betaVarHandleOp*
_output_shapes
: *

debug_name	bn3/beta/*
dtype0*
shape:ђ*
shared_name
bn3/beta
b
bn3/beta/Read/ReadVariableOpReadVariableOpbn3/beta*
_output_shapes	
:ђ*
dtype0
Є
	bn3/gammaVarHandleOp*
_output_shapes
: *

debug_name
bn3/gamma/*
dtype0*
shape:ђ*
shared_name	bn3/gamma
d
bn3/gamma/Read/ReadVariableOpReadVariableOp	bn3/gamma*
_output_shapes	
:ђ*
dtype0
і

conv3/biasVarHandleOp*
_output_shapes
: *

debug_nameconv3/bias/*
dtype0*
shape:ђ*
shared_name
conv3/bias
f
conv3/bias/Read/ReadVariableOpReadVariableOp
conv3/bias*
_output_shapes	
:ђ*
dtype0
Ю
conv3/kernelVarHandleOp*
_output_shapes
: *

debug_nameconv3/kernel/*
dtype0*
shape:ђђ*
shared_nameconv3/kernel
w
 conv3/kernel/Read/ReadVariableOpReadVariableOpconv3/kernel*(
_output_shapes
:ђђ*
dtype0
Ц
bn2/moving_varianceVarHandleOp*
_output_shapes
: *$

debug_namebn2/moving_variance/*
dtype0*
shape:ђ*$
shared_namebn2/moving_variance
x
'bn2/moving_variance/Read/ReadVariableOpReadVariableOpbn2/moving_variance*
_output_shapes	
:ђ*
dtype0
Ў
bn2/moving_meanVarHandleOp*
_output_shapes
: * 

debug_namebn2/moving_mean/*
dtype0*
shape:ђ* 
shared_namebn2/moving_mean
p
#bn2/moving_mean/Read/ReadVariableOpReadVariableOpbn2/moving_mean*
_output_shapes	
:ђ*
dtype0
ё
bn2/betaVarHandleOp*
_output_shapes
: *

debug_name	bn2/beta/*
dtype0*
shape:ђ*
shared_name
bn2/beta
b
bn2/beta/Read/ReadVariableOpReadVariableOpbn2/beta*
_output_shapes	
:ђ*
dtype0
Є
	bn2/gammaVarHandleOp*
_output_shapes
: *

debug_name
bn2/gamma/*
dtype0*
shape:ђ*
shared_name	bn2/gamma
d
bn2/gamma/Read/ReadVariableOpReadVariableOp	bn2/gamma*
_output_shapes	
:ђ*
dtype0
і

conv2/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2/bias/*
dtype0*
shape:ђ*
shared_name
conv2/bias
f
conv2/bias/Read/ReadVariableOpReadVariableOp
conv2/bias*
_output_shapes	
:ђ*
dtype0
ю
conv2/kernelVarHandleOp*
_output_shapes
: *

debug_nameconv2/kernel/*
dtype0*
shape:@ђ*
shared_nameconv2/kernel
v
 conv2/kernel/Read/ReadVariableOpReadVariableOpconv2/kernel*'
_output_shapes
:@ђ*
dtype0
ц
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
ў
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
Ѓ
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
є
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
Ѕ

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
Џ
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
ц
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
ў
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
Ѓ
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
є
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
Ѕ

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
Џ
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
ј
serving_default_input_1Placeholder*1
_output_shapes
:         ­­*
dtype0*&
shape:         ­­
═
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
:         *<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *,
f'R%
#__inference_signature_wrapper_95718

NoOpNoOp
пЇ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*њЇ
valueЄЇBЃЇ Bчї
Ё
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
signatures
# _self_saveable_object_factories*
'
#!_self_saveable_object_factories* 
│
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses
#(_self_saveable_object_factories* 
ь
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses

/kernel
0bias
#1_self_saveable_object_factories
 2_jit_compiled_convolution_op*
Щ
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses
9axis
	:gamma
;beta
<moving_mean
=moving_variance
#>_self_saveable_object_factories*
│
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses
#E_self_saveable_object_factories* 
│
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses
#L_self_saveable_object_factories* 
ь
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses

Skernel
Tbias
#U_self_saveable_object_factories
 V_jit_compiled_convolution_op*
Щ
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses
]axis
	^gamma
_beta
`moving_mean
amoving_variance
#b_self_saveable_object_factories*
│
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses
#i_self_saveable_object_factories* 
│
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses
#p_self_saveable_object_factories* 
│
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses
#w_self_saveable_object_factories* 
№
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses

~kernel
bias
$ђ_self_saveable_object_factories
!Ђ_jit_compiled_convolution_op*
є
ѓ	variables
Ѓtrainable_variables
ёregularization_losses
Ё	keras_api
є__call__
+Є&call_and_return_all_conditional_losses
	ѕaxis

Ѕgamma
	іbeta
Іmoving_mean
їmoving_variance
$Ї_self_saveable_object_factories*
║
ј	variables
Јtrainable_variables
љregularization_losses
Љ	keras_api
њ__call__
+Њ&call_and_return_all_conditional_losses
$ћ_self_saveable_object_factories* 
║
Ћ	variables
ќtrainable_variables
Ќregularization_losses
ў	keras_api
Ў__call__
+џ&call_and_return_all_conditional_losses
$Џ_self_saveable_object_factories* 
э
ю	variables
Юtrainable_variables
ъregularization_losses
Ъ	keras_api
а__call__
+А&call_and_return_all_conditional_losses
бkernel
	Бbias
$ц_self_saveable_object_factories
!Ц_jit_compiled_convolution_op*
є
д	variables
Дtrainable_variables
еregularization_losses
Е	keras_api
ф__call__
+Ф&call_and_return_all_conditional_losses
	гaxis

Гgamma
	«beta
»moving_mean
░moving_variance
$▒_self_saveable_object_factories*
║
▓	variables
│trainable_variables
┤regularization_losses
х	keras_api
Х__call__
+и&call_and_return_all_conditional_losses
$И_self_saveable_object_factories* 
║
╣	variables
║trainable_variables
╗regularization_losses
╝	keras_api
й__call__
+Й&call_and_return_all_conditional_losses
$┐_self_saveable_object_factories* 
║
└	variables
┴trainable_variables
┬regularization_losses
├	keras_api
─__call__
+┼&call_and_return_all_conditional_losses
$к_self_saveable_object_factories* 
м
К	variables
╚trainable_variables
╔regularization_losses
╩	keras_api
╦__call__
+╠&call_and_return_all_conditional_losses
═_random_generator
$╬_self_saveable_object_factories* 
н
¤	variables
лtrainable_variables
Лregularization_losses
м	keras_api
М__call__
+н&call_and_return_all_conditional_losses
Нkernel
	оbias
$О_self_saveable_object_factories*
о
/0
01
:2
;3
<4
=5
S6
T7
^8
_9
`10
a11
~12
13
Ѕ14
і15
І16
ї17
б18
Б19
Г20
«21
»22
░23
Н24
о25*
њ
/0
01
:2
;3
S4
T5
^6
_7
~8
9
Ѕ10
і11
б12
Б13
Г14
«15
Н16
о17*
* 
х
пnon_trainable_variables
┘layers
┌metrics
 █layer_regularization_losses
▄layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Пtrace_0
яtrace_1* 

▀trace_0
Яtrace_1* 
* 
S
р
_variables
Р_iterations
с_learning_rate
С_update_step_xla*

тserving_default* 
* 
* 
* 
* 
* 
ќ
Тnon_trainable_variables
уlayers
Уmetrics
 жlayer_regularization_losses
Жlayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses* 

вtrace_0* 

Вtrace_0* 
* 

/0
01*

/0
01*
* 
ў
ьnon_trainable_variables
Ьlayers
№metrics
 ­layer_regularization_losses
ыlayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses*

Ыtrace_0* 

зtrace_0* 
\V
VARIABLE_VALUEconv0/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
conv0/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
 
:0
;1
<2
=3*

:0
;1*
* 
ў
Зnon_trainable_variables
шlayers
Шmetrics
 эlayer_regularization_losses
Эlayer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses*

щtrace_0
Щtrace_1* 

чtrace_0
Чtrace_1* 
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
* 
ќ
§non_trainable_variables
■layers
 metrics
 ђlayer_regularization_losses
Ђlayer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses* 

ѓtrace_0* 

Ѓtrace_0* 
* 
* 
* 
* 
ќ
ёnon_trainable_variables
Ёlayers
єmetrics
 Єlayer_regularization_losses
ѕlayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses* 

Ѕtrace_0* 

іtrace_0* 
* 

S0
T1*

S0
T1*
* 
ў
Іnon_trainable_variables
їlayers
Їmetrics
 јlayer_regularization_losses
Јlayer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses*

љtrace_0* 

Љtrace_0* 
\V
VARIABLE_VALUEconv1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
conv1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
 
^0
_1
`2
a3*

^0
_1*
* 
ў
њnon_trainable_variables
Њlayers
ћmetrics
 Ћlayer_regularization_losses
ќlayer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses*

Ќtrace_0
ўtrace_1* 

Ўtrace_0
џtrace_1* 
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
* 
ќ
Џnon_trainable_variables
юlayers
Юmetrics
 ъlayer_regularization_losses
Ъlayer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses* 

аtrace_0* 

Аtrace_0* 
* 
* 
* 
* 
ќ
бnon_trainable_variables
Бlayers
цmetrics
 Цlayer_regularization_losses
дlayer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses* 

Дtrace_0* 

еtrace_0* 
* 
* 
* 
* 
ќ
Еnon_trainable_variables
фlayers
Фmetrics
 гlayer_regularization_losses
Гlayer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses* 

«trace_0* 

»trace_0* 
* 

~0
1*

~0
1*
* 
ў
░non_trainable_variables
▒layers
▓metrics
 │layer_regularization_losses
┤layer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses*

хtrace_0* 

Хtrace_0* 
\V
VARIABLE_VALUEconv2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
conv2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
$
Ѕ0
і1
І2
ї3*

Ѕ0
і1*
* 
ъ
иnon_trainable_variables
Иlayers
╣metrics
 ║layer_regularization_losses
╗layer_metrics
ѓ	variables
Ѓtrainable_variables
ёregularization_losses
є__call__
+Є&call_and_return_all_conditional_losses
'Є"call_and_return_conditional_losses*

╝trace_0
йtrace_1* 

Йtrace_0
┐trace_1* 
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
* 
ю
└non_trainable_variables
┴layers
┬metrics
 ├layer_regularization_losses
─layer_metrics
ј	variables
Јtrainable_variables
љregularization_losses
њ__call__
+Њ&call_and_return_all_conditional_losses
'Њ"call_and_return_conditional_losses* 

┼trace_0* 

кtrace_0* 
* 
* 
* 
* 
ю
Кnon_trainable_variables
╚layers
╔metrics
 ╩layer_regularization_losses
╦layer_metrics
Ћ	variables
ќtrainable_variables
Ќregularization_losses
Ў__call__
+џ&call_and_return_all_conditional_losses
'џ"call_and_return_conditional_losses* 

╠trace_0* 

═trace_0* 
* 

б0
Б1*

б0
Б1*
* 
ъ
╬non_trainable_variables
¤layers
лmetrics
 Лlayer_regularization_losses
мlayer_metrics
ю	variables
Юtrainable_variables
ъregularization_losses
а__call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses*

Мtrace_0* 

нtrace_0* 
\V
VARIABLE_VALUEconv3/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
conv3/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
$
Г0
«1
»2
░3*

Г0
«1*
* 
ъ
Нnon_trainable_variables
оlayers
Оmetrics
 пlayer_regularization_losses
┘layer_metrics
д	variables
Дtrainable_variables
еregularization_losses
ф__call__
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses*

┌trace_0
█trace_1* 

▄trace_0
Пtrace_1* 
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
* 
ю
яnon_trainable_variables
▀layers
Яmetrics
 рlayer_regularization_losses
Рlayer_metrics
▓	variables
│trainable_variables
┤regularization_losses
Х__call__
+и&call_and_return_all_conditional_losses
'и"call_and_return_conditional_losses* 

сtrace_0* 

Сtrace_0* 
* 
* 
* 
* 
ю
тnon_trainable_variables
Тlayers
уmetrics
 Уlayer_regularization_losses
жlayer_metrics
╣	variables
║trainable_variables
╗regularization_losses
й__call__
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses* 

Жtrace_0* 

вtrace_0* 
* 
* 
* 
* 
ю
Вnon_trainable_variables
ьlayers
Ьmetrics
 №layer_regularization_losses
­layer_metrics
└	variables
┴trainable_variables
┬regularization_losses
─__call__
+┼&call_and_return_all_conditional_losses
'┼"call_and_return_conditional_losses* 

ыtrace_0* 

Ыtrace_0* 
* 
* 
* 
* 
ю
зnon_trainable_variables
Зlayers
шmetrics
 Шlayer_regularization_losses
эlayer_metrics
К	variables
╚trainable_variables
╔regularization_losses
╦__call__
+╠&call_and_return_all_conditional_losses
'╠"call_and_return_conditional_losses* 

Эtrace_0
щtrace_1* 

Щtrace_0
чtrace_1* 
(
$Ч_self_saveable_object_factories* 
* 

Н0
о1*

Н0
о1*
* 
ъ
§non_trainable_variables
■layers
 metrics
 ђlayer_regularization_losses
Ђlayer_metrics
¤	variables
лtrainable_variables
Лregularization_losses
М__call__
+н&call_and_return_all_conditional_losses
'н"call_and_return_conditional_losses*

ѓtrace_0* 

Ѓtrace_0* 
YS
VARIABLE_VALUE	fc/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEfc/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
@
<0
=1
`2
a3
І4
ї5
»6
░7*
ф
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
ё0
Ё1*
* 
* 
* 
* 
* 
* 

Р0*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
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
<0
=1*
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
`0
a1*
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

І0
ї1*
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
»0
░1*
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
* 
<
є	variables
Є	keras_api

ѕtotal

Ѕcount*
M
і	variables
І	keras_api

їtotal

Їcount
ј
_fn_kwargs*

ѕ0
Ѕ1*

є	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

ї0
Ї1*

і	variables*
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
▄
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv0/kernel
conv0/bias	bn0/gammabn0/betabn0/moving_meanbn0/moving_varianceconv1/kernel
conv1/bias	bn1/gammabn1/betabn1/moving_meanbn1/moving_varianceconv2/kernel
conv2/bias	bn2/gammabn2/betabn2/moving_meanbn2/moving_varianceconv3/kernel
conv3/bias	bn3/gammabn3/betabn3/moving_meanbn3/moving_variance	fc/kernelfc/bias	iterationlearning_ratetotal_1count_1totalcountConst*-
Tin&
$2"*
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
GPU 2J 8ѓ *'
f"R 
__inference__traced_save_96415
О
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv0/kernel
conv0/bias	bn0/gammabn0/betabn0/moving_meanbn0/moving_varianceconv1/kernel
conv1/bias	bn1/gammabn1/betabn1/moving_meanbn1/moving_varianceconv2/kernel
conv2/bias	bn2/gammabn2/betabn2/moving_meanbn2/moving_varianceconv3/kernel
conv3/bias	bn3/gammabn3/betabn3/moving_meanbn3/moving_variance	fc/kernelfc/bias	iterationlearning_ratetotal_1count_1totalcount*,
Tin%
#2!*
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
GPU 2J 8ѓ **
f%R#
!__inference__traced_restore_96520љЗ
р	
Й
#__inference_bn1_layer_call_fn_95862

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityѕбStatefulPartitionedCallЁ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_bn1_layer_call_and_return_conditional_losses_95008Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name95858:%!

_user_specified_name95856:%!

_user_specified_name95854:%!

_user_specified_name95852:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
═
Ї
>__inference_bn3_layer_call_and_return_conditional_losses_96123

inputs&
readvariableop_resource:	ђ(
readvariableop_1_resource:	ђ7
(fusedbatchnormv3_readvariableop_resource:	ђ9
*fusedbatchnormv3_readvariableop_1_resource:	ђ
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:ђ*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:ђ*
dtype0Ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           ђї
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 2F
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
.:,                           ђ
 
_user_specified_nameinputs
ы
a
E__inference_activation_layer_call_and_return_conditional_losses_95820

inputs
identityP
ReluReluinputs*
T0*1
_output_shapes
:         ЬЬ d
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:         ЬЬ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЬЬ :Y U
1
_output_shapes
:         ЬЬ 
 
_user_specified_nameinputs
љ
ю
%__inference_conv2_layer_call_fn_95950

inputs"
unknown:@ђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_conv2_layer_call_and_return_conditional_losses_95292x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         ђ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name95946:%!

_user_specified_name95944:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ы
a
E__inference_activation_layer_call_and_return_conditional_losses_95248

inputs
identityP
ReluReluinputs*
T0*1
_output_shapes
:         ЬЬ d
IdentityIdentityRelu:activations:0*
T0*1
_output_shapes
:         ЬЬ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЬЬ :Y U
1
_output_shapes
:         ЬЬ 
 
_user_specified_nameinputs
№
c
G__inference_activation_3_layer_call_and_return_conditional_losses_95342

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:         ђc
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
ї
`
D__inference_max_pool1_layer_call_and_return_conditional_losses_95057

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
К

№
=__inference_fc_layer_call_and_return_conditional_losses_95375

inputs1
matmul_readvariableop_resource:	ђ-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 20
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
:         ђ
 
_user_specified_nameinputs
Ю
C
'__inference_dropout_layer_call_fn_96164

inputs
identity«
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_95456a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ђ:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
с	
Й
#__inference_bn1_layer_call_fn_95875

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityѕбStatefulPartitionedCallЄ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_bn1_layer_call_and_return_conditional_losses_95026Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name95871:%!

_user_specified_name95869:%!

_user_specified_name95867:%!

_user_specified_name95865:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ф
E
)__inference_max_pool0_layer_call_fn_95825

inputs
identityм
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_max_pool0_layer_call_and_return_conditional_losses_94985Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
н

щ
@__inference_conv1_layer_call_and_return_conditional_losses_95260

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         99@*
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
:         99@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         99@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ;; : : 20
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
:         ;; 
 
_user_specified_nameinputs
ї
`
D__inference_max_pool0_layer_call_and_return_conditional_losses_94985

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
▓Џ
З
 __inference__wrapped_model_94907
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
8braindetectionmodel_conv2_conv2d_readvariableop_resource:@ђH
9braindetectionmodel_conv2_biasadd_readvariableop_resource:	ђ>
/braindetectionmodel_bn2_readvariableop_resource:	ђ@
1braindetectionmodel_bn2_readvariableop_1_resource:	ђO
@braindetectionmodel_bn2_fusedbatchnormv3_readvariableop_resource:	ђQ
Bbraindetectionmodel_bn2_fusedbatchnormv3_readvariableop_1_resource:	ђT
8braindetectionmodel_conv3_conv2d_readvariableop_resource:ђђH
9braindetectionmodel_conv3_biasadd_readvariableop_resource:	ђ>
/braindetectionmodel_bn3_readvariableop_resource:	ђ@
1braindetectionmodel_bn3_readvariableop_1_resource:	ђO
@braindetectionmodel_bn3_fusedbatchnormv3_readvariableop_resource:	ђQ
Bbraindetectionmodel_bn3_fusedbatchnormv3_readvariableop_1_resource:	ђH
5braindetectionmodel_fc_matmul_readvariableop_resource:	ђD
6braindetectionmodel_fc_biasadd_readvariableop_resource:
identityѕб7BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOpб9BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp_1б&BrainDetectionModel/bn0/ReadVariableOpб(BrainDetectionModel/bn0/ReadVariableOp_1б7BrainDetectionModel/bn1/FusedBatchNormV3/ReadVariableOpб9BrainDetectionModel/bn1/FusedBatchNormV3/ReadVariableOp_1б&BrainDetectionModel/bn1/ReadVariableOpб(BrainDetectionModel/bn1/ReadVariableOp_1б7BrainDetectionModel/bn2/FusedBatchNormV3/ReadVariableOpб9BrainDetectionModel/bn2/FusedBatchNormV3/ReadVariableOp_1б&BrainDetectionModel/bn2/ReadVariableOpб(BrainDetectionModel/bn2/ReadVariableOp_1б7BrainDetectionModel/bn3/FusedBatchNormV3/ReadVariableOpб9BrainDetectionModel/bn3/FusedBatchNormV3/ReadVariableOp_1б&BrainDetectionModel/bn3/ReadVariableOpб(BrainDetectionModel/bn3/ReadVariableOp_1б0BrainDetectionModel/conv0/BiasAdd/ReadVariableOpб/BrainDetectionModel/conv0/Conv2D/ReadVariableOpб0BrainDetectionModel/conv1/BiasAdd/ReadVariableOpб/BrainDetectionModel/conv1/Conv2D/ReadVariableOpб0BrainDetectionModel/conv2/BiasAdd/ReadVariableOpб/BrainDetectionModel/conv2/Conv2D/ReadVariableOpб0BrainDetectionModel/conv3/BiasAdd/ReadVariableOpб/BrainDetectionModel/conv3/Conv2D/ReadVariableOpб-BrainDetectionModel/fc/BiasAdd/ReadVariableOpб,BrainDetectionModel/fc/MatMul/ReadVariableOpа
/BrainDetectionModel/zero_padding2d/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                             г
&BrainDetectionModel/zero_padding2d/PadPadinput_18BrainDetectionModel/zero_padding2d/Pad/paddings:output:0*
T0*1
_output_shapes
:         ЗЗ░
/BrainDetectionModel/conv0/Conv2D/ReadVariableOpReadVariableOp8braindetectionmodel_conv0_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0щ
 BrainDetectionModel/conv0/Conv2DConv2D/BrainDetectionModel/zero_padding2d/Pad:output:07BrainDetectionModel/conv0/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЬЬ *
paddingVALID*
strides
д
0BrainDetectionModel/conv0/BiasAdd/ReadVariableOpReadVariableOp9braindetectionmodel_conv0_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0═
!BrainDetectionModel/conv0/BiasAddBiasAdd)BrainDetectionModel/conv0/Conv2D:output:08BrainDetectionModel/conv0/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЬЬ њ
&BrainDetectionModel/bn0/ReadVariableOpReadVariableOp/braindetectionmodel_bn0_readvariableop_resource*
_output_shapes
: *
dtype0ќ
(BrainDetectionModel/bn0/ReadVariableOp_1ReadVariableOp1braindetectionmodel_bn0_readvariableop_1_resource*
_output_shapes
: *
dtype0┤
7BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOpReadVariableOp@braindetectionmodel_bn0_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0И
9BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbraindetectionmodel_bn0_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0н
(BrainDetectionModel/bn0/FusedBatchNormV3FusedBatchNormV3*BrainDetectionModel/conv0/BiasAdd:output:0.BrainDetectionModel/bn0/ReadVariableOp:value:00BrainDetectionModel/bn0/ReadVariableOp_1:value:0?BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp:value:0ABrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         ЬЬ : : : : :*
epsilon%oЃ:*
is_training( Ћ
#BrainDetectionModel/activation/ReluRelu,BrainDetectionModel/bn0/FusedBatchNormV3:y:0*
T0*1
_output_shapes
:         ЬЬ л
%BrainDetectionModel/max_pool0/MaxPoolMaxPool1BrainDetectionModel/activation/Relu:activations:0*/
_output_shapes
:         ;; *
ksize
*
paddingVALID*
strides
░
/BrainDetectionModel/conv1/Conv2D/ReadVariableOpReadVariableOp8braindetectionmodel_conv1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ш
 BrainDetectionModel/conv1/Conv2DConv2D.BrainDetectionModel/max_pool0/MaxPool:output:07BrainDetectionModel/conv1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         99@*
paddingVALID*
strides
д
0BrainDetectionModel/conv1/BiasAdd/ReadVariableOpReadVariableOp9braindetectionmodel_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╦
!BrainDetectionModel/conv1/BiasAddBiasAdd)BrainDetectionModel/conv1/Conv2D:output:08BrainDetectionModel/conv1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         99@њ
&BrainDetectionModel/bn1/ReadVariableOpReadVariableOp/braindetectionmodel_bn1_readvariableop_resource*
_output_shapes
:@*
dtype0ќ
(BrainDetectionModel/bn1/ReadVariableOp_1ReadVariableOp1braindetectionmodel_bn1_readvariableop_1_resource*
_output_shapes
:@*
dtype0┤
7BrainDetectionModel/bn1/FusedBatchNormV3/ReadVariableOpReadVariableOp@braindetectionmodel_bn1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
9BrainDetectionModel/bn1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbraindetectionmodel_bn1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0м
(BrainDetectionModel/bn1/FusedBatchNormV3FusedBatchNormV3*BrainDetectionModel/conv1/BiasAdd:output:0.BrainDetectionModel/bn1/ReadVariableOp:value:00BrainDetectionModel/bn1/ReadVariableOp_1:value:0?BrainDetectionModel/bn1/FusedBatchNormV3/ReadVariableOp:value:0ABrainDetectionModel/bn1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         99@:@:@:@:@:*
epsilon%oЃ:*
is_training( Ћ
%BrainDetectionModel/activation_1/ReluRelu,BrainDetectionModel/bn1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         99@м
%BrainDetectionModel/max_pool1/MaxPoolMaxPool3BrainDetectionModel/activation_1/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
о
%BrainDetectionModel/Avg_pool0/AvgPoolAvgPool.BrainDetectionModel/max_pool1/MaxPool:output:0*
T0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
▒
/BrainDetectionModel/conv2/Conv2D/ReadVariableOpReadVariableOp8braindetectionmodel_conv2_conv2d_readvariableop_resource*'
_output_shapes
:@ђ*
dtype0э
 BrainDetectionModel/conv2/Conv2DConv2D.BrainDetectionModel/Avg_pool0/AvgPool:output:07BrainDetectionModel/conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingVALID*
strides
Д
0BrainDetectionModel/conv2/BiasAdd/ReadVariableOpReadVariableOp9braindetectionmodel_conv2_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0╠
!BrainDetectionModel/conv2/BiasAddBiasAdd)BrainDetectionModel/conv2/Conv2D:output:08BrainDetectionModel/conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђЊ
&BrainDetectionModel/bn2/ReadVariableOpReadVariableOp/braindetectionmodel_bn2_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ќ
(BrainDetectionModel/bn2/ReadVariableOp_1ReadVariableOp1braindetectionmodel_bn2_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0х
7BrainDetectionModel/bn2/FusedBatchNormV3/ReadVariableOpReadVariableOp@braindetectionmodel_bn2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0╣
9BrainDetectionModel/bn2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbraindetectionmodel_bn2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0О
(BrainDetectionModel/bn2/FusedBatchNormV3FusedBatchNormV3*BrainDetectionModel/conv2/BiasAdd:output:0.BrainDetectionModel/bn2/ReadVariableOp:value:00BrainDetectionModel/bn2/ReadVariableOp_1:value:0?BrainDetectionModel/bn2/FusedBatchNormV3/ReadVariableOp:value:0ABrainDetectionModel/bn2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
is_training( ќ
%BrainDetectionModel/activation_2/ReluRelu,BrainDetectionModel/bn2/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:         ђ▄
%BrainDetectionModel/Avg_pool1/AvgPoolAvgPool3BrainDetectionModel/activation_2/Relu:activations:0*
T0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
▓
/BrainDetectionModel/conv3/Conv2D/ReadVariableOpReadVariableOp8braindetectionmodel_conv3_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype0э
 BrainDetectionModel/conv3/Conv2DConv2D.BrainDetectionModel/Avg_pool1/AvgPool:output:07BrainDetectionModel/conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingVALID*
strides
Д
0BrainDetectionModel/conv3/BiasAdd/ReadVariableOpReadVariableOp9braindetectionmodel_conv3_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0╠
!BrainDetectionModel/conv3/BiasAddBiasAdd)BrainDetectionModel/conv3/Conv2D:output:08BrainDetectionModel/conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђЊ
&BrainDetectionModel/bn3/ReadVariableOpReadVariableOp/braindetectionmodel_bn3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ќ
(BrainDetectionModel/bn3/ReadVariableOp_1ReadVariableOp1braindetectionmodel_bn3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0х
7BrainDetectionModel/bn3/FusedBatchNormV3/ReadVariableOpReadVariableOp@braindetectionmodel_bn3_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0╣
9BrainDetectionModel/bn3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbraindetectionmodel_bn3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0О
(BrainDetectionModel/bn3/FusedBatchNormV3FusedBatchNormV3*BrainDetectionModel/conv3/BiasAdd:output:0.BrainDetectionModel/bn3/ReadVariableOp:value:00BrainDetectionModel/bn3/ReadVariableOp_1:value:0?BrainDetectionModel/bn3/FusedBatchNormV3/ReadVariableOp:value:0ABrainDetectionModel/bn3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
is_training( ќ
%BrainDetectionModel/activation_3/ReluRelu,BrainDetectionModel/bn3/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:         ђМ
%BrainDetectionModel/max_pool2/MaxPoolMaxPool3BrainDetectionModel/activation_3/Relu:activations:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
r
!BrainDetectionModel/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"    ђ   й
#BrainDetectionModel/flatten/ReshapeReshape.BrainDetectionModel/max_pool2/MaxPool:output:0*BrainDetectionModel/flatten/Const:output:0*
T0*(
_output_shapes
:         ђЉ
$BrainDetectionModel/dropout/IdentityIdentity,BrainDetectionModel/flatten/Reshape:output:0*
T0*(
_output_shapes
:         ђБ
,BrainDetectionModel/fc/MatMul/ReadVariableOpReadVariableOp5braindetectionmodel_fc_matmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype0Й
BrainDetectionModel/fc/MatMulMatMul-BrainDetectionModel/dropout/Identity:output:04BrainDetectionModel/fc/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         а
-BrainDetectionModel/fc/BiasAdd/ReadVariableOpReadVariableOp6braindetectionmodel_fc_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╗
BrainDetectionModel/fc/BiasAddBiasAdd'BrainDetectionModel/fc/MatMul:product:05BrainDetectionModel/fc/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
BrainDetectionModel/fc/SigmoidSigmoid'BrainDetectionModel/fc/BiasAdd:output:0*
T0*'
_output_shapes
:         q
IdentityIdentity"BrainDetectionModel/fc/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         й

NoOpNoOp8^BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp:^BrainDetectionModel/bn0/FusedBatchNormV3/ReadVariableOp_1'^BrainDetectionModel/bn0/ReadVariableOp)^BrainDetectionModel/bn0/ReadVariableOp_18^BrainDetectionModel/bn1/FusedBatchNormV3/ReadVariableOp:^BrainDetectionModel/bn1/FusedBatchNormV3/ReadVariableOp_1'^BrainDetectionModel/bn1/ReadVariableOp)^BrainDetectionModel/bn1/ReadVariableOp_18^BrainDetectionModel/bn2/FusedBatchNormV3/ReadVariableOp:^BrainDetectionModel/bn2/FusedBatchNormV3/ReadVariableOp_1'^BrainDetectionModel/bn2/ReadVariableOp)^BrainDetectionModel/bn2/ReadVariableOp_18^BrainDetectionModel/bn3/FusedBatchNormV3/ReadVariableOp:^BrainDetectionModel/bn3/FusedBatchNormV3/ReadVariableOp_1'^BrainDetectionModel/bn3/ReadVariableOp)^BrainDetectionModel/bn3/ReadVariableOp_11^BrainDetectionModel/conv0/BiasAdd/ReadVariableOp0^BrainDetectionModel/conv0/Conv2D/ReadVariableOp1^BrainDetectionModel/conv1/BiasAdd/ReadVariableOp0^BrainDetectionModel/conv1/Conv2D/ReadVariableOp1^BrainDetectionModel/conv2/BiasAdd/ReadVariableOp0^BrainDetectionModel/conv2/Conv2D/ReadVariableOp1^BrainDetectionModel/conv3/BiasAdd/ReadVariableOp0^BrainDetectionModel/conv3/Conv2D/ReadVariableOp.^BrainDetectionModel/fc/BiasAdd/ReadVariableOp-^BrainDetectionModel/fc/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:         ­­: : : : : : : : : : : : : : : : : : : : : : : : : : 2v
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
:         ­­
!
_user_specified_name	input_1
ж	
┬
#__inference_bn2_layer_call_fn_95973

inputs
unknown:	ђ
	unknown_0:	ђ
	unknown_1:	ђ
	unknown_2:	ђ
identityѕбStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_bn2_layer_call_and_return_conditional_losses_95090і
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           ђ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name95969:%!

_user_specified_name95967:%!

_user_specified_name95965:%!

_user_specified_name95963:j f
B
_output_shapes0
.:,                           ђ
 
_user_specified_nameinputs
у
e
I__inference_zero_padding2d_layer_call_and_return_conditional_losses_94913

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
6:4                                    w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
▀

Ч
@__inference_conv3_layer_call_and_return_conditional_losses_95323

inputs:
conv2d_readvariableop_resource:ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype0Џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђh
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:         ђS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ђ: : 20
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
:         ђ
 
_user_specified_nameinputs
═
Ї
>__inference_bn2_layer_call_and_return_conditional_losses_95108

inputs&
readvariableop_resource:	ђ(
readvariableop_1_resource:	ђ7
(fusedbatchnormv3_readvariableop_resource:	ђ9
*fusedbatchnormv3_readvariableop_1_resource:	ђ
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:ђ*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:ђ*
dtype0Ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           ђї
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 2F
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
.:,                           ђ
 
_user_specified_nameinputs
┘
`
B__inference_dropout_layer_call_and_return_conditional_losses_96181

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         ђ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         ђ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ђ:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
ьX
 
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_95382
input_1%
conv0_95230: 
conv0_95232: 
	bn0_95235: 
	bn0_95237: 
	bn0_95239: 
	bn0_95241: %
conv1_95261: @
conv1_95263:@
	bn1_95266:@
	bn1_95268:@
	bn1_95270:@
	bn1_95272:@&
conv2_95293:@ђ
conv2_95295:	ђ
	bn2_95298:	ђ
	bn2_95300:	ђ
	bn2_95302:	ђ
	bn2_95304:	ђ'
conv3_95324:ђђ
conv3_95326:	ђ
	bn3_95329:	ђ
	bn3_95331:	ђ
	bn3_95333:	ђ
	bn3_95335:	ђ
fc_95376:	ђ
fc_95378:
identityѕбbn0/StatefulPartitionedCallбbn1/StatefulPartitionedCallбbn2/StatefulPartitionedCallбbn3/StatefulPartitionedCallбconv0/StatefulPartitionedCallбconv1/StatefulPartitionedCallбconv2/StatefulPartitionedCallбconv3/StatefulPartitionedCallбdropout/StatefulPartitionedCallбfc/StatefulPartitionedCall╬
zero_padding2d/PartitionedCallPartitionedCallinput_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЗЗ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_zero_padding2d_layer_call_and_return_conditional_losses_94913ї
conv0/StatefulPartitionedCallStatefulPartitionedCall'zero_padding2d/PartitionedCall:output:0conv0_95230conv0_95232*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_conv0_layer_call_and_return_conditional_losses_95229Џ
bn0/StatefulPartitionedCallStatefulPartitionedCall&conv0/StatefulPartitionedCall:output:0	bn0_95235	bn0_95237	bn0_95239	bn0_95241*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_bn0_layer_call_and_return_conditional_losses_94936с
activation/PartitionedCallPartitionedCall$bn0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_95248я
max_pool0/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ;; * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_max_pool0_layer_call_and_return_conditional_losses_94985Ё
conv1/StatefulPartitionedCallStatefulPartitionedCall"max_pool0/PartitionedCall:output:0conv1_95261conv1_95263*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         99@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_conv1_layer_call_and_return_conditional_losses_95260Ў
bn1/StatefulPartitionedCallStatefulPartitionedCall&conv1/StatefulPartitionedCall:output:0	bn1_95266	bn1_95268	bn1_95270	bn1_95272*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         99@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_bn1_layer_call_and_return_conditional_losses_95008т
activation_1/PartitionedCallPartitionedCall$bn1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         99@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_95279Я
max_pool1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_max_pool1_layer_call_and_return_conditional_losses_95057П
Avg_pool0/PartitionedCallPartitionedCall"max_pool1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_Avg_pool0_layer_call_and_return_conditional_losses_95067є
conv2/StatefulPartitionedCallStatefulPartitionedCall"Avg_pool0/PartitionedCall:output:0conv2_95293conv2_95295*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_conv2_layer_call_and_return_conditional_losses_95292џ
bn2/StatefulPartitionedCallStatefulPartitionedCall&conv2/StatefulPartitionedCall:output:0	bn2_95298	bn2_95300	bn2_95302	bn2_95304*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_bn2_layer_call_and_return_conditional_losses_95090Т
activation_2/PartitionedCallPartitionedCall$bn2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_activation_2_layer_call_and_return_conditional_losses_95311р
Avg_pool1/PartitionedCallPartitionedCall%activation_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_Avg_pool1_layer_call_and_return_conditional_losses_95139є
conv3/StatefulPartitionedCallStatefulPartitionedCall"Avg_pool1/PartitionedCall:output:0conv3_95324conv3_95326*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_conv3_layer_call_and_return_conditional_losses_95323џ
bn3/StatefulPartitionedCallStatefulPartitionedCall&conv3/StatefulPartitionedCall:output:0	bn3_95329	bn3_95331	bn3_95333	bn3_95335*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_bn3_layer_call_and_return_conditional_losses_95162Т
activation_3/PartitionedCallPartitionedCall$bn3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_activation_3_layer_call_and_return_conditional_losses_95342р
max_pool2/PartitionedCallPartitionedCall%activation_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_max_pool2_layer_call_and_return_conditional_losses_95211м
flatten/PartitionedCallPartitionedCall"max_pool2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_95350Я
dropout/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_95363э
fc/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0fc_95376fc_95378*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *F
fAR?
=__inference_fc_layer_call_and_return_conditional_losses_95375r
IdentityIdentity#fc/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ┘
NoOpNoOp^bn0/StatefulPartitionedCall^bn1/StatefulPartitionedCall^bn2/StatefulPartitionedCall^bn3/StatefulPartitionedCall^conv0/StatefulPartitionedCall^conv1/StatefulPartitionedCall^conv2/StatefulPartitionedCall^conv3/StatefulPartitionedCall ^dropout/StatefulPartitionedCall^fc/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:         ­­: : : : : : : : : : : : : : : : : : : : : : : : : : 2:
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

_user_specified_name95378:%!

_user_specified_name95376:%!

_user_specified_name95335:%!

_user_specified_name95333:%!

_user_specified_name95331:%!

_user_specified_name95329:%!

_user_specified_name95326:%!

_user_specified_name95324:%!

_user_specified_name95304:%!

_user_specified_name95302:%!

_user_specified_name95300:%!

_user_specified_name95298:%!

_user_specified_name95295:%!

_user_specified_name95293:%!

_user_specified_name95272:%!

_user_specified_name95270:%
!

_user_specified_name95268:%	!

_user_specified_name95266:%!

_user_specified_name95263:%!

_user_specified_name95261:%!

_user_specified_name95241:%!

_user_specified_name95239:%!

_user_specified_name95237:%!

_user_specified_name95235:%!

_user_specified_name95232:%!

_user_specified_name95230:Z V
1
_output_shapes
:         ­­
!
_user_specified_name	input_1
й
Ѕ
>__inference_bn1_layer_call_and_return_conditional_losses_95911

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @ї
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2F
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
-:+                           @
 
_user_specified_nameinputs
й
Ѕ
>__inference_bn0_layer_call_and_return_conditional_losses_94954

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ї
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2F
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
-:+                            
 
_user_specified_nameinputs
в
c
G__inference_activation_1_layer_call_and_return_conditional_losses_95279

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:         99@b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:         99@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         99@:W S
/
_output_shapes
:         99@
 
_user_specified_nameinputs
К
F
*__inference_activation_layer_call_fn_95815

inputs
identity║
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_95248j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         ЬЬ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЬЬ :Y U
1
_output_shapes
:         ЬЬ 
 
_user_specified_nameinputs
ћ
џ
%__inference_conv0_layer_call_fn_95738

inputs!
unknown: 
	unknown_0: 
identityѕбStatefulPartitionedCall▀
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_conv0_layer_call_and_return_conditional_losses_95229y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         ЬЬ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ЗЗ: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name95734:%!

_user_specified_name95732:Y U
1
_output_shapes
:         ЗЗ
 
_user_specified_nameinputs
ф
E
)__inference_max_pool2_layer_call_fn_96138

inputs
identityм
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_max_pool2_layer_call_and_return_conditional_losses_95211Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Є
▒
>__inference_bn2_layer_call_and_return_conditional_losses_95090

inputs&
readvariableop_resource:	ђ(
readvariableop_1_resource:	ђ7
(fusedbatchnormv3_readvariableop_resource:	ђ9
*fusedbatchnormv3_readvariableop_1_resource:	ђ
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:ђ*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:ђ*
dtype0Ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
exponential_avg_factor%═╠╠=к
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(л
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           ђ░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 2$
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
.:,                           ђ
 
_user_specified_nameinputs
Є
▒
>__inference_bn3_layer_call_and_return_conditional_losses_96105

inputs&
readvariableop_resource:	ђ(
readvariableop_1_resource:	ђ7
(fusedbatchnormv3_readvariableop_resource:	ђ9
*fusedbatchnormv3_readvariableop_1_resource:	ђ
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:ђ*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:ђ*
dtype0Ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
exponential_avg_factor%═╠╠=к
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(л
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           ђ░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 2$
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
.:,                           ђ
 
_user_specified_nameinputs
с	
Й
#__inference_bn0_layer_call_fn_95774

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityѕбStatefulPartitionedCallЄ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_bn0_layer_call_and_return_conditional_losses_94954Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                            <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name95770:%!

_user_specified_name95768:%!

_user_specified_name95766:%!

_user_specified_name95764:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
ї
`
D__inference_max_pool0_layer_call_and_return_conditional_losses_95830

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
э
Г
>__inference_bn0_layer_call_and_return_conditional_losses_95792

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oЃ:*
exponential_avg_factor%═╠╠=к
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(л
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2$
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
-:+                            
 
_user_specified_nameinputs
в
c
G__inference_activation_1_layer_call_and_return_conditional_losses_95921

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:         99@b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:         99@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         99@:W S
/
_output_shapes
:         99@
 
_user_specified_nameinputs
ф
E
)__inference_max_pool1_layer_call_fn_95926

inputs
identityм
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_max_pool1_layer_call_and_return_conditional_losses_95057Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
н

щ
@__inference_conv1_layer_call_and_return_conditional_losses_95849

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         99@*
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
:         99@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         99@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ;; : : 20
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
:         ;; 
 
_user_specified_nameinputs
к
^
B__inference_flatten_layer_call_and_return_conditional_losses_95350

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    ђ   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         ђY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
Є
▒
>__inference_bn3_layer_call_and_return_conditional_losses_95162

inputs&
readvariableop_resource:	ђ(
readvariableop_1_resource:	ђ7
(fusedbatchnormv3_readvariableop_resource:	ђ9
*fusedbatchnormv3_readvariableop_1_resource:	ђ
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:ђ*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:ђ*
dtype0Ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
exponential_avg_factor%═╠╠=к
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(л
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           ђ░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 2$
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
.:,                           ђ
 
_user_specified_nameinputs
ї
`
D__inference_max_pool1_layer_call_and_return_conditional_losses_95931

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
№
c
G__inference_activation_2_layer_call_and_return_conditional_losses_95311

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:         ђc
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
═
Ї
>__inference_bn2_layer_call_and_return_conditional_losses_96022

inputs&
readvariableop_resource:	ђ(
readvariableop_1_resource:	ђ7
(fusedbatchnormv3_readvariableop_resource:	ђ9
*fusedbatchnormv3_readvariableop_1_resource:	ђ
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:ђ*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:ђ*
dtype0Ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           ђї
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 2F
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
.:,                           ђ
 
_user_specified_nameinputs
э
Г
>__inference_bn1_layer_call_and_return_conditional_losses_95893

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oЃ:*
exponential_avg_factor%═╠╠=к
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(л
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2$
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
-:+                           @
 
_user_specified_nameinputs
╦
`
'__inference_dropout_layer_call_fn_96159

inputs
identityѕбStatefulPartitionedCallЙ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_95363p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ђ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ђ22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
э
Г
>__inference_bn1_layer_call_and_return_conditional_losses_95008

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oЃ:*
exponential_avg_factor%═╠╠=к
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(л
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2$
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
-:+                           @
 
_user_specified_nameinputs
├
H
,__inference_activation_1_layer_call_fn_95916

inputs
identity║
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         99@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_95279h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         99@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         99@:W S
/
_output_shapes
:         99@
 
_user_specified_nameinputs
Ю

a
B__inference_dropout_layer_call_and_return_conditional_losses_96176

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█Х?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         ђQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::ь¤Ї
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎЎ>Д
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ћ
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:         ђb
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ђ:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
Њ
Ю
%__inference_conv3_layer_call_fn_96051

inputs#
unknown:ђђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_conv3_layer_call_and_return_conditional_losses_95323x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         ђ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name96047:%!

_user_specified_name96045:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
█

ч
@__inference_conv2_layer_call_and_return_conditional_losses_95292

inputs9
conv2d_readvariableop_resource:@ђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@ђ*
dtype0Џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђh
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:         ђS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
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
:         @
 
_user_specified_nameinputs
ф
E
)__inference_Avg_pool1_layer_call_fn_96037

inputs
identityм
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_Avg_pool1_layer_call_and_return_conditional_losses_95139Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
у
e
I__inference_zero_padding2d_layer_call_and_return_conditional_losses_95729

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
6:4                                    w
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ї
џ
%__inference_conv1_layer_call_fn_95839

inputs!
unknown: @
	unknown_0:@
identityѕбStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         99@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_conv1_layer_call_and_return_conditional_losses_95260w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         99@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ;; : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name95835:%!

_user_specified_name95833:W S
/
_output_shapes
:         ;; 
 
_user_specified_nameinputs
┘
`
B__inference_dropout_layer_call_and_return_conditional_losses_95456

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         ђ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         ђ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ђ:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
Ћ
`
D__inference_Avg_pool0_layer_call_and_return_conditional_losses_95941

inputs
identityФ
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Г
C
'__inference_flatten_layer_call_fn_96148

inputs
identity«
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_95350a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
┤
J
.__inference_zero_padding2d_layer_call_fn_95723

inputs
identityО
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_zero_padding2d_layer_call_and_return_conditional_losses_94913Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ї
`
D__inference_max_pool2_layer_call_and_return_conditional_losses_95211

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ћ
`
D__inference_Avg_pool1_layer_call_and_return_conditional_losses_96042

inputs
identityФ
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
█

ч
@__inference_conv2_layer_call_and_return_conditional_losses_95960

inputs9
conv2d_readvariableop_resource:@ђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@ђ*
dtype0Џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђh
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:         ђS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
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
:         @
 
_user_specified_nameinputs
в	
┬
#__inference_bn3_layer_call_fn_96087

inputs
unknown:	ђ
	unknown_0:	ђ
	unknown_1:	ђ
	unknown_2:	ђ
identityѕбStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           ђ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_bn3_layer_call_and_return_conditional_losses_95180і
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           ђ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name96083:%!

_user_specified_name96081:%!

_user_specified_name96079:%!

_user_specified_name96077:j f
B
_output_shapes0
.:,                           ђ
 
_user_specified_nameinputs
р
љ
"__inference_fc_layer_call_fn_96190

inputs
unknown:	ђ
	unknown_0:
identityѕбStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *F
fAR?
=__inference_fc_layer_call_and_return_conditional_losses_95375o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name96186:%!

_user_specified_name96184:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
Ю
Х
#__inference_signature_wrapper_95718
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

unknown_11:@ђ

unknown_12:	ђ

unknown_13:	ђ

unknown_14:	ђ

unknown_15:	ђ

unknown_16:	ђ&

unknown_17:ђђ

unknown_18:	ђ

unknown_19:	ђ

unknown_20:	ђ

unknown_21:	ђ

unknown_22:	ђ

unknown_23:	ђ

unknown_24:
identityѕбStatefulPartitionedCall§
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
:         *<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *)
f$R"
 __inference__wrapped_model_94907o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:         ­­: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name95714:%!

_user_specified_name95712:%!

_user_specified_name95710:%!

_user_specified_name95708:%!

_user_specified_name95706:%!

_user_specified_name95704:%!

_user_specified_name95702:%!

_user_specified_name95700:%!

_user_specified_name95698:%!

_user_specified_name95696:%!

_user_specified_name95694:%!

_user_specified_name95692:%!

_user_specified_name95690:%!

_user_specified_name95688:%!

_user_specified_name95686:%!

_user_specified_name95684:%
!

_user_specified_name95682:%	!

_user_specified_name95680:%!

_user_specified_name95678:%!

_user_specified_name95676:%!

_user_specified_name95674:%!

_user_specified_name95672:%!

_user_specified_name95670:%!

_user_specified_name95668:%!

_user_specified_name95666:%!

_user_specified_name95664:Z V
1
_output_shapes
:         ­­
!
_user_specified_name	input_1
э
Г
>__inference_bn0_layer_call_and_return_conditional_losses_94936

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oЃ:*
exponential_avg_factor%═╠╠=к
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(л
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2$
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
-:+                            
 
_user_specified_nameinputs
К
H
,__inference_activation_2_layer_call_fn_96027

inputs
identity╗
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_activation_2_layer_call_and_return_conditional_losses_95311i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
Ю

a
B__inference_dropout_layer_call_and_return_conditional_losses_95363

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█Х?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         ђQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::ь¤Ї
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎЎ>Д
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ћ
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:         ђb
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ђ:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
я

щ
@__inference_conv0_layer_call_and_return_conditional_losses_95748

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ю
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЬЬ *
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
:         ЬЬ i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:         ЬЬ S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ЗЗ: : 20
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
:         ЗЗ
 
_user_specified_nameinputs
К
H
,__inference_activation_3_layer_call_fn_96128

inputs
identity╗
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_activation_3_layer_call_and_return_conditional_losses_95342i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
═
Ї
>__inference_bn3_layer_call_and_return_conditional_losses_95180

inputs&
readvariableop_resource:	ђ(
readvariableop_1_resource:	ђ7
(fusedbatchnormv3_readvariableop_resource:	ђ9
*fusedbatchnormv3_readvariableop_1_resource:	ђ
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:ђ*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:ђ*
dtype0Ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           ђї
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 2F
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
.:,                           ђ
 
_user_specified_nameinputs
Є
▒
>__inference_bn2_layer_call_and_return_conditional_losses_96004

inputs&
readvariableop_resource:	ђ(
readvariableop_1_resource:	ђ7
(fusedbatchnormv3_readvariableop_resource:	ђ9
*fusedbatchnormv3_readvariableop_1_resource:	ђ
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:ђ*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:ђ*
dtype0Ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
exponential_avg_factor%═╠╠=к
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(л
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           ђ░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 2$
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
.:,                           ђ
 
_user_specified_nameinputs
й
Ѕ
>__inference_bn1_layer_call_and_return_conditional_losses_95026

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @ї
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2F
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
-:+                           @
 
_user_specified_nameinputs
ї
`
D__inference_max_pool2_layer_call_and_return_conditional_losses_96143

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
К

№
=__inference_fc_layer_call_and_return_conditional_losses_96201

inputs1
matmul_readvariableop_resource:	ђ-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 20
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
:         ђ
 
_user_specified_nameinputs
й
Ѕ
>__inference_bn0_layer_call_and_return_conditional_losses_95810

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ї
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2F
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
-:+                            
 
_user_specified_nameinputs
р	
Й
#__inference_bn0_layer_call_fn_95761

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityѕбStatefulPartitionedCallЁ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_bn0_layer_call_and_return_conditional_losses_94936Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                            <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name95757:%!

_user_specified_name95755:%!

_user_specified_name95753:%!

_user_specified_name95751:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
№
c
G__inference_activation_2_layer_call_and_return_conditional_losses_96032

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:         ђc
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
Чљ
Ч
!__inference__traced_restore_96520
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
 assignvariableop_12_conv2_kernel:@ђ-
assignvariableop_13_conv2_bias:	ђ,
assignvariableop_14_bn2_gamma:	ђ+
assignvariableop_15_bn2_beta:	ђ2
#assignvariableop_16_bn2_moving_mean:	ђ6
'assignvariableop_17_bn2_moving_variance:	ђ<
 assignvariableop_18_conv3_kernel:ђђ-
assignvariableop_19_conv3_bias:	ђ,
assignvariableop_20_bn3_gamma:	ђ+
assignvariableop_21_bn3_beta:	ђ2
#assignvariableop_22_bn3_moving_mean:	ђ6
'assignvariableop_23_bn3_moving_variance:	ђ0
assignvariableop_24_fc_kernel:	ђ)
assignvariableop_25_fc_bias:'
assignvariableop_26_iteration:	 +
!assignvariableop_27_learning_rate: %
assignvariableop_28_total_1: %
assignvariableop_29_count_1: #
assignvariableop_30_total: #
assignvariableop_31_count: 
identity_33ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_28бAssignVariableOp_29бAssignVariableOp_3бAssignVariableOp_30бAssignVariableOp_31бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9ъ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*─
value║Bи!B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH▓
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*U
valueLBJ!B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B к
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*џ
_output_shapesЄ
ё:::::::::::::::::::::::::::::::::*/
dtypes%
#2!	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:░
AssignVariableOpAssignVariableOpassignvariableop_conv0_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv0_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_2AssignVariableOpassignvariableop_2_bn0_gammaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_3AssignVariableOpassignvariableop_3_bn0_betaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_4AssignVariableOp"assignvariableop_4_bn0_moving_meanIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:й
AssignVariableOp_5AssignVariableOp&assignvariableop_5_bn0_moving_varianceIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_6AssignVariableOpassignvariableop_6_conv1_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_7AssignVariableOpassignvariableop_7_conv1_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_8AssignVariableOpassignvariableop_8_bn1_gammaIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_9AssignVariableOpassignvariableop_9_bn1_betaIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_10AssignVariableOp#assignvariableop_10_bn1_moving_meanIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_11AssignVariableOp'assignvariableop_11_bn1_moving_varianceIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_12AssignVariableOp assignvariableop_12_conv2_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_13AssignVariableOpassignvariableop_13_conv2_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_14AssignVariableOpassignvariableop_14_bn2_gammaIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:х
AssignVariableOp_15AssignVariableOpassignvariableop_15_bn2_betaIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_16AssignVariableOp#assignvariableop_16_bn2_moving_meanIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_17AssignVariableOp'assignvariableop_17_bn2_moving_varianceIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_18AssignVariableOp assignvariableop_18_conv3_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_19AssignVariableOpassignvariableop_19_conv3_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_20AssignVariableOpassignvariableop_20_bn3_gammaIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:х
AssignVariableOp_21AssignVariableOpassignvariableop_21_bn3_betaIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_22AssignVariableOp#assignvariableop_22_bn3_moving_meanIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_23AssignVariableOp'assignvariableop_23_bn3_moving_varianceIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_24AssignVariableOpassignvariableop_24_fc_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_25AssignVariableOpassignvariableop_25_fc_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0	*
_output_shapes
:Х
AssignVariableOp_26AssignVariableOpassignvariableop_26_iterationIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_27AssignVariableOp!assignvariableop_27_learning_rateIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_28AssignVariableOpassignvariableop_28_total_1Identity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_29AssignVariableOpassignvariableop_29_count_1Identity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_30AssignVariableOpassignvariableop_30_totalIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_31AssignVariableOpassignvariableop_31_countIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 Ј
Identity_32Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_33IdentityIdentity_32:output:0^NoOp_1*
T0*
_output_shapes
: п
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_33Identity_33:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_31AssignVariableOp_312(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:% !

_user_specified_namecount:%!

_user_specified_nametotal:'#
!
_user_specified_name	count_1:'#
!
_user_specified_name	total_1:-)
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
█
к
3__inference_BrainDetectionModel_layer_call_fn_95578
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

unknown_11:@ђ

unknown_12:	ђ

unknown_13:	ђ

unknown_14:	ђ

unknown_15:	ђ

unknown_16:	ђ&

unknown_17:ђђ

unknown_18:	ђ

unknown_19:	ђ

unknown_20:	ђ

unknown_21:	ђ

unknown_22:	ђ

unknown_23:	ђ

unknown_24:
identityѕбStatefulPartitionedCallФ
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
:         *<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *W
fRRP
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_95464o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:         ­­: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name95574:%!

_user_specified_name95572:%!

_user_specified_name95570:%!

_user_specified_name95568:%!

_user_specified_name95566:%!

_user_specified_name95564:%!

_user_specified_name95562:%!

_user_specified_name95560:%!

_user_specified_name95558:%!

_user_specified_name95556:%!

_user_specified_name95554:%!

_user_specified_name95552:%!

_user_specified_name95550:%!

_user_specified_name95548:%!

_user_specified_name95546:%!

_user_specified_name95544:%
!

_user_specified_name95542:%	!

_user_specified_name95540:%!

_user_specified_name95538:%!

_user_specified_name95536:%!

_user_specified_name95534:%!

_user_specified_name95532:%!

_user_specified_name95530:%!

_user_specified_name95528:%!

_user_specified_name95526:%!

_user_specified_name95524:Z V
1
_output_shapes
:         ­­
!
_user_specified_name	input_1
Ћ
`
D__inference_Avg_pool0_layer_call_and_return_conditional_losses_95067

inputs
identityФ
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ф
E
)__inference_Avg_pool0_layer_call_fn_95936

inputs
identityм
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_Avg_pool0_layer_call_and_return_conditional_losses_95067Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ж	
┬
#__inference_bn3_layer_call_fn_96074

inputs
unknown:	ђ
	unknown_0:	ђ
	unknown_1:	ђ
	unknown_2:	ђ
identityѕбStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_bn3_layer_call_and_return_conditional_losses_95162і
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           ђ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name96070:%!

_user_specified_name96068:%!

_user_specified_name96066:%!

_user_specified_name96064:j f
B
_output_shapes0
.:,                           ђ
 
_user_specified_nameinputs
ь­
┤
__inference__traced_save_96415
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
&read_12_disablecopyonread_conv2_kernel:@ђ3
$read_13_disablecopyonread_conv2_bias:	ђ2
#read_14_disablecopyonread_bn2_gamma:	ђ1
"read_15_disablecopyonread_bn2_beta:	ђ8
)read_16_disablecopyonread_bn2_moving_mean:	ђ<
-read_17_disablecopyonread_bn2_moving_variance:	ђB
&read_18_disablecopyonread_conv3_kernel:ђђ3
$read_19_disablecopyonread_conv3_bias:	ђ2
#read_20_disablecopyonread_bn3_gamma:	ђ1
"read_21_disablecopyonread_bn3_beta:	ђ8
)read_22_disablecopyonread_bn3_moving_mean:	ђ<
-read_23_disablecopyonread_bn3_moving_variance:	ђ6
#read_24_disablecopyonread_fc_kernel:	ђ/
!read_25_disablecopyonread_fc_bias:-
#read_26_disablecopyonread_iteration:	 1
'read_27_disablecopyonread_learning_rate: +
!read_28_disablecopyonread_total_1: +
!read_29_disablecopyonread_count_1: )
read_30_disablecopyonread_total: )
read_31_disablecopyonread_count: 
savev2_const
identity_65ѕбMergeV2CheckpointsбRead/DisableCopyOnReadбRead/ReadVariableOpбRead_1/DisableCopyOnReadбRead_1/ReadVariableOpбRead_10/DisableCopyOnReadбRead_10/ReadVariableOpбRead_11/DisableCopyOnReadбRead_11/ReadVariableOpбRead_12/DisableCopyOnReadбRead_12/ReadVariableOpбRead_13/DisableCopyOnReadбRead_13/ReadVariableOpбRead_14/DisableCopyOnReadбRead_14/ReadVariableOpбRead_15/DisableCopyOnReadбRead_15/ReadVariableOpбRead_16/DisableCopyOnReadбRead_16/ReadVariableOpбRead_17/DisableCopyOnReadбRead_17/ReadVariableOpбRead_18/DisableCopyOnReadбRead_18/ReadVariableOpбRead_19/DisableCopyOnReadбRead_19/ReadVariableOpбRead_2/DisableCopyOnReadбRead_2/ReadVariableOpбRead_20/DisableCopyOnReadбRead_20/ReadVariableOpбRead_21/DisableCopyOnReadбRead_21/ReadVariableOpбRead_22/DisableCopyOnReadбRead_22/ReadVariableOpбRead_23/DisableCopyOnReadбRead_23/ReadVariableOpбRead_24/DisableCopyOnReadбRead_24/ReadVariableOpбRead_25/DisableCopyOnReadбRead_25/ReadVariableOpбRead_26/DisableCopyOnReadбRead_26/ReadVariableOpбRead_27/DisableCopyOnReadбRead_27/ReadVariableOpбRead_28/DisableCopyOnReadбRead_28/ReadVariableOpбRead_29/DisableCopyOnReadбRead_29/ReadVariableOpбRead_3/DisableCopyOnReadбRead_3/ReadVariableOpбRead_30/DisableCopyOnReadбRead_30/ReadVariableOpбRead_31/DisableCopyOnReadбRead_31/ReadVariableOpбRead_4/DisableCopyOnReadбRead_4/ReadVariableOpбRead_5/DisableCopyOnReadбRead_5/ReadVariableOpбRead_6/DisableCopyOnReadбRead_6/ReadVariableOpбRead_7/DisableCopyOnReadбRead_7/ReadVariableOpбRead_8/DisableCopyOnReadбRead_8/ReadVariableOpбRead_9/DisableCopyOnReadбRead_9/ReadVariableOpw
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
_temp/partЂ
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
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: u
Read/DisableCopyOnReadDisableCopyOnRead#read_disablecopyonread_conv0_kernel"/device:CPU:0*
_output_shapes
 Д
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
 Ъ
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
 ъ
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
 Ю
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
 ц
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
: ђ
Read_5/DisableCopyOnReadDisableCopyOnRead,read_5_disablecopyonread_bn0_moving_variance"/device:CPU:0*
_output_shapes
 е
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
 Г
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
 Ъ
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
 ъ
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
 Ю
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
 Д
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
:@ѓ
Read_11/DisableCopyOnReadDisableCopyOnRead-read_11_disablecopyonread_bn1_moving_variance"/device:CPU:0*
_output_shapes
 Ф
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
 ▒
Read_12/ReadVariableOpReadVariableOp&read_12_disablecopyonread_conv2_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@ђ*
dtype0x
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@ђn
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*'
_output_shapes
:@ђy
Read_13/DisableCopyOnReadDisableCopyOnRead$read_13_disablecopyonread_conv2_bias"/device:CPU:0*
_output_shapes
 Б
Read_13/ReadVariableOpReadVariableOp$read_13_disablecopyonread_conv2_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђx
Read_14/DisableCopyOnReadDisableCopyOnRead#read_14_disablecopyonread_bn2_gamma"/device:CPU:0*
_output_shapes
 б
Read_14/ReadVariableOpReadVariableOp#read_14_disablecopyonread_bn2_gamma^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђw
Read_15/DisableCopyOnReadDisableCopyOnRead"read_15_disablecopyonread_bn2_beta"/device:CPU:0*
_output_shapes
 А
Read_15/ReadVariableOpReadVariableOp"read_15_disablecopyonread_bn2_beta^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђ~
Read_16/DisableCopyOnReadDisableCopyOnRead)read_16_disablecopyonread_bn2_moving_mean"/device:CPU:0*
_output_shapes
 е
Read_16/ReadVariableOpReadVariableOp)read_16_disablecopyonread_bn2_moving_mean^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђѓ
Read_17/DisableCopyOnReadDisableCopyOnRead-read_17_disablecopyonread_bn2_moving_variance"/device:CPU:0*
_output_shapes
 г
Read_17/ReadVariableOpReadVariableOp-read_17_disablecopyonread_bn2_moving_variance^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђ{
Read_18/DisableCopyOnReadDisableCopyOnRead&read_18_disablecopyonread_conv3_kernel"/device:CPU:0*
_output_shapes
 ▓
Read_18/ReadVariableOpReadVariableOp&read_18_disablecopyonread_conv3_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:ђђ*
dtype0y
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:ђђo
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*(
_output_shapes
:ђђy
Read_19/DisableCopyOnReadDisableCopyOnRead$read_19_disablecopyonread_conv3_bias"/device:CPU:0*
_output_shapes
 Б
Read_19/ReadVariableOpReadVariableOp$read_19_disablecopyonread_conv3_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђx
Read_20/DisableCopyOnReadDisableCopyOnRead#read_20_disablecopyonread_bn3_gamma"/device:CPU:0*
_output_shapes
 б
Read_20/ReadVariableOpReadVariableOp#read_20_disablecopyonread_bn3_gamma^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђw
Read_21/DisableCopyOnReadDisableCopyOnRead"read_21_disablecopyonread_bn3_beta"/device:CPU:0*
_output_shapes
 А
Read_21/ReadVariableOpReadVariableOp"read_21_disablecopyonread_bn3_beta^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђ~
Read_22/DisableCopyOnReadDisableCopyOnRead)read_22_disablecopyonread_bn3_moving_mean"/device:CPU:0*
_output_shapes
 е
Read_22/ReadVariableOpReadVariableOp)read_22_disablecopyonread_bn3_moving_mean^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђѓ
Read_23/DisableCopyOnReadDisableCopyOnRead-read_23_disablecopyonread_bn3_moving_variance"/device:CPU:0*
_output_shapes
 г
Read_23/ReadVariableOpReadVariableOp-read_23_disablecopyonread_bn3_moving_variance^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђx
Read_24/DisableCopyOnReadDisableCopyOnRead#read_24_disablecopyonread_fc_kernel"/device:CPU:0*
_output_shapes
 д
Read_24/ReadVariableOpReadVariableOp#read_24_disablecopyonread_fc_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	ђ*
dtype0p
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	ђf
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:	ђv
Read_25/DisableCopyOnReadDisableCopyOnRead!read_25_disablecopyonread_fc_bias"/device:CPU:0*
_output_shapes
 Ъ
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
 Ю
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
 А
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
: v
Read_28/DisableCopyOnReadDisableCopyOnRead!read_28_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 Џ
Read_28/ReadVariableOpReadVariableOp!read_28_disablecopyonread_total_1^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_29/DisableCopyOnReadDisableCopyOnRead!read_29_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 Џ
Read_29/ReadVariableOpReadVariableOp!read_29_disablecopyonread_count_1^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_30/DisableCopyOnReadDisableCopyOnReadread_30_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Ў
Read_30/ReadVariableOpReadVariableOpread_30_disablecopyonread_total^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_31/DisableCopyOnReadDisableCopyOnReadread_31_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Ў
Read_31/ReadVariableOpReadVariableOpread_31_disablecopyonread_count^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
: Џ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*─
value║Bи!B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH»
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*U
valueLBJ!B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B │
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 */
dtypes%
#2!	љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_64Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_65IdentityIdentity_64:output:0^NoOp*
T0*
_output_shapes
: ┐
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_65Identity_65:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
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
Read_31/ReadVariableOpRead_31/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=!9

_output_shapes
: 

_user_specified_nameConst:% !

_user_specified_namecount:%!

_user_specified_nametotal:'#
!
_user_specified_name	count_1:'#
!
_user_specified_name	total_1:-)
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
№
c
G__inference_activation_3_layer_call_and_return_conditional_losses_96133

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:         ђc
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
я

щ
@__inference_conv0_layer_call_and_return_conditional_losses_95229

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ю
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ЬЬ *
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
:         ЬЬ i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:         ЬЬ S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ЗЗ: : 20
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
:         ЗЗ
 
_user_specified_nameinputs
▀

Ч
@__inference_conv3_layer_call_and_return_conditional_losses_96061

inputs:
conv2d_readvariableop_resource:ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype0Џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђh
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:         ђS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ђ: : 20
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
:         ђ
 
_user_specified_nameinputs
НW
П
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_95464
input_1%
conv0_95386: 
conv0_95388: 
	bn0_95391: 
	bn0_95393: 
	bn0_95395: 
	bn0_95397: %
conv1_95402: @
conv1_95404:@
	bn1_95407:@
	bn1_95409:@
	bn1_95411:@
	bn1_95413:@&
conv2_95419:@ђ
conv2_95421:	ђ
	bn2_95424:	ђ
	bn2_95426:	ђ
	bn2_95428:	ђ
	bn2_95430:	ђ'
conv3_95435:ђђ
conv3_95437:	ђ
	bn3_95440:	ђ
	bn3_95442:	ђ
	bn3_95444:	ђ
	bn3_95446:	ђ
fc_95458:	ђ
fc_95460:
identityѕбbn0/StatefulPartitionedCallбbn1/StatefulPartitionedCallбbn2/StatefulPartitionedCallбbn3/StatefulPartitionedCallбconv0/StatefulPartitionedCallбconv1/StatefulPartitionedCallбconv2/StatefulPartitionedCallбconv3/StatefulPartitionedCallбfc/StatefulPartitionedCall╬
zero_padding2d/PartitionedCallPartitionedCallinput_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЗЗ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_zero_padding2d_layer_call_and_return_conditional_losses_94913ї
conv0/StatefulPartitionedCallStatefulPartitionedCall'zero_padding2d/PartitionedCall:output:0conv0_95386conv0_95388*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_conv0_layer_call_and_return_conditional_losses_95229Ю
bn0/StatefulPartitionedCallStatefulPartitionedCall&conv0/StatefulPartitionedCall:output:0	bn0_95391	bn0_95393	bn0_95395	bn0_95397*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_bn0_layer_call_and_return_conditional_losses_94954с
activation/PartitionedCallPartitionedCall$bn0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЬЬ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_95248я
max_pool0/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ;; * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_max_pool0_layer_call_and_return_conditional_losses_94985Ё
conv1/StatefulPartitionedCallStatefulPartitionedCall"max_pool0/PartitionedCall:output:0conv1_95402conv1_95404*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         99@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_conv1_layer_call_and_return_conditional_losses_95260Џ
bn1/StatefulPartitionedCallStatefulPartitionedCall&conv1/StatefulPartitionedCall:output:0	bn1_95407	bn1_95409	bn1_95411	bn1_95413*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         99@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_bn1_layer_call_and_return_conditional_losses_95026т
activation_1/PartitionedCallPartitionedCall$bn1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         99@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_95279Я
max_pool1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_max_pool1_layer_call_and_return_conditional_losses_95057П
Avg_pool0/PartitionedCallPartitionedCall"max_pool1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_Avg_pool0_layer_call_and_return_conditional_losses_95067є
conv2/StatefulPartitionedCallStatefulPartitionedCall"Avg_pool0/PartitionedCall:output:0conv2_95419conv2_95421*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_conv2_layer_call_and_return_conditional_losses_95292ю
bn2/StatefulPartitionedCallStatefulPartitionedCall&conv2/StatefulPartitionedCall:output:0	bn2_95424	bn2_95426	bn2_95428	bn2_95430*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_bn2_layer_call_and_return_conditional_losses_95108Т
activation_2/PartitionedCallPartitionedCall$bn2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_activation_2_layer_call_and_return_conditional_losses_95311р
Avg_pool1/PartitionedCallPartitionedCall%activation_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_Avg_pool1_layer_call_and_return_conditional_losses_95139є
conv3/StatefulPartitionedCallStatefulPartitionedCall"Avg_pool1/PartitionedCall:output:0conv3_95435conv3_95437*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_conv3_layer_call_and_return_conditional_losses_95323ю
bn3/StatefulPartitionedCallStatefulPartitionedCall&conv3/StatefulPartitionedCall:output:0	bn3_95440	bn3_95442	bn3_95444	bn3_95446*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_bn3_layer_call_and_return_conditional_losses_95180Т
activation_3/PartitionedCallPartitionedCall$bn3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_activation_3_layer_call_and_return_conditional_losses_95342р
max_pool2/PartitionedCallPartitionedCall%activation_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_max_pool2_layer_call_and_return_conditional_losses_95211м
flatten/PartitionedCallPartitionedCall"max_pool2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_95350л
dropout/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_95456№
fc/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0fc_95458fc_95460*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *F
fAR?
=__inference_fc_layer_call_and_return_conditional_losses_95375r
IdentityIdentity#fc/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         и
NoOpNoOp^bn0/StatefulPartitionedCall^bn1/StatefulPartitionedCall^bn2/StatefulPartitionedCall^bn3/StatefulPartitionedCall^conv0/StatefulPartitionedCall^conv1/StatefulPartitionedCall^conv2/StatefulPartitionedCall^conv3/StatefulPartitionedCall^fc/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:         ­­: : : : : : : : : : : : : : : : : : : : : : : : : : 2:
bn0/StatefulPartitionedCallbn0/StatefulPartitionedCall2:
bn1/StatefulPartitionedCallbn1/StatefulPartitionedCall2:
bn2/StatefulPartitionedCallbn2/StatefulPartitionedCall2:
bn3/StatefulPartitionedCallbn3/StatefulPartitionedCall2>
conv0/StatefulPartitionedCallconv0/StatefulPartitionedCall2>
conv1/StatefulPartitionedCallconv1/StatefulPartitionedCall2>
conv2/StatefulPartitionedCallconv2/StatefulPartitionedCall2>
conv3/StatefulPartitionedCallconv3/StatefulPartitionedCall28
fc/StatefulPartitionedCallfc/StatefulPartitionedCall:%!

_user_specified_name95460:%!

_user_specified_name95458:%!

_user_specified_name95446:%!

_user_specified_name95444:%!

_user_specified_name95442:%!

_user_specified_name95440:%!

_user_specified_name95437:%!

_user_specified_name95435:%!

_user_specified_name95430:%!

_user_specified_name95428:%!

_user_specified_name95426:%!

_user_specified_name95424:%!

_user_specified_name95421:%!

_user_specified_name95419:%!

_user_specified_name95413:%!

_user_specified_name95411:%
!

_user_specified_name95409:%	!

_user_specified_name95407:%!

_user_specified_name95404:%!

_user_specified_name95402:%!

_user_specified_name95397:%!

_user_specified_name95395:%!

_user_specified_name95393:%!

_user_specified_name95391:%!

_user_specified_name95388:%!

_user_specified_name95386:Z V
1
_output_shapes
:         ­­
!
_user_specified_name	input_1
М
к
3__inference_BrainDetectionModel_layer_call_fn_95521
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

unknown_11:@ђ

unknown_12:	ђ

unknown_13:	ђ

unknown_14:	ђ

unknown_15:	ђ

unknown_16:	ђ&

unknown_17:ђђ

unknown_18:	ђ

unknown_19:	ђ

unknown_20:	ђ

unknown_21:	ђ

unknown_22:	ђ

unknown_23:	ђ

unknown_24:
identityѕбStatefulPartitionedCallБ
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
:         *4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *W
fRRP
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_95382o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:         ­­: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name95517:%!

_user_specified_name95515:%!

_user_specified_name95513:%!

_user_specified_name95511:%!

_user_specified_name95509:%!

_user_specified_name95507:%!

_user_specified_name95505:%!

_user_specified_name95503:%!

_user_specified_name95501:%!

_user_specified_name95499:%!

_user_specified_name95497:%!

_user_specified_name95495:%!

_user_specified_name95493:%!

_user_specified_name95491:%!

_user_specified_name95489:%!

_user_specified_name95487:%
!

_user_specified_name95485:%	!

_user_specified_name95483:%!

_user_specified_name95481:%!

_user_specified_name95479:%!

_user_specified_name95477:%!

_user_specified_name95475:%!

_user_specified_name95473:%!

_user_specified_name95471:%!

_user_specified_name95469:%!

_user_specified_name95467:Z V
1
_output_shapes
:         ­­
!
_user_specified_name	input_1
к
^
B__inference_flatten_layer_call_and_return_conditional_losses_96154

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    ђ   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         ђY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
в	
┬
#__inference_bn2_layer_call_fn_95986

inputs
unknown:	ђ
	unknown_0:	ђ
	unknown_1:	ђ
	unknown_2:	ђ
identityѕбStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           ђ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_bn2_layer_call_and_return_conditional_losses_95108і
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           ђ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name95982:%!

_user_specified_name95980:%!

_user_specified_name95978:%!

_user_specified_name95976:j f
B
_output_shapes0
.:,                           ђ
 
_user_specified_nameinputs
Ћ
`
D__inference_Avg_pool1_layer_call_and_return_conditional_losses_95139

inputs
identityФ
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs"ьL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*»
serving_defaultЏ
E
input_1:
serving_default_input_1:0         ­­6
fc0
StatefulPartitionedCall:0         tensorflow/serving/predict:шн
ю
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
signatures
# _self_saveable_object_factories"
_tf_keras_network
D
#!_self_saveable_object_factories"
_tf_keras_input_layer
╩
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses
#(_self_saveable_object_factories"
_tf_keras_layer
ѓ
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses

/kernel
0bias
#1_self_saveable_object_factories
 2_jit_compiled_convolution_op"
_tf_keras_layer
Ј
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses
9axis
	:gamma
;beta
<moving_mean
=moving_variance
#>_self_saveable_object_factories"
_tf_keras_layer
╩
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses
#E_self_saveable_object_factories"
_tf_keras_layer
╩
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses
#L_self_saveable_object_factories"
_tf_keras_layer
ѓ
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses

Skernel
Tbias
#U_self_saveable_object_factories
 V_jit_compiled_convolution_op"
_tf_keras_layer
Ј
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses
]axis
	^gamma
_beta
`moving_mean
amoving_variance
#b_self_saveable_object_factories"
_tf_keras_layer
╩
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses
#i_self_saveable_object_factories"
_tf_keras_layer
╩
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses
#p_self_saveable_object_factories"
_tf_keras_layer
╩
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses
#w_self_saveable_object_factories"
_tf_keras_layer
ё
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses

~kernel
bias
$ђ_self_saveable_object_factories
!Ђ_jit_compiled_convolution_op"
_tf_keras_layer
Џ
ѓ	variables
Ѓtrainable_variables
ёregularization_losses
Ё	keras_api
є__call__
+Є&call_and_return_all_conditional_losses
	ѕaxis

Ѕgamma
	іbeta
Іmoving_mean
їmoving_variance
$Ї_self_saveable_object_factories"
_tf_keras_layer
Л
ј	variables
Јtrainable_variables
љregularization_losses
Љ	keras_api
њ__call__
+Њ&call_and_return_all_conditional_losses
$ћ_self_saveable_object_factories"
_tf_keras_layer
Л
Ћ	variables
ќtrainable_variables
Ќregularization_losses
ў	keras_api
Ў__call__
+џ&call_and_return_all_conditional_losses
$Џ_self_saveable_object_factories"
_tf_keras_layer
ї
ю	variables
Юtrainable_variables
ъregularization_losses
Ъ	keras_api
а__call__
+А&call_and_return_all_conditional_losses
бkernel
	Бbias
$ц_self_saveable_object_factories
!Ц_jit_compiled_convolution_op"
_tf_keras_layer
Џ
д	variables
Дtrainable_variables
еregularization_losses
Е	keras_api
ф__call__
+Ф&call_and_return_all_conditional_losses
	гaxis

Гgamma
	«beta
»moving_mean
░moving_variance
$▒_self_saveable_object_factories"
_tf_keras_layer
Л
▓	variables
│trainable_variables
┤regularization_losses
х	keras_api
Х__call__
+и&call_and_return_all_conditional_losses
$И_self_saveable_object_factories"
_tf_keras_layer
Л
╣	variables
║trainable_variables
╗regularization_losses
╝	keras_api
й__call__
+Й&call_and_return_all_conditional_losses
$┐_self_saveable_object_factories"
_tf_keras_layer
Л
└	variables
┴trainable_variables
┬regularization_losses
├	keras_api
─__call__
+┼&call_and_return_all_conditional_losses
$к_self_saveable_object_factories"
_tf_keras_layer
ж
К	variables
╚trainable_variables
╔regularization_losses
╩	keras_api
╦__call__
+╠&call_and_return_all_conditional_losses
═_random_generator
$╬_self_saveable_object_factories"
_tf_keras_layer
ж
¤	variables
лtrainable_variables
Лregularization_losses
м	keras_api
М__call__
+н&call_and_return_all_conditional_losses
Нkernel
	оbias
$О_self_saveable_object_factories"
_tf_keras_layer
Ы
/0
01
:2
;3
<4
=5
S6
T7
^8
_9
`10
a11
~12
13
Ѕ14
і15
І16
ї17
б18
Б19
Г20
«21
»22
░23
Н24
о25"
trackable_list_wrapper
«
/0
01
:2
;3
S4
T5
^6
_7
~8
9
Ѕ10
і11
б12
Б13
Г14
«15
Н16
о17"
trackable_list_wrapper
 "
trackable_list_wrapper
¤
пnon_trainable_variables
┘layers
┌metrics
 █layer_regularization_losses
▄layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
П
Пtrace_0
яtrace_12б
3__inference_BrainDetectionModel_layer_call_fn_95521
3__inference_BrainDetectionModel_layer_call_fn_95578х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zПtrace_0zяtrace_1
Њ
▀trace_0
Яtrace_12п
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_95382
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_95464х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z▀trace_0zЯtrace_1
╦B╚
 __inference__wrapped_model_94907input_1"ў
Љ▓Ї
FullArgSpec
argsџ

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
n
р
_variables
Р_iterations
с_learning_rate
С_update_step_xla"
experimentalOptimizer
-
тserving_default"
signature_map
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Тnon_trainable_variables
уlayers
Уmetrics
 жlayer_regularization_losses
Жlayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
Ж
вtrace_02╦
.__inference_zero_padding2d_layer_call_fn_95723ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zвtrace_0
Ё
Вtrace_02Т
I__inference_zero_padding2d_layer_call_and_return_conditional_losses_95729ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zВtrace_0
 "
trackable_dict_wrapper
.
/0
01"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
ьnon_trainable_variables
Ьlayers
№metrics
 ­layer_regularization_losses
ыlayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
р
Ыtrace_02┬
%__inference_conv0_layer_call_fn_95738ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЫtrace_0
Ч
зtrace_02П
@__inference_conv0_layer_call_and_return_conditional_losses_95748ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zзtrace_0
&:$ 2conv0/kernel
: 2
conv0/bias
 "
trackable_dict_wrapper
ф2Дц
Џ▓Ќ
FullArgSpec
argsџ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
<
:0
;1
<2
=3"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Зnon_trainable_variables
шlayers
Шmetrics
 эlayer_regularization_losses
Эlayer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
й
щtrace_0
Щtrace_12ѓ
#__inference_bn0_layer_call_fn_95761
#__inference_bn0_layer_call_fn_95774х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zщtrace_0zЩtrace_1
з
чtrace_0
Чtrace_12И
>__inference_bn0_layer_call_and_return_conditional_losses_95792
>__inference_bn0_layer_call_and_return_conditional_losses_95810х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zчtrace_0zЧtrace_1
 "
trackable_list_wrapper
: 2	bn0/gamma
: 2bn0/beta
:  (2bn0/moving_mean
#:!  (2bn0/moving_variance
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
§non_trainable_variables
■layers
 metrics
 ђlayer_regularization_losses
Ђlayer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
Т
ѓtrace_02К
*__inference_activation_layer_call_fn_95815ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zѓtrace_0
Ђ
Ѓtrace_02Р
E__inference_activation_layer_call_and_return_conditional_losses_95820ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЃtrace_0
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
ёnon_trainable_variables
Ёlayers
єmetrics
 Єlayer_regularization_losses
ѕlayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
т
Ѕtrace_02к
)__inference_max_pool0_layer_call_fn_95825ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЅtrace_0
ђ
іtrace_02р
D__inference_max_pool0_layer_call_and_return_conditional_losses_95830ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zіtrace_0
 "
trackable_dict_wrapper
.
S0
T1"
trackable_list_wrapper
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Іnon_trainable_variables
їlayers
Їmetrics
 јlayer_regularization_losses
Јlayer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
р
љtrace_02┬
%__inference_conv1_layer_call_fn_95839ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zљtrace_0
Ч
Љtrace_02П
@__inference_conv1_layer_call_and_return_conditional_losses_95849ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЉtrace_0
&:$ @2conv1/kernel
:@2
conv1/bias
 "
trackable_dict_wrapper
ф2Дц
Џ▓Ќ
FullArgSpec
argsџ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
<
^0
_1
`2
a3"
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
њnon_trainable_variables
Њlayers
ћmetrics
 Ћlayer_regularization_losses
ќlayer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
й
Ќtrace_0
ўtrace_12ѓ
#__inference_bn1_layer_call_fn_95862
#__inference_bn1_layer_call_fn_95875х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЌtrace_0zўtrace_1
з
Ўtrace_0
џtrace_12И
>__inference_bn1_layer_call_and_return_conditional_losses_95893
>__inference_bn1_layer_call_and_return_conditional_losses_95911х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЎtrace_0zџtrace_1
 "
trackable_list_wrapper
:@2	bn1/gamma
:@2bn1/beta
:@ (2bn1/moving_mean
#:!@ (2bn1/moving_variance
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Џnon_trainable_variables
юlayers
Юmetrics
 ъlayer_regularization_losses
Ъlayer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
У
аtrace_02╔
,__inference_activation_1_layer_call_fn_95916ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zаtrace_0
Ѓ
Аtrace_02С
G__inference_activation_1_layer_call_and_return_conditional_losses_95921ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zАtrace_0
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
бnon_trainable_variables
Бlayers
цmetrics
 Цlayer_regularization_losses
дlayer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
т
Дtrace_02к
)__inference_max_pool1_layer_call_fn_95926ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zДtrace_0
ђ
еtrace_02р
D__inference_max_pool1_layer_call_and_return_conditional_losses_95931ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zеtrace_0
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Еnon_trainable_variables
фlayers
Фmetrics
 гlayer_regularization_losses
Гlayer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
т
«trace_02к
)__inference_Avg_pool0_layer_call_fn_95936ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z«trace_0
ђ
»trace_02р
D__inference_Avg_pool0_layer_call_and_return_conditional_losses_95941ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z»trace_0
 "
trackable_dict_wrapper
.
~0
1"
trackable_list_wrapper
.
~0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
░non_trainable_variables
▒layers
▓metrics
 │layer_regularization_losses
┤layer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
р
хtrace_02┬
%__inference_conv2_layer_call_fn_95950ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zхtrace_0
Ч
Хtrace_02П
@__inference_conv2_layer_call_and_return_conditional_losses_95960ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zХtrace_0
':%@ђ2conv2/kernel
:ђ2
conv2/bias
 "
trackable_dict_wrapper
ф2Дц
Џ▓Ќ
FullArgSpec
argsџ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
@
Ѕ0
і1
І2
ї3"
trackable_list_wrapper
0
Ѕ0
і1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
иnon_trainable_variables
Иlayers
╣metrics
 ║layer_regularization_losses
╗layer_metrics
ѓ	variables
Ѓtrainable_variables
ёregularization_losses
є__call__
+Є&call_and_return_all_conditional_losses
'Є"call_and_return_conditional_losses"
_generic_user_object
й
╝trace_0
йtrace_12ѓ
#__inference_bn2_layer_call_fn_95973
#__inference_bn2_layer_call_fn_95986х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z╝trace_0zйtrace_1
з
Йtrace_0
┐trace_12И
>__inference_bn2_layer_call_and_return_conditional_losses_96004
>__inference_bn2_layer_call_and_return_conditional_losses_96022х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЙtrace_0z┐trace_1
 "
trackable_list_wrapper
:ђ2	bn2/gamma
:ђ2bn2/beta
 :ђ (2bn2/moving_mean
$:"ђ (2bn2/moving_variance
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
└non_trainable_variables
┴layers
┬metrics
 ├layer_regularization_losses
─layer_metrics
ј	variables
Јtrainable_variables
љregularization_losses
њ__call__
+Њ&call_and_return_all_conditional_losses
'Њ"call_and_return_conditional_losses"
_generic_user_object
У
┼trace_02╔
,__inference_activation_2_layer_call_fn_96027ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z┼trace_0
Ѓ
кtrace_02С
G__inference_activation_2_layer_call_and_return_conditional_losses_96032ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zкtrace_0
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Кnon_trainable_variables
╚layers
╔metrics
 ╩layer_regularization_losses
╦layer_metrics
Ћ	variables
ќtrainable_variables
Ќregularization_losses
Ў__call__
+џ&call_and_return_all_conditional_losses
'џ"call_and_return_conditional_losses"
_generic_user_object
т
╠trace_02к
)__inference_Avg_pool1_layer_call_fn_96037ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z╠trace_0
ђ
═trace_02р
D__inference_Avg_pool1_layer_call_and_return_conditional_losses_96042ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z═trace_0
 "
trackable_dict_wrapper
0
б0
Б1"
trackable_list_wrapper
0
б0
Б1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
╬non_trainable_variables
¤layers
лmetrics
 Лlayer_regularization_losses
мlayer_metrics
ю	variables
Юtrainable_variables
ъregularization_losses
а__call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses"
_generic_user_object
р
Мtrace_02┬
%__inference_conv3_layer_call_fn_96051ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zМtrace_0
Ч
нtrace_02П
@__inference_conv3_layer_call_and_return_conditional_losses_96061ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zнtrace_0
(:&ђђ2conv3/kernel
:ђ2
conv3/bias
 "
trackable_dict_wrapper
ф2Дц
Џ▓Ќ
FullArgSpec
argsџ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
@
Г0
«1
»2
░3"
trackable_list_wrapper
0
Г0
«1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Нnon_trainable_variables
оlayers
Оmetrics
 пlayer_regularization_losses
┘layer_metrics
д	variables
Дtrainable_variables
еregularization_losses
ф__call__
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses"
_generic_user_object
й
┌trace_0
█trace_12ѓ
#__inference_bn3_layer_call_fn_96074
#__inference_bn3_layer_call_fn_96087х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z┌trace_0z█trace_1
з
▄trace_0
Пtrace_12И
>__inference_bn3_layer_call_and_return_conditional_losses_96105
>__inference_bn3_layer_call_and_return_conditional_losses_96123х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z▄trace_0zПtrace_1
 "
trackable_list_wrapper
:ђ2	bn3/gamma
:ђ2bn3/beta
 :ђ (2bn3/moving_mean
$:"ђ (2bn3/moving_variance
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
яnon_trainable_variables
▀layers
Яmetrics
 рlayer_regularization_losses
Рlayer_metrics
▓	variables
│trainable_variables
┤regularization_losses
Х__call__
+и&call_and_return_all_conditional_losses
'и"call_and_return_conditional_losses"
_generic_user_object
У
сtrace_02╔
,__inference_activation_3_layer_call_fn_96128ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zсtrace_0
Ѓ
Сtrace_02С
G__inference_activation_3_layer_call_and_return_conditional_losses_96133ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zСtrace_0
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
тnon_trainable_variables
Тlayers
уmetrics
 Уlayer_regularization_losses
жlayer_metrics
╣	variables
║trainable_variables
╗regularization_losses
й__call__
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses"
_generic_user_object
т
Жtrace_02к
)__inference_max_pool2_layer_call_fn_96138ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЖtrace_0
ђ
вtrace_02р
D__inference_max_pool2_layer_call_and_return_conditional_losses_96143ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zвtrace_0
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Вnon_trainable_variables
ьlayers
Ьmetrics
 №layer_regularization_losses
­layer_metrics
└	variables
┴trainable_variables
┬regularization_losses
─__call__
+┼&call_and_return_all_conditional_losses
'┼"call_and_return_conditional_losses"
_generic_user_object
с
ыtrace_02─
'__inference_flatten_layer_call_fn_96148ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zыtrace_0
■
Ыtrace_02▀
B__inference_flatten_layer_call_and_return_conditional_losses_96154ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЫtrace_0
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
зnon_trainable_variables
Зlayers
шmetrics
 Шlayer_regularization_losses
эlayer_metrics
К	variables
╚trainable_variables
╔regularization_losses
╦__call__
+╠&call_and_return_all_conditional_losses
'╠"call_and_return_conditional_losses"
_generic_user_object
╣
Эtrace_0
щtrace_12■
'__inference_dropout_layer_call_fn_96159
'__inference_dropout_layer_call_fn_96164Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЭtrace_0zщtrace_1
№
Щtrace_0
чtrace_12┤
B__inference_dropout_layer_call_and_return_conditional_losses_96176
B__inference_dropout_layer_call_and_return_conditional_losses_96181Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЩtrace_0zчtrace_1
D
$Ч_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
0
Н0
о1"
trackable_list_wrapper
0
Н0
о1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
§non_trainable_variables
■layers
 metrics
 ђlayer_regularization_losses
Ђlayer_metrics
¤	variables
лtrainable_variables
Лregularization_losses
М__call__
+н&call_and_return_all_conditional_losses
'н"call_and_return_conditional_losses"
_generic_user_object
я
ѓtrace_02┐
"__inference_fc_layer_call_fn_96190ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zѓtrace_0
щ
Ѓtrace_02┌
=__inference_fc_layer_call_and_return_conditional_losses_96201ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЃtrace_0
:	ђ2	fc/kernel
:2fc/bias
 "
trackable_dict_wrapper
\
<0
=1
`2
a3
І4
ї5
»6
░7"
trackable_list_wrapper
к
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
ё0
Ё1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЫB№
3__inference_BrainDetectionModel_layer_call_fn_95521input_1"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЫB№
3__inference_BrainDetectionModel_layer_call_fn_95578input_1"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЇBі
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_95382input_1"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЇBі
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_95464input_1"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
(
Р0"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
х2▓»
д▓б
FullArgSpec*
args"џ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
¤B╠
#__inference_signature_wrapper_95718input_1"Ў
њ▓ј
FullArgSpec
argsџ 
varargs
 
varkw
 
defaults
 

kwonlyargsџ
	jinput_1
kwonlydefaults
 
annotationsф *
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
пBН
.__inference_zero_padding2d_layer_call_fn_95723inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
зB­
I__inference_zero_padding2d_layer_call_and_return_conditional_losses_95729inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
¤B╠
%__inference_conv0_layer_call_fn_95738inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЖBу
@__inference_conv0_layer_call_and_return_conditional_losses_95748inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
рBя
#__inference_bn0_layer_call_fn_95761inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
рBя
#__inference_bn0_layer_call_fn_95774inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЧBщ
>__inference_bn0_layer_call_and_return_conditional_losses_95792inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЧBщ
>__inference_bn0_layer_call_and_return_conditional_losses_95810inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
нBЛ
*__inference_activation_layer_call_fn_95815inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
№BВ
E__inference_activation_layer_call_and_return_conditional_losses_95820inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
МBл
)__inference_max_pool0_layer_call_fn_95825inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЬBв
D__inference_max_pool0_layer_call_and_return_conditional_losses_95830inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
¤B╠
%__inference_conv1_layer_call_fn_95839inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЖBу
@__inference_conv1_layer_call_and_return_conditional_losses_95849inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
.
`0
a1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
рBя
#__inference_bn1_layer_call_fn_95862inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
рBя
#__inference_bn1_layer_call_fn_95875inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЧBщ
>__inference_bn1_layer_call_and_return_conditional_losses_95893inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЧBщ
>__inference_bn1_layer_call_and_return_conditional_losses_95911inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
оBМ
,__inference_activation_1_layer_call_fn_95916inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ыBЬ
G__inference_activation_1_layer_call_and_return_conditional_losses_95921inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
МBл
)__inference_max_pool1_layer_call_fn_95926inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЬBв
D__inference_max_pool1_layer_call_and_return_conditional_losses_95931inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
МBл
)__inference_Avg_pool0_layer_call_fn_95936inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЬBв
D__inference_Avg_pool0_layer_call_and_return_conditional_losses_95941inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
¤B╠
%__inference_conv2_layer_call_fn_95950inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЖBу
@__inference_conv2_layer_call_and_return_conditional_losses_95960inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
0
І0
ї1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
рBя
#__inference_bn2_layer_call_fn_95973inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
рBя
#__inference_bn2_layer_call_fn_95986inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЧBщ
>__inference_bn2_layer_call_and_return_conditional_losses_96004inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЧBщ
>__inference_bn2_layer_call_and_return_conditional_losses_96022inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
оBМ
,__inference_activation_2_layer_call_fn_96027inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ыBЬ
G__inference_activation_2_layer_call_and_return_conditional_losses_96032inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
МBл
)__inference_Avg_pool1_layer_call_fn_96037inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЬBв
D__inference_Avg_pool1_layer_call_and_return_conditional_losses_96042inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
¤B╠
%__inference_conv3_layer_call_fn_96051inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЖBу
@__inference_conv3_layer_call_and_return_conditional_losses_96061inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
0
»0
░1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
рBя
#__inference_bn3_layer_call_fn_96074inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
рBя
#__inference_bn3_layer_call_fn_96087inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЧBщ
>__inference_bn3_layer_call_and_return_conditional_losses_96105inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЧBщ
>__inference_bn3_layer_call_and_return_conditional_losses_96123inputs"г
Ц▓А
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
оBМ
,__inference_activation_3_layer_call_fn_96128inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ыBЬ
G__inference_activation_3_layer_call_and_return_conditional_losses_96133inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
МBл
)__inference_max_pool2_layer_call_fn_96138inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЬBв
D__inference_max_pool2_layer_call_and_return_conditional_losses_96143inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
ЛB╬
'__inference_flatten_layer_call_fn_96148inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ВBж
B__inference_flatten_layer_call_and_return_conditional_losses_96154inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
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
ПB┌
'__inference_dropout_layer_call_fn_96159inputs"ц
Ю▓Ў
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ПB┌
'__inference_dropout_layer_call_fn_96164inputs"ц
Ю▓Ў
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЭBш
B__inference_dropout_layer_call_and_return_conditional_losses_96176inputs"ц
Ю▓Ў
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЭBш
B__inference_dropout_layer_call_and_return_conditional_losses_96181inputs"ц
Ю▓Ў
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
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
╠B╔
"__inference_fc_layer_call_fn_96190inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
уBС
=__inference_fc_layer_call_and_return_conditional_losses_96201inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
R
є	variables
Є	keras_api

ѕtotal

Ѕcount"
_tf_keras_metric
c
і	variables
І	keras_api

їtotal

Їcount
ј
_fn_kwargs"
_tf_keras_metric
0
ѕ0
Ѕ1"
trackable_list_wrapper
.
є	variables"
_generic_user_object
:  (2total
:  (2count
0
ї0
Ї1"
trackable_list_wrapper
.
і	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapperЬ
D__inference_Avg_pool0_layer_call_and_return_conditional_losses_95941ЦRбO
HбE
Cі@
inputs4                                    
ф "OбL
EіB
tensor_04                                    
џ ╚
)__inference_Avg_pool0_layer_call_fn_95936џRбO
HбE
Cі@
inputs4                                    
ф "DіA
unknown4                                    Ь
D__inference_Avg_pool1_layer_call_and_return_conditional_losses_96042ЦRбO
HбE
Cі@
inputs4                                    
ф "OбL
EіB
tensor_04                                    
џ ╚
)__inference_Avg_pool1_layer_call_fn_96037џRбO
HбE
Cі@
inputs4                                    
ф "DіA
unknown4                                    ь
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_95382џ&/0:;<=ST^_`a~ЅіІїбБГ«»░НоBб?
8б5
+і(
input_1         ­­
p

 
ф ",б)
"і
tensor_0         
џ ь
N__inference_BrainDetectionModel_layer_call_and_return_conditional_losses_95464џ&/0:;<=ST^_`a~ЅіІїбБГ«»░НоBб?
8б5
+і(
input_1         ­­
p 

 
ф ",б)
"і
tensor_0         
џ К
3__inference_BrainDetectionModel_layer_call_fn_95521Ј&/0:;<=ST^_`a~ЅіІїбБГ«»░НоBб?
8б5
+і(
input_1         ­­
p

 
ф "!і
unknown         К
3__inference_BrainDetectionModel_layer_call_fn_95578Ј&/0:;<=ST^_`a~ЅіІїбБГ«»░НоBб?
8б5
+і(
input_1         ­­
p 

 
ф "!і
unknown         ▓
 __inference__wrapped_model_94907Ї&/0:;<=ST^_`a~ЅіІїбБГ«»░Но:б7
0б-
+і(
input_1         ­­
ф "'ф$
"
fcі
fc         ║
G__inference_activation_1_layer_call_and_return_conditional_losses_95921o7б4
-б*
(і%
inputs         99@
ф "4б1
*і'
tensor_0         99@
џ ћ
,__inference_activation_1_layer_call_fn_95916d7б4
-б*
(і%
inputs         99@
ф ")і&
unknown         99@╝
G__inference_activation_2_layer_call_and_return_conditional_losses_96032q8б5
.б+
)і&
inputs         ђ
ф "5б2
+і(
tensor_0         ђ
џ ќ
,__inference_activation_2_layer_call_fn_96027f8б5
.б+
)і&
inputs         ђ
ф "*і'
unknown         ђ╝
G__inference_activation_3_layer_call_and_return_conditional_losses_96133q8б5
.б+
)і&
inputs         ђ
ф "5б2
+і(
tensor_0         ђ
џ ќ
,__inference_activation_3_layer_call_fn_96128f8б5
.б+
)і&
inputs         ђ
ф "*і'
unknown         ђ╝
E__inference_activation_layer_call_and_return_conditional_losses_95820s9б6
/б,
*і'
inputs         ЬЬ 
ф "6б3
,і)
tensor_0         ЬЬ 
џ ќ
*__inference_activation_layer_call_fn_95815h9б6
/б,
*і'
inputs         ЬЬ 
ф "+і(
unknown         ЬЬ С
>__inference_bn0_layer_call_and_return_conditional_losses_95792А:;<=QбN
GбD
:і7
inputs+                            
p

 
ф "FбC
<і9
tensor_0+                            
џ С
>__inference_bn0_layer_call_and_return_conditional_losses_95810А:;<=QбN
GбD
:і7
inputs+                            
p 

 
ф "FбC
<і9
tensor_0+                            
џ Й
#__inference_bn0_layer_call_fn_95761ќ:;<=QбN
GбD
:і7
inputs+                            
p

 
ф ";і8
unknown+                            Й
#__inference_bn0_layer_call_fn_95774ќ:;<=QбN
GбD
:і7
inputs+                            
p 

 
ф ";і8
unknown+                            С
>__inference_bn1_layer_call_and_return_conditional_losses_95893А^_`aQбN
GбD
:і7
inputs+                           @
p

 
ф "FбC
<і9
tensor_0+                           @
џ С
>__inference_bn1_layer_call_and_return_conditional_losses_95911А^_`aQбN
GбD
:і7
inputs+                           @
p 

 
ф "FбC
<і9
tensor_0+                           @
џ Й
#__inference_bn1_layer_call_fn_95862ќ^_`aQбN
GбD
:і7
inputs+                           @
p

 
ф ";і8
unknown+                           @Й
#__inference_bn1_layer_call_fn_95875ќ^_`aQбN
GбD
:і7
inputs+                           @
p 

 
ф ";і8
unknown+                           @Ж
>__inference_bn2_layer_call_and_return_conditional_losses_96004ДЅіІїRбO
HбE
;і8
inputs,                           ђ
p

 
ф "GбD
=і:
tensor_0,                           ђ
џ Ж
>__inference_bn2_layer_call_and_return_conditional_losses_96022ДЅіІїRбO
HбE
;і8
inputs,                           ђ
p 

 
ф "GбD
=і:
tensor_0,                           ђ
џ ─
#__inference_bn2_layer_call_fn_95973юЅіІїRбO
HбE
;і8
inputs,                           ђ
p

 
ф "<і9
unknown,                           ђ─
#__inference_bn2_layer_call_fn_95986юЅіІїRбO
HбE
;і8
inputs,                           ђ
p 

 
ф "<і9
unknown,                           ђЖ
>__inference_bn3_layer_call_and_return_conditional_losses_96105ДГ«»░RбO
HбE
;і8
inputs,                           ђ
p

 
ф "GбD
=і:
tensor_0,                           ђ
џ Ж
>__inference_bn3_layer_call_and_return_conditional_losses_96123ДГ«»░RбO
HбE
;і8
inputs,                           ђ
p 

 
ф "GбD
=і:
tensor_0,                           ђ
џ ─
#__inference_bn3_layer_call_fn_96074юГ«»░RбO
HбE
;і8
inputs,                           ђ
p

 
ф "<і9
unknown,                           ђ─
#__inference_bn3_layer_call_fn_96087юГ«»░RбO
HбE
;і8
inputs,                           ђ
p 

 
ф "<і9
unknown,                           ђ╗
@__inference_conv0_layer_call_and_return_conditional_losses_95748w/09б6
/б,
*і'
inputs         ЗЗ
ф "6б3
,і)
tensor_0         ЬЬ 
џ Ћ
%__inference_conv0_layer_call_fn_95738l/09б6
/б,
*і'
inputs         ЗЗ
ф "+і(
unknown         ЬЬ и
@__inference_conv1_layer_call_and_return_conditional_losses_95849sST7б4
-б*
(і%
inputs         ;; 
ф "4б1
*і'
tensor_0         99@
џ Љ
%__inference_conv1_layer_call_fn_95839hST7б4
-б*
(і%
inputs         ;; 
ф ")і&
unknown         99@И
@__inference_conv2_layer_call_and_return_conditional_losses_95960t~7б4
-б*
(і%
inputs         @
ф "5б2
+і(
tensor_0         ђ
џ њ
%__inference_conv2_layer_call_fn_95950i~7б4
-б*
(і%
inputs         @
ф "*і'
unknown         ђ╗
@__inference_conv3_layer_call_and_return_conditional_losses_96061wбБ8б5
.б+
)і&
inputs         ђ
ф "5б2
+і(
tensor_0         ђ
џ Ћ
%__inference_conv3_layer_call_fn_96051lбБ8б5
.б+
)і&
inputs         ђ
ф "*і'
unknown         ђФ
B__inference_dropout_layer_call_and_return_conditional_losses_96176e4б1
*б'
!і
inputs         ђ
p
ф "-б*
#і 
tensor_0         ђ
џ Ф
B__inference_dropout_layer_call_and_return_conditional_losses_96181e4б1
*б'
!і
inputs         ђ
p 
ф "-б*
#і 
tensor_0         ђ
џ Ё
'__inference_dropout_layer_call_fn_96159Z4б1
*б'
!і
inputs         ђ
p
ф ""і
unknown         ђЁ
'__inference_dropout_layer_call_fn_96164Z4б1
*б'
!і
inputs         ђ
p 
ф ""і
unknown         ђД
=__inference_fc_layer_call_and_return_conditional_losses_96201fНо0б-
&б#
!і
inputs         ђ
ф ",б)
"і
tensor_0         
џ Ђ
"__inference_fc_layer_call_fn_96190[Но0б-
&б#
!і
inputs         ђ
ф "!і
unknown         »
B__inference_flatten_layer_call_and_return_conditional_losses_96154i8б5
.б+
)і&
inputs         ђ
ф "-б*
#і 
tensor_0         ђ
џ Ѕ
'__inference_flatten_layer_call_fn_96148^8б5
.б+
)і&
inputs         ђ
ф ""і
unknown         ђЬ
D__inference_max_pool0_layer_call_and_return_conditional_losses_95830ЦRбO
HбE
Cі@
inputs4                                    
ф "OбL
EіB
tensor_04                                    
џ ╚
)__inference_max_pool0_layer_call_fn_95825џRбO
HбE
Cі@
inputs4                                    
ф "DіA
unknown4                                    Ь
D__inference_max_pool1_layer_call_and_return_conditional_losses_95931ЦRбO
HбE
Cі@
inputs4                                    
ф "OбL
EіB
tensor_04                                    
џ ╚
)__inference_max_pool1_layer_call_fn_95926џRбO
HбE
Cі@
inputs4                                    
ф "DіA
unknown4                                    Ь
D__inference_max_pool2_layer_call_and_return_conditional_losses_96143ЦRбO
HбE
Cі@
inputs4                                    
ф "OбL
EіB
tensor_04                                    
џ ╚
)__inference_max_pool2_layer_call_fn_96138џRбO
HбE
Cі@
inputs4                                    
ф "DіA
unknown4                                    └
#__inference_signature_wrapper_95718ў&/0:;<=ST^_`a~ЅіІїбБГ«»░НоEбB
б 
;ф8
6
input_1+і(
input_1         ­­"'ф$
"
fcі
fc         з
I__inference_zero_padding2d_layer_call_and_return_conditional_losses_95729ЦRбO
HбE
Cі@
inputs4                                    
ф "OбL
EіB
tensor_04                                    
џ ═
.__inference_zero_padding2d_layer_call_fn_95723џRбO
HбE
Cі@
inputs4                                    
ф "DіA
unknown4                                    