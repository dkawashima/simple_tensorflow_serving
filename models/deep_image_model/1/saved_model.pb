ąŁ
į9ŗ9
:
Add
x"T
y"T
z"T"
Ttype:
2	
ī
	ApplyAdam
var"T	
m"T	
v"T
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
s
	AssignAdd
ref"T

value"T

output_ref"T" 
Ttype:
2	"
use_lockingbool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
ģ
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

%
DecodeBase64	
input

output
Ė

DecodeJpeg
contents	
image"
channelsint "
ratioint"
fancy_upscalingbool("!
try_recover_truncatedbool( "#
acceptable_fractionfloat%  ?"

dct_methodstring 
y
Enter	
data"T
output"T"	
Ttype"

frame_namestring"
is_constantbool( "
parallel_iterationsint

B
Equal
x"T
y"T
z
"
Ttype:
2	

)
Exit	
data"T
output"T"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
!
LoopCond	
input


output

p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
Ō
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
ī
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
8
MergeSummary
inputs*N
summary"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
2
NextIteration	
data"T
output"T"	
Ttype

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
L
PreventGradient

input"T
output"T"	
Ttype"
messagestring 

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	

RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
D
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
q
ResizeBilinear
images"T
size
resized_images"
Ttype:
2
	"
align_cornersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2

#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
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

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
{
TensorArrayGatherV3

handle
indices
flow_in
value"dtype"
dtypetype"
element_shapeshape:
Y
TensorArrayReadV3

handle	
index
flow_in
value"dtype"
dtypetype
d
TensorArrayScatterV3

handle
indices

value"T
flow_in
flow_out"	
Ttype
9
TensorArraySizeV3

handle
flow_in
size
Ž
TensorArrayV3
size

handle
flow"
dtypetype"
element_shapeshape:"
dynamic_sizebool( "
clear_after_readbool("$
identical_element_shapesbool( "
tensor_array_namestring 
`
TensorArrayWriteV3

handle	
index

value"T
flow_in
flow_out"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.8.02v1.8.0-0-g93bc2e2072¼ū
n
PlaceholderPlaceholder*
dtype0*'
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’
S
IdentityIdentityPlaceholder*'
_output_shapes
:’’’’’’’’’*
T0
q
model_input_b64_imagesPlaceholder*#
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’*
dtype0
Y
DecodeBase64DecodeBase64model_input_b64_images*#
_output_shapes
:’’’’’’’’’
U
	map/ShapeShapeDecodeBase64*
_output_shapes
:*
T0*
out_type0
a
map/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
c
map/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
c
map/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

map/strided_sliceStridedSlice	map/Shapemap/strided_slice/stackmap/strided_slice/stack_1map/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
Ś
map/TensorArrayTensorArrayV3map/strided_slice*
element_shape:*
clear_after_read(*
dynamic_size( *
identical_element_shapes(*
tensor_array_name *
dtype0*
_output_shapes

:: 
h
map/TensorArrayUnstack/ShapeShapeDecodeBase64*
T0*
out_type0*
_output_shapes
:
t
*map/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
v
,map/TensorArrayUnstack/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
v
,map/TensorArrayUnstack/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
ģ
$map/TensorArrayUnstack/strided_sliceStridedSlicemap/TensorArrayUnstack/Shape*map/TensorArrayUnstack/strided_slice/stack,map/TensorArrayUnstack/strided_slice/stack_1,map/TensorArrayUnstack/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
d
"map/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
d
"map/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ä
map/TensorArrayUnstack/rangeRange"map/TensorArrayUnstack/range/start$map/TensorArrayUnstack/strided_slice"map/TensorArrayUnstack/range/delta*#
_output_shapes
:’’’’’’’’’*

Tidx0
č
>map/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3map/TensorArraymap/TensorArrayUnstack/rangeDecodeBase64map/TensorArray:1*
T0*
_class
loc:@DecodeBase64*
_output_shapes
: 
K
	map/ConstConst*
value	B : *
dtype0*
_output_shapes
: 
Ü
map/TensorArray_1TensorArrayV3map/strided_slice*
tensor_array_name *
dtype0*
_output_shapes

:: *
element_shape:*
dynamic_size( *
clear_after_read(*
identical_element_shapes(

map/while/EnterEnter	map/Const*'

frame_namemap/while/while_context*
_output_shapes
: *
T0*
is_constant( *
parallel_iterations

§
map/while/Enter_1Entermap/TensorArray_1:1*'

frame_namemap/while/while_context*
_output_shapes
: *
T0*
is_constant( *
parallel_iterations

n
map/while/MergeMergemap/while/Entermap/while/NextIteration*
T0*
N*
_output_shapes
: : 
t
map/while/Merge_1Mergemap/while/Enter_1map/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
^
map/while/LessLessmap/while/Mergemap/while/Less/Enter*
T0*
_output_shapes
: 
Ø
map/while/Less/EnterEntermap/strided_slice*
T0*
is_constant(*
parallel_iterations
*'

frame_namemap/while/while_context*
_output_shapes
: 
F
map/while/LoopCondLoopCondmap/while/Less*
_output_shapes
: 

map/while/SwitchSwitchmap/while/Mergemap/while/LoopCond*
T0*"
_class
loc:@map/while/Merge*
_output_shapes
: : 

map/while/Switch_1Switchmap/while/Merge_1map/while/LoopCond*
T0*$
_class
loc:@map/while/Merge_1*
_output_shapes
: : 
S
map/while/IdentityIdentitymap/while/Switch:1*
T0*
_output_shapes
: 
W
map/while/Identity_1Identitymap/while/Switch_1:1*
T0*
_output_shapes
: 
±
map/while/TensorArrayReadV3TensorArrayReadV3!map/while/TensorArrayReadV3/Entermap/while/Identity#map/while/TensorArrayReadV3/Enter_1*
dtype0*
_output_shapes
: 
·
!map/while/TensorArrayReadV3/EnterEntermap/TensorArray*
T0*
is_constant(*
parallel_iterations
*'

frame_namemap/while/while_context*
_output_shapes
:
ä
#map/while/TensorArrayReadV3/Enter_1Enter>map/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
parallel_iterations
*'

frame_namemap/while/while_context*
_output_shapes
: *
T0*
is_constant(
ö
map/while/DecodeJpeg
DecodeJpegmap/while/TensorArrayReadV3*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’*
ratio*

dct_method *
channels*
acceptable_fraction%  ?*
fancy_upscaling(*
try_recover_truncated( 
}
&map/while/resize_images/ExpandDims/dimConst^map/while/Identity*
value	B : *
dtype0*
_output_shapes
: 
½
"map/while/resize_images/ExpandDims
ExpandDimsmap/while/DecodeJpeg&map/while/resize_images/ExpandDims/dim*
T0*8
_output_shapes&
$:"’’’’’’’’’’’’’’’’’’*

Tdim0

map/while/resize_images/sizeConst^map/while/Identity*
valueB"        *
dtype0*
_output_shapes
:
Ą
&map/while/resize_images/ResizeBilinearResizeBilinear"map/while/resize_images/ExpandDimsmap/while/resize_images/size*
align_corners( *
T0*&
_output_shapes
:  

map/while/resize_images/SqueezeSqueeze&map/while/resize_images/ResizeBilinear*"
_output_shapes
:  *
squeeze_dims
 *
T0

-map/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV33map/while/TensorArrayWrite/TensorArrayWriteV3/Entermap/while/Identitymap/while/resize_images/Squeezemap/while/Identity_1*
T0*2
_class(
&$loc:@map/while/resize_images/Squeeze*
_output_shapes
: 
’
3map/while/TensorArrayWrite/TensorArrayWriteV3/EnterEntermap/TensorArray_1*2
_class(
&$loc:@map/while/resize_images/Squeeze*
parallel_iterations
*
is_constant(*
_output_shapes
:*'

frame_namemap/while/while_context*
T0
f
map/while/add/yConst^map/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Z
map/while/addAddmap/while/Identitymap/while/add/y*
T0*
_output_shapes
: 
X
map/while/NextIterationNextIterationmap/while/add*
_output_shapes
: *
T0
z
map/while/NextIteration_1NextIteration-map/while/TensorArrayWrite/TensorArrayWriteV3*
_output_shapes
: *
T0
I
map/while/ExitExitmap/while/Switch*
T0*
_output_shapes
: 
M
map/while/Exit_1Exitmap/while/Switch_1*
_output_shapes
: *
T0

&map/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3map/TensorArray_1map/while/Exit_1*$
_class
loc:@map/TensorArray_1*
_output_shapes
: 

 map/TensorArrayStack/range/startConst*
_output_shapes
: *
value	B : *$
_class
loc:@map/TensorArray_1*
dtype0

 map/TensorArrayStack/range/deltaConst*
value	B :*$
_class
loc:@map/TensorArray_1*
dtype0*
_output_shapes
: 
ę
map/TensorArrayStack/rangeRange map/TensorArrayStack/range/start&map/TensorArrayStack/TensorArraySizeV3 map/TensorArrayStack/range/delta*

Tidx0*$
_class
loc:@map/TensorArray_1*#
_output_shapes
:’’’’’’’’’

(map/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3map/TensorArray_1map/TensorArrayStack/rangemap/while/Exit_1*$
_class
loc:@map/TensorArray_1*
dtype0*/
_output_shapes
:’’’’’’’’’  *
element_shape:  

Placeholder_1Placeholder*
dtype0*/
_output_shapes
:’’’’’’’’’  *$
shape:’’’’’’’’’  
h
Placeholder_2Placeholder*
dtype0*#
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’
Ø
-conv1/weights/Initializer/random_normal/shapeConst*%
valueB"             * 
_class
loc:@conv1/weights*
dtype0*
_output_shapes
:

,conv1/weights/Initializer/random_normal/meanConst*
valueB
 *    * 
_class
loc:@conv1/weights*
dtype0*
_output_shapes
: 

.conv1/weights/Initializer/random_normal/stddevConst*
valueB
 *  ?* 
_class
loc:@conv1/weights*
dtype0*
_output_shapes
: 
ü
<conv1/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal-conv1/weights/Initializer/random_normal/shape*
dtype0*&
_output_shapes
: *

seed *
T0* 
_class
loc:@conv1/weights*
seed2 
ó
+conv1/weights/Initializer/random_normal/mulMul<conv1/weights/Initializer/random_normal/RandomStandardNormal.conv1/weights/Initializer/random_normal/stddev*
T0* 
_class
loc:@conv1/weights*&
_output_shapes
: 
Ü
'conv1/weights/Initializer/random_normalAdd+conv1/weights/Initializer/random_normal/mul,conv1/weights/Initializer/random_normal/mean*&
_output_shapes
: *
T0* 
_class
loc:@conv1/weights
³
conv1/weights
VariableV2*&
_output_shapes
: *
shared_name * 
_class
loc:@conv1/weights*
	container *
shape: *
dtype0
Ņ
conv1/weights/AssignAssignconv1/weights'conv1/weights/Initializer/random_normal*&
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@conv1/weights*
validate_shape(

conv1/weights/readIdentityconv1/weights*
T0* 
_class
loc:@conv1/weights*&
_output_shapes
: 

*conv1/bias/Initializer/random_normal/shapeConst*
valueB: *
_class
loc:@conv1/bias*
dtype0*
_output_shapes
:

)conv1/bias/Initializer/random_normal/meanConst*
valueB
 *    *
_class
loc:@conv1/bias*
dtype0*
_output_shapes
: 

+conv1/bias/Initializer/random_normal/stddevConst*
valueB
 *  ?*
_class
loc:@conv1/bias*
dtype0*
_output_shapes
: 
ē
9conv1/bias/Initializer/random_normal/RandomStandardNormalRandomStandardNormal*conv1/bias/Initializer/random_normal/shape*
seed2 *
dtype0*
_output_shapes
: *

seed *
T0*
_class
loc:@conv1/bias
Ū
(conv1/bias/Initializer/random_normal/mulMul9conv1/bias/Initializer/random_normal/RandomStandardNormal+conv1/bias/Initializer/random_normal/stddev*
T0*
_class
loc:@conv1/bias*
_output_shapes
: 
Ä
$conv1/bias/Initializer/random_normalAdd(conv1/bias/Initializer/random_normal/mul)conv1/bias/Initializer/random_normal/mean*
T0*
_class
loc:@conv1/bias*
_output_shapes
: 


conv1/bias
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@conv1/bias*
	container 
ŗ
conv1/bias/AssignAssign
conv1/bias$conv1/bias/Initializer/random_normal*
use_locking(*
T0*
_class
loc:@conv1/bias*
validate_shape(*
_output_shapes
: 
k
conv1/bias/readIdentity
conv1/bias*
_output_shapes
: *
T0*
_class
loc:@conv1/bias
į
conv1/Conv2DConv2DPlaceholder_1conv1/weights/read*/
_output_shapes
:’’’’’’’’’   *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME

conv1/BiasAddBiasAddconv1/Conv2Dconv1/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:’’’’’’’’’   
[

conv1/ReluReluconv1/BiasAdd*/
_output_shapes
:’’’’’’’’’   *
T0
°
conv1/MaxPoolMaxPool
conv1/Relu*
paddingSAME*/
_output_shapes
:’’’’’’’’’ *
T0*
data_formatNHWC*
strides
*
ksize

Ø
-conv2/weights/Initializer/random_normal/shapeConst*%
valueB"          @   * 
_class
loc:@conv2/weights*
dtype0*
_output_shapes
:

,conv2/weights/Initializer/random_normal/meanConst*
valueB
 *    * 
_class
loc:@conv2/weights*
dtype0*
_output_shapes
: 

.conv2/weights/Initializer/random_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *  ?* 
_class
loc:@conv2/weights
ü
<conv2/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal-conv2/weights/Initializer/random_normal/shape*

seed *
T0* 
_class
loc:@conv2/weights*
seed2 *
dtype0*&
_output_shapes
: @
ó
+conv2/weights/Initializer/random_normal/mulMul<conv2/weights/Initializer/random_normal/RandomStandardNormal.conv2/weights/Initializer/random_normal/stddev*&
_output_shapes
: @*
T0* 
_class
loc:@conv2/weights
Ü
'conv2/weights/Initializer/random_normalAdd+conv2/weights/Initializer/random_normal/mul,conv2/weights/Initializer/random_normal/mean*&
_output_shapes
: @*
T0* 
_class
loc:@conv2/weights
³
conv2/weights
VariableV2*
shared_name * 
_class
loc:@conv2/weights*
	container *
shape: @*
dtype0*&
_output_shapes
: @
Ņ
conv2/weights/AssignAssignconv2/weights'conv2/weights/Initializer/random_normal*
validate_shape(*&
_output_shapes
: @*
use_locking(*
T0* 
_class
loc:@conv2/weights

conv2/weights/readIdentityconv2/weights*&
_output_shapes
: @*
T0* 
_class
loc:@conv2/weights

*conv2/bias/Initializer/random_normal/shapeConst*
valueB:@*
_class
loc:@conv2/bias*
dtype0*
_output_shapes
:

)conv2/bias/Initializer/random_normal/meanConst*
valueB
 *    *
_class
loc:@conv2/bias*
dtype0*
_output_shapes
: 

+conv2/bias/Initializer/random_normal/stddevConst*
valueB
 *  ?*
_class
loc:@conv2/bias*
dtype0*
_output_shapes
: 
ē
9conv2/bias/Initializer/random_normal/RandomStandardNormalRandomStandardNormal*conv2/bias/Initializer/random_normal/shape*
_output_shapes
:@*

seed *
T0*
_class
loc:@conv2/bias*
seed2 *
dtype0
Ū
(conv2/bias/Initializer/random_normal/mulMul9conv2/bias/Initializer/random_normal/RandomStandardNormal+conv2/bias/Initializer/random_normal/stddev*
T0*
_class
loc:@conv2/bias*
_output_shapes
:@
Ä
$conv2/bias/Initializer/random_normalAdd(conv2/bias/Initializer/random_normal/mul)conv2/bias/Initializer/random_normal/mean*
T0*
_class
loc:@conv2/bias*
_output_shapes
:@


conv2/bias
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *
_class
loc:@conv2/bias
ŗ
conv2/bias/AssignAssign
conv2/bias$conv2/bias/Initializer/random_normal*
use_locking(*
T0*
_class
loc:@conv2/bias*
validate_shape(*
_output_shapes
:@
k
conv2/bias/readIdentity
conv2/bias*
T0*
_class
loc:@conv2/bias*
_output_shapes
:@
į
conv2/Conv2DConv2Dconv1/MaxPoolconv2/weights/read*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:’’’’’’’’’@*
	dilations
*
T0

conv2/BiasAddBiasAddconv2/Conv2Dconv2/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:’’’’’’’’’@
[

conv2/ReluReluconv2/BiasAdd*
T0*/
_output_shapes
:’’’’’’’’’@
°
conv2/MaxPoolMaxPool
conv2/Relu*/
_output_shapes
:’’’’’’’’’@*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME
^
Reshape/shapeConst*
valueB"’’’’   *
dtype0*
_output_shapes
:
q
ReshapeReshapeconv2/MaxPoolReshape/shape*
T0*
Tshape0*(
_output_shapes
:’’’’’’’’’ 

+fc1/weights/Initializer/random_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *
_class
loc:@fc1/weights

*fc1/weights/Initializer/random_normal/meanConst*
valueB
 *    *
_class
loc:@fc1/weights*
dtype0*
_output_shapes
: 

,fc1/weights/Initializer/random_normal/stddevConst*
valueB
 *  ?*
_class
loc:@fc1/weights*
dtype0*
_output_shapes
: 
ļ
:fc1/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal+fc1/weights/Initializer/random_normal/shape*
dtype0*
_output_shapes
:	 *

seed *
T0*
_class
loc:@fc1/weights*
seed2 
ä
)fc1/weights/Initializer/random_normal/mulMul:fc1/weights/Initializer/random_normal/RandomStandardNormal,fc1/weights/Initializer/random_normal/stddev*
_output_shapes
:	 *
T0*
_class
loc:@fc1/weights
Ķ
%fc1/weights/Initializer/random_normalAdd)fc1/weights/Initializer/random_normal/mul*fc1/weights/Initializer/random_normal/mean*
_output_shapes
:	 *
T0*
_class
loc:@fc1/weights
”
fc1/weights
VariableV2*
dtype0*
_output_shapes
:	 *
shared_name *
_class
loc:@fc1/weights*
	container *
shape:	 
Ć
fc1/weights/AssignAssignfc1/weights%fc1/weights/Initializer/random_normal*
use_locking(*
T0*
_class
loc:@fc1/weights*
validate_shape(*
_output_shapes
:	 
s
fc1/weights/readIdentityfc1/weights*
T0*
_class
loc:@fc1/weights*
_output_shapes
:	 

(fc1/bias/Initializer/random_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB:*
_class
loc:@fc1/bias

'fc1/bias/Initializer/random_normal/meanConst*
valueB
 *    *
_class
loc:@fc1/bias*
dtype0*
_output_shapes
: 

)fc1/bias/Initializer/random_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *  ?*
_class
loc:@fc1/bias
į
7fc1/bias/Initializer/random_normal/RandomStandardNormalRandomStandardNormal(fc1/bias/Initializer/random_normal/shape*
dtype0*
_output_shapes
:*

seed *
T0*
_class
loc:@fc1/bias*
seed2 
Ó
&fc1/bias/Initializer/random_normal/mulMul7fc1/bias/Initializer/random_normal/RandomStandardNormal)fc1/bias/Initializer/random_normal/stddev*
_output_shapes
:*
T0*
_class
loc:@fc1/bias
¼
"fc1/bias/Initializer/random_normalAdd&fc1/bias/Initializer/random_normal/mul'fc1/bias/Initializer/random_normal/mean*
T0*
_class
loc:@fc1/bias*
_output_shapes
:

fc1/bias
VariableV2*
shared_name *
_class
loc:@fc1/bias*
	container *
shape:*
dtype0*
_output_shapes
:
²
fc1/bias/AssignAssignfc1/bias"fc1/bias/Initializer/random_normal*
use_locking(*
T0*
_class
loc:@fc1/bias*
validate_shape(*
_output_shapes
:
e
fc1/bias/readIdentityfc1/bias*
_class
loc:@fc1/bias*
_output_shapes
:*
T0


fc1/MatMulMatMulReshapefc1/weights/read*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:’’’’’’’’’
[
fc1/AddAdd
fc1/MatMulfc1/bias/read*'
_output_shapes
:’’’’’’’’’*
T0
v
)SparseSoftmaxCrossEntropyWithLogits/ShapeShapePlaceholder_2*
T0*
out_type0*
_output_shapes
:
Ö
GSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsfc1/AddPlaceholder_2*
T0*
Tlabels0*6
_output_shapes$
":’’’’’’’’’:’’’’’’’’’
O
ConstConst*
valueB: *
dtype0*
_output_shapes
:

MeanMeanGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsConst*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
[
global_step/initial_valueConst*
value	B : *
dtype0*
_output_shapes
: 
o
global_step
VariableV2*
dtype0*
	container *
_output_shapes
: *
shape: *
shared_name 
®
global_step/AssignAssignglobal_stepglobal_step/initial_value*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
T0*
_class
loc:@global_step*
_output_shapes
: 
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
X
gradients/grad_ys_0Const*
dtype0*
_output_shapes
: *
valueB
 *  ?
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
k
!gradients/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:

gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
 
gradients/Mean_grad/ShapeShapeGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:

gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*
T0*#
_output_shapes
:’’’’’’’’’*

Tmultiples0
¢
gradients/Mean_grad/Shape_1ShapeGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:
^
gradients/Mean_grad/Shape_2Const*
_output_shapes
: *
valueB *
dtype0
c
gradients/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:

gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
e
gradients/Mean_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 

gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
_
gradients/Mean_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :

gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0*
_output_shapes
: 

gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0*
_output_shapes
: 
n
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

SrcT0*

DstT0*
_output_shapes
: 

gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*#
_output_shapes
:’’’’’’’’’*
T0

gradients/zeros_like	ZerosLikeISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*'
_output_shapes
:’’’’’’’’’*
T0
­
fgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:’’’’’’’’’*“
messageØ„Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
°
egradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
±
agradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsgradients/Mean_grad/truedivegradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*'
_output_shapes
:’’’’’’’’’*

Tdim0
Ž
Zgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulagradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsfgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*'
_output_shapes
:’’’’’’’’’*
T0
f
gradients/fc1/Add_grad/ShapeShape
fc1/MatMul*
_output_shapes
:*
T0*
out_type0
h
gradients/fc1/Add_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
Ą
,gradients/fc1/Add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/fc1/Add_grad/Shapegradients/fc1/Add_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
ė
gradients/fc1/Add_grad/SumSumZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/fc1/Add_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
£
gradients/fc1/Add_grad/ReshapeReshapegradients/fc1/Add_grad/Sumgradients/fc1/Add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’
ļ
gradients/fc1/Add_grad/Sum_1SumZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul.gradients/fc1/Add_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:

 gradients/fc1/Add_grad/Reshape_1Reshapegradients/fc1/Add_grad/Sum_1gradients/fc1/Add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
s
'gradients/fc1/Add_grad/tuple/group_depsNoOp^gradients/fc1/Add_grad/Reshape!^gradients/fc1/Add_grad/Reshape_1
ź
/gradients/fc1/Add_grad/tuple/control_dependencyIdentitygradients/fc1/Add_grad/Reshape(^gradients/fc1/Add_grad/tuple/group_deps*'
_output_shapes
:’’’’’’’’’*
T0*1
_class'
%#loc:@gradients/fc1/Add_grad/Reshape
ć
1gradients/fc1/Add_grad/tuple/control_dependency_1Identity gradients/fc1/Add_grad/Reshape_1(^gradients/fc1/Add_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/fc1/Add_grad/Reshape_1*
_output_shapes
:
Ę
 gradients/fc1/MatMul_grad/MatMulMatMul/gradients/fc1/Add_grad/tuple/control_dependencyfc1/weights/read*
T0*
transpose_a( *(
_output_shapes
:’’’’’’’’’ *
transpose_b(
¶
"gradients/fc1/MatMul_grad/MatMul_1MatMulReshape/gradients/fc1/Add_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes
:	 *
transpose_b( 
z
*gradients/fc1/MatMul_grad/tuple/group_depsNoOp!^gradients/fc1/MatMul_grad/MatMul#^gradients/fc1/MatMul_grad/MatMul_1
õ
2gradients/fc1/MatMul_grad/tuple/control_dependencyIdentity gradients/fc1/MatMul_grad/MatMul+^gradients/fc1/MatMul_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/fc1/MatMul_grad/MatMul*(
_output_shapes
:’’’’’’’’’ 
ņ
4gradients/fc1/MatMul_grad/tuple/control_dependency_1Identity"gradients/fc1/MatMul_grad/MatMul_1+^gradients/fc1/MatMul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/fc1/MatMul_grad/MatMul_1*
_output_shapes
:	 
i
gradients/Reshape_grad/ShapeShapeconv2/MaxPool*
T0*
out_type0*
_output_shapes
:
Ć
gradients/Reshape_grad/ReshapeReshape2gradients/fc1/MatMul_grad/tuple/control_dependencygradients/Reshape_grad/Shape*
T0*
Tshape0*/
_output_shapes
:’’’’’’’’’@
ž
(gradients/conv2/MaxPool_grad/MaxPoolGradMaxPoolGrad
conv2/Reluconv2/MaxPoolgradients/Reshape_grad/Reshape*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:’’’’’’’’’@

"gradients/conv2/Relu_grad/ReluGradReluGrad(gradients/conv2/MaxPool_grad/MaxPoolGrad
conv2/Relu*/
_output_shapes
:’’’’’’’’’@*
T0

(gradients/conv2/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients/conv2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:@

-gradients/conv2/BiasAdd_grad/tuple/group_depsNoOp)^gradients/conv2/BiasAdd_grad/BiasAddGrad#^gradients/conv2/Relu_grad/ReluGrad

5gradients/conv2/BiasAdd_grad/tuple/control_dependencyIdentity"gradients/conv2/Relu_grad/ReluGrad.^gradients/conv2/BiasAdd_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/conv2/Relu_grad/ReluGrad*/
_output_shapes
:’’’’’’’’’@
’
7gradients/conv2/BiasAdd_grad/tuple/control_dependency_1Identity(gradients/conv2/BiasAdd_grad/BiasAddGrad.^gradients/conv2/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/conv2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@

"gradients/conv2/Conv2D_grad/ShapeNShapeNconv1/MaxPoolconv2/weights/read*
T0*
out_type0*
N* 
_output_shapes
::
z
!gradients/conv2/Conv2D_grad/ConstConst*%
valueB"          @   *
dtype0*
_output_shapes
:
ų
/gradients/conv2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput"gradients/conv2/Conv2D_grad/ShapeNconv2/weights/read5gradients/conv2/BiasAdd_grad/tuple/control_dependency*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
Š
0gradients/conv2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv1/MaxPool!gradients/conv2/Conv2D_grad/Const5gradients/conv2/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
: @*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME

,gradients/conv2/Conv2D_grad/tuple/group_depsNoOp1^gradients/conv2/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2/Conv2D_grad/Conv2DBackpropInput

4gradients/conv2/Conv2D_grad/tuple/control_dependencyIdentity/gradients/conv2/Conv2D_grad/Conv2DBackpropInput-^gradients/conv2/Conv2D_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/conv2/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:’’’’’’’’’ 

6gradients/conv2/Conv2D_grad/tuple/control_dependency_1Identity0gradients/conv2/Conv2D_grad/Conv2DBackpropFilter-^gradients/conv2/Conv2D_grad/tuple/group_deps*&
_output_shapes
: @*
T0*C
_class9
75loc:@gradients/conv2/Conv2D_grad/Conv2DBackpropFilter

(gradients/conv1/MaxPool_grad/MaxPoolGradMaxPoolGrad
conv1/Reluconv1/MaxPool4gradients/conv2/Conv2D_grad/tuple/control_dependency*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:’’’’’’’’’   

"gradients/conv1/Relu_grad/ReluGradReluGrad(gradients/conv1/MaxPool_grad/MaxPoolGrad
conv1/Relu*
T0*/
_output_shapes
:’’’’’’’’’   

(gradients/conv1/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients/conv1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
: 

-gradients/conv1/BiasAdd_grad/tuple/group_depsNoOp)^gradients/conv1/BiasAdd_grad/BiasAddGrad#^gradients/conv1/Relu_grad/ReluGrad

5gradients/conv1/BiasAdd_grad/tuple/control_dependencyIdentity"gradients/conv1/Relu_grad/ReluGrad.^gradients/conv1/BiasAdd_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/conv1/Relu_grad/ReluGrad*/
_output_shapes
:’’’’’’’’’   
’
7gradients/conv1/BiasAdd_grad/tuple/control_dependency_1Identity(gradients/conv1/BiasAdd_grad/BiasAddGrad.^gradients/conv1/BiasAdd_grad/tuple/group_deps*
_output_shapes
: *
T0*;
_class1
/-loc:@gradients/conv1/BiasAdd_grad/BiasAddGrad

"gradients/conv1/Conv2D_grad/ShapeNShapeNPlaceholder_1conv1/weights/read*
T0*
out_type0*
N* 
_output_shapes
::
z
!gradients/conv1/Conv2D_grad/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:
ų
/gradients/conv1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput"gradients/conv1/Conv2D_grad/ShapeNconv1/weights/read5gradients/conv1/BiasAdd_grad/tuple/control_dependency*
paddingSAME*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
Š
0gradients/conv1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterPlaceholder_1!gradients/conv1/Conv2D_grad/Const5gradients/conv1/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
: *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME

,gradients/conv1/Conv2D_grad/tuple/group_depsNoOp1^gradients/conv1/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv1/Conv2D_grad/Conv2DBackpropInput

4gradients/conv1/Conv2D_grad/tuple/control_dependencyIdentity/gradients/conv1/Conv2D_grad/Conv2DBackpropInput-^gradients/conv1/Conv2D_grad/tuple/group_deps*B
_class8
64loc:@gradients/conv1/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:’’’’’’’’’  *
T0

6gradients/conv1/Conv2D_grad/tuple/control_dependency_1Identity0gradients/conv1/Conv2D_grad/Conv2DBackpropFilter-^gradients/conv1/Conv2D_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/conv1/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: 
}
beta1_power/initial_valueConst*
valueB
 *fff?*
_class
loc:@conv1/bias*
dtype0*
_output_shapes
: 

beta1_power
VariableV2*
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@conv1/bias*
	container *
shape: 
­
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
T0*
_class
loc:@conv1/bias*
validate_shape(*
_output_shapes
: 
i
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@conv1/bias*
_output_shapes
: 
}
beta2_power/initial_valueConst*
valueB
 *w¾?*
_class
loc:@conv1/bias*
dtype0*
_output_shapes
: 

beta2_power
VariableV2*
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@conv1/bias*
	container *
shape: 
­
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
_class
loc:@conv1/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
i
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@conv1/bias*
_output_shapes
: 
«
$conv1/weights/Adam/Initializer/zerosConst*
dtype0*&
_output_shapes
: *%
valueB *    * 
_class
loc:@conv1/weights
ø
conv1/weights/Adam
VariableV2*
	container *
shape: *
dtype0*&
_output_shapes
: *
shared_name * 
_class
loc:@conv1/weights
Ł
conv1/weights/Adam/AssignAssignconv1/weights/Adam$conv1/weights/Adam/Initializer/zeros*&
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@conv1/weights*
validate_shape(

conv1/weights/Adam/readIdentityconv1/weights/Adam*&
_output_shapes
: *
T0* 
_class
loc:@conv1/weights
­
&conv1/weights/Adam_1/Initializer/zerosConst*&
_output_shapes
: *%
valueB *    * 
_class
loc:@conv1/weights*
dtype0
ŗ
conv1/weights/Adam_1
VariableV2*
shared_name * 
_class
loc:@conv1/weights*
	container *
shape: *
dtype0*&
_output_shapes
: 
ß
conv1/weights/Adam_1/AssignAssignconv1/weights/Adam_1&conv1/weights/Adam_1/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv1/weights*
validate_shape(*&
_output_shapes
: 

conv1/weights/Adam_1/readIdentityconv1/weights/Adam_1*
T0* 
_class
loc:@conv1/weights*&
_output_shapes
: 

!conv1/bias/Adam/Initializer/zerosConst*
valueB *    *
_class
loc:@conv1/bias*
dtype0*
_output_shapes
: 

conv1/bias/Adam
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@conv1/bias
Į
conv1/bias/Adam/AssignAssignconv1/bias/Adam!conv1/bias/Adam/Initializer/zeros*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@conv1/bias*
validate_shape(
u
conv1/bias/Adam/readIdentityconv1/bias/Adam*
T0*
_class
loc:@conv1/bias*
_output_shapes
: 

#conv1/bias/Adam_1/Initializer/zerosConst*
_output_shapes
: *
valueB *    *
_class
loc:@conv1/bias*
dtype0

conv1/bias/Adam_1
VariableV2*
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@conv1/bias*
	container *
shape: 
Ē
conv1/bias/Adam_1/AssignAssignconv1/bias/Adam_1#conv1/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@conv1/bias*
validate_shape(*
_output_shapes
: 
y
conv1/bias/Adam_1/readIdentityconv1/bias/Adam_1*
T0*
_class
loc:@conv1/bias*
_output_shapes
: 
Æ
4conv2/weights/Adam/Initializer/zeros/shape_as_tensorConst*%
valueB"          @   * 
_class
loc:@conv2/weights*
dtype0*
_output_shapes
:

*conv2/weights/Adam/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2/weights*
dtype0*
_output_shapes
: 
ó
$conv2/weights/Adam/Initializer/zerosFill4conv2/weights/Adam/Initializer/zeros/shape_as_tensor*conv2/weights/Adam/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2/weights*&
_output_shapes
: @
ø
conv2/weights/Adam
VariableV2*
dtype0*&
_output_shapes
: @*
shared_name * 
_class
loc:@conv2/weights*
	container *
shape: @
Ł
conv2/weights/Adam/AssignAssignconv2/weights/Adam$conv2/weights/Adam/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2/weights*
validate_shape(*&
_output_shapes
: @

conv2/weights/Adam/readIdentityconv2/weights/Adam*
T0* 
_class
loc:@conv2/weights*&
_output_shapes
: @
±
6conv2/weights/Adam_1/Initializer/zeros/shape_as_tensorConst*%
valueB"          @   * 
_class
loc:@conv2/weights*
dtype0*
_output_shapes
:

,conv2/weights/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    * 
_class
loc:@conv2/weights*
dtype0*
_output_shapes
: 
ł
&conv2/weights/Adam_1/Initializer/zerosFill6conv2/weights/Adam_1/Initializer/zeros/shape_as_tensor,conv2/weights/Adam_1/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@conv2/weights*&
_output_shapes
: @
ŗ
conv2/weights/Adam_1
VariableV2*
shared_name * 
_class
loc:@conv2/weights*
	container *
shape: @*
dtype0*&
_output_shapes
: @
ß
conv2/weights/Adam_1/AssignAssignconv2/weights/Adam_1&conv2/weights/Adam_1/Initializer/zeros*
T0* 
_class
loc:@conv2/weights*
validate_shape(*&
_output_shapes
: @*
use_locking(

conv2/weights/Adam_1/readIdentityconv2/weights/Adam_1*
T0* 
_class
loc:@conv2/weights*&
_output_shapes
: @

!conv2/bias/Adam/Initializer/zerosConst*
valueB@*    *
_class
loc:@conv2/bias*
dtype0*
_output_shapes
:@

conv2/bias/Adam
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *
_class
loc:@conv2/bias*
	container 
Į
conv2/bias/Adam/AssignAssignconv2/bias/Adam!conv2/bias/Adam/Initializer/zeros*
T0*
_class
loc:@conv2/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
u
conv2/bias/Adam/readIdentityconv2/bias/Adam*
T0*
_class
loc:@conv2/bias*
_output_shapes
:@

#conv2/bias/Adam_1/Initializer/zerosConst*
valueB@*    *
_class
loc:@conv2/bias*
dtype0*
_output_shapes
:@

conv2/bias/Adam_1
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *
_class
loc:@conv2/bias*
	container 
Ē
conv2/bias/Adam_1/AssignAssignconv2/bias/Adam_1#conv2/bias/Adam_1/Initializer/zeros*
_class
loc:@conv2/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
y
conv2/bias/Adam_1/readIdentityconv2/bias/Adam_1*
T0*
_class
loc:@conv2/bias*
_output_shapes
:@
£
2fc1/weights/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      *
_class
loc:@fc1/weights*
dtype0*
_output_shapes
:

(fc1/weights/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@fc1/weights*
dtype0*
_output_shapes
: 
ä
"fc1/weights/Adam/Initializer/zerosFill2fc1/weights/Adam/Initializer/zeros/shape_as_tensor(fc1/weights/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@fc1/weights*
_output_shapes
:	 
¦
fc1/weights/Adam
VariableV2*
_output_shapes
:	 *
shared_name *
_class
loc:@fc1/weights*
	container *
shape:	 *
dtype0
Ź
fc1/weights/Adam/AssignAssignfc1/weights/Adam"fc1/weights/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@fc1/weights*
validate_shape(*
_output_shapes
:	 
}
fc1/weights/Adam/readIdentityfc1/weights/Adam*
_output_shapes
:	 *
T0*
_class
loc:@fc1/weights
„
4fc1/weights/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *
_class
loc:@fc1/weights*
dtype0*
_output_shapes
:

*fc1/weights/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@fc1/weights*
dtype0*
_output_shapes
: 
ź
$fc1/weights/Adam_1/Initializer/zerosFill4fc1/weights/Adam_1/Initializer/zeros/shape_as_tensor*fc1/weights/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@fc1/weights*
_output_shapes
:	 
Ø
fc1/weights/Adam_1
VariableV2*
shared_name *
_class
loc:@fc1/weights*
	container *
shape:	 *
dtype0*
_output_shapes
:	 
Š
fc1/weights/Adam_1/AssignAssignfc1/weights/Adam_1$fc1/weights/Adam_1/Initializer/zeros*
_output_shapes
:	 *
use_locking(*
T0*
_class
loc:@fc1/weights*
validate_shape(

fc1/weights/Adam_1/readIdentityfc1/weights/Adam_1*
T0*
_class
loc:@fc1/weights*
_output_shapes
:	 

fc1/bias/Adam/Initializer/zerosConst*
_output_shapes
:*
valueB*    *
_class
loc:@fc1/bias*
dtype0

fc1/bias/Adam
VariableV2*
shared_name *
_class
loc:@fc1/bias*
	container *
shape:*
dtype0*
_output_shapes
:
¹
fc1/bias/Adam/AssignAssignfc1/bias/Adamfc1/bias/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@fc1/bias*
validate_shape(*
_output_shapes
:
o
fc1/bias/Adam/readIdentityfc1/bias/Adam*
_class
loc:@fc1/bias*
_output_shapes
:*
T0

!fc1/bias/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@fc1/bias*
dtype0*
_output_shapes
:

fc1/bias/Adam_1
VariableV2*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@fc1/bias*
	container *
shape:
æ
fc1/bias/Adam_1/AssignAssignfc1/bias/Adam_1!fc1/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@fc1/bias*
validate_shape(*
_output_shapes
:
s
fc1/bias/Adam_1/readIdentityfc1/bias/Adam_1*
T0*
_class
loc:@fc1/bias*
_output_shapes
:
W
Adam/learning_rateConst*
valueB
 *
×#<*
dtype0*
_output_shapes
: 
O

Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
O

Adam/beta2Const*
valueB
 *w¾?*
dtype0*
_output_shapes
: 
Q
Adam/epsilonConst*
valueB
 *wĢ+2*
dtype0*
_output_shapes
: 
ł
#Adam/update_conv1/weights/ApplyAdam	ApplyAdamconv1/weightsconv1/weights/Adamconv1/weights/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon6gradients/conv1/Conv2D_grad/tuple/control_dependency_1*&
_output_shapes
: *
use_locking( *
T0* 
_class
loc:@conv1/weights*
use_nesterov( 
ß
 Adam/update_conv1/bias/ApplyAdam	ApplyAdam
conv1/biasconv1/bias/Adamconv1/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon7gradients/conv1/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@conv1/bias*
use_nesterov( *
_output_shapes
: 
ł
#Adam/update_conv2/weights/ApplyAdam	ApplyAdamconv2/weightsconv2/weights/Adamconv2/weights/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon6gradients/conv2/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0* 
_class
loc:@conv2/weights*
use_nesterov( *&
_output_shapes
: @
ß
 Adam/update_conv2/bias/ApplyAdam	ApplyAdam
conv2/biasconv2/bias/Adamconv2/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon7gradients/conv2/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@conv2/bias*
use_nesterov( *
_output_shapes
:@
ę
!Adam/update_fc1/weights/ApplyAdam	ApplyAdamfc1/weightsfc1/weights/Adamfc1/weights/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon4gradients/fc1/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@fc1/weights*
use_nesterov( *
_output_shapes
:	 
Ļ
Adam/update_fc1/bias/ApplyAdam	ApplyAdamfc1/biasfc1/bias/Adamfc1/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon1gradients/fc1/Add_grad/tuple/control_dependency_1*
_output_shapes
:*
use_locking( *
T0*
_class
loc:@fc1/bias*
use_nesterov( 
Ä
Adam/mulMulbeta1_power/read
Adam/beta1!^Adam/update_conv1/bias/ApplyAdam$^Adam/update_conv1/weights/ApplyAdam!^Adam/update_conv2/bias/ApplyAdam$^Adam/update_conv2/weights/ApplyAdam^Adam/update_fc1/bias/ApplyAdam"^Adam/update_fc1/weights/ApplyAdam*
T0*
_class
loc:@conv1/bias*
_output_shapes
: 

Adam/AssignAssignbeta1_powerAdam/mul*
_class
loc:@conv1/bias*
validate_shape(*
_output_shapes
: *
use_locking( *
T0
Ę

Adam/mul_1Mulbeta2_power/read
Adam/beta2!^Adam/update_conv1/bias/ApplyAdam$^Adam/update_conv1/weights/ApplyAdam!^Adam/update_conv2/bias/ApplyAdam$^Adam/update_conv2/weights/ApplyAdam^Adam/update_fc1/bias/ApplyAdam"^Adam/update_fc1/weights/ApplyAdam*
_output_shapes
: *
T0*
_class
loc:@conv1/bias

Adam/Assign_1Assignbeta2_power
Adam/mul_1*
_class
loc:@conv1/bias*
validate_shape(*
_output_shapes
: *
use_locking( *
T0

Adam/updateNoOp^Adam/Assign^Adam/Assign_1!^Adam/update_conv1/bias/ApplyAdam$^Adam/update_conv1/weights/ApplyAdam!^Adam/update_conv2/bias/ApplyAdam$^Adam/update_conv2/weights/ApplyAdam^Adam/update_fc1/bias/ApplyAdam"^Adam/update_fc1/weights/ApplyAdam
z

Adam/valueConst^Adam/update*
value	B :*
_class
loc:@global_step*
dtype0*
_output_shapes
: 
~
Adam	AssignAddglobal_step
Adam/value*
_output_shapes
: *
use_locking( *
T0*
_class
loc:@global_step
ž
conv1_1/Conv2DConv2D(map/TensorArrayStack/TensorArrayGatherV3conv1/weights/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:’’’’’’’’’   

conv1_1/BiasAddBiasAddconv1_1/Conv2Dconv1/bias/read*/
_output_shapes
:’’’’’’’’’   *
T0*
data_formatNHWC
_
conv1_1/ReluReluconv1_1/BiasAdd*
T0*/
_output_shapes
:’’’’’’’’’   
“
conv1_1/MaxPoolMaxPoolconv1_1/Relu*
ksize
*
paddingSAME*/
_output_shapes
:’’’’’’’’’ *
T0*
data_formatNHWC*
strides

å
conv2_1/Conv2DConv2Dconv1_1/MaxPoolconv2/weights/read*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:’’’’’’’’’@*
	dilations


conv2_1/BiasAddBiasAddconv2_1/Conv2Dconv2/bias/read*
data_formatNHWC*/
_output_shapes
:’’’’’’’’’@*
T0
_
conv2_1/ReluReluconv2_1/BiasAdd*
T0*/
_output_shapes
:’’’’’’’’’@
“
conv2_1/MaxPoolMaxPoolconv2_1/Relu*/
_output_shapes
:’’’’’’’’’@*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingSAME
`
Reshape_1/shapeConst*
valueB"’’’’   *
dtype0*
_output_shapes
:
w
	Reshape_1Reshapeconv2_1/MaxPoolReshape_1/shape*(
_output_shapes
:’’’’’’’’’ *
T0*
Tshape0

fc1_1/MatMulMatMul	Reshape_1fc1/weights/read*
T0*
transpose_a( *'
_output_shapes
:’’’’’’’’’*
transpose_b( 
_
	fc1_1/AddAddfc1_1/MatMulfc1/bias/read*
T0*'
_output_shapes
:’’’’’’’’’
O
SoftmaxSoftmax	fc1_1/Add*'
_output_shapes
:’’’’’’’’’*
T0
R
ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
x
ArgMaxArgMaxSoftmaxArgMax/dimension*
T0*
output_type0	*#
_output_shapes
:’’’’’’’’’*

Tidx0
[
ToInt64CastPlaceholder_2*

DstT0	*#
_output_shapes
:’’’’’’’’’*

SrcT0
M
EqualEqualArgMaxToInt64*
T0	*#
_output_shapes
:’’’’’’’’’
P
CastCastEqual*

DstT0*#
_output_shapes
:’’’’’’’’’*

SrcT0

Q
Const_1Const*
valueB: *
dtype0*
_output_shapes
:
[
Mean_1MeanCastConst_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
ø
save/SaveV2/tensor_namesConst*ė
valueįBŽBbeta1_powerBbeta2_powerB
conv1/biasBconv1/bias/AdamBconv1/bias/Adam_1Bconv1/weightsBconv1/weights/AdamBconv1/weights/Adam_1B
conv2/biasBconv2/bias/AdamBconv2/bias/Adam_1Bconv2/weightsBconv2/weights/AdamBconv2/weights/Adam_1Bfc1/biasBfc1/bias/AdamBfc1/bias/Adam_1Bfc1/weightsBfc1/weights/AdamBfc1/weights/Adam_1Bglobal_step*
dtype0*
_output_shapes
:

save/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*=
value4B2B B B B B B B B B B B B B B B B B B B B B 
Ō
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta2_power
conv1/biasconv1/bias/Adamconv1/bias/Adam_1conv1/weightsconv1/weights/Adamconv1/weights/Adam_1
conv2/biasconv2/bias/Adamconv2/bias/Adam_1conv2/weightsconv2/weights/Adamconv2/weights/Adam_1fc1/biasfc1/bias/Adamfc1/bias/Adam_1fc1/weightsfc1/weights/Adamfc1/weights/Adam_1global_step*#
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
_output_shapes
: *
T0*
_class
loc:@save/Const
»
save/RestoreV2/tensor_namesConst*ė
valueįBŽBbeta1_powerBbeta2_powerB
conv1/biasBconv1/bias/AdamBconv1/bias/Adam_1Bconv1/weightsBconv1/weights/AdamBconv1/weights/Adam_1B
conv2/biasBconv2/bias/AdamBconv2/bias/Adam_1Bconv2/weightsBconv2/weights/AdamBconv2/weights/Adam_1Bfc1/biasBfc1/bias/AdamBfc1/bias/Adam_1Bfc1/weightsBfc1/weights/AdamBfc1/weights/Adam_1Bglobal_step*
dtype0*
_output_shapes
:

save/RestoreV2/shape_and_slicesConst*
_output_shapes
:*=
value4B2B B B B B B B B B B B B B B B B B B B B B *
dtype0
ō
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*h
_output_shapesV
T:::::::::::::::::::::*#
dtypes
2

save/AssignAssignbeta1_powersave/RestoreV2*
use_locking(*
T0*
_class
loc:@conv1/bias*
validate_shape(*
_output_shapes
: 

save/Assign_1Assignbeta2_powersave/RestoreV2:1*
use_locking(*
T0*
_class
loc:@conv1/bias*
validate_shape(*
_output_shapes
: 
¢
save/Assign_2Assign
conv1/biassave/RestoreV2:2*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@conv1/bias*
validate_shape(
§
save/Assign_3Assignconv1/bias/Adamsave/RestoreV2:3*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@conv1/bias*
validate_shape(
©
save/Assign_4Assignconv1/bias/Adam_1save/RestoreV2:4*
use_locking(*
T0*
_class
loc:@conv1/bias*
validate_shape(*
_output_shapes
: 
“
save/Assign_5Assignconv1/weightssave/RestoreV2:5*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@conv1/weights
¹
save/Assign_6Assignconv1/weights/Adamsave/RestoreV2:6*
use_locking(*
T0* 
_class
loc:@conv1/weights*
validate_shape(*&
_output_shapes
: 
»
save/Assign_7Assignconv1/weights/Adam_1save/RestoreV2:7*
T0* 
_class
loc:@conv1/weights*
validate_shape(*&
_output_shapes
: *
use_locking(
¢
save/Assign_8Assign
conv2/biassave/RestoreV2:8*
use_locking(*
T0*
_class
loc:@conv2/bias*
validate_shape(*
_output_shapes
:@
§
save/Assign_9Assignconv2/bias/Adamsave/RestoreV2:9*
T0*
_class
loc:@conv2/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
«
save/Assign_10Assignconv2/bias/Adam_1save/RestoreV2:10*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@conv2/bias*
validate_shape(
¶
save/Assign_11Assignconv2/weightssave/RestoreV2:11*
use_locking(*
T0* 
_class
loc:@conv2/weights*
validate_shape(*&
_output_shapes
: @
»
save/Assign_12Assignconv2/weights/Adamsave/RestoreV2:12*
validate_shape(*&
_output_shapes
: @*
use_locking(*
T0* 
_class
loc:@conv2/weights
½
save/Assign_13Assignconv2/weights/Adam_1save/RestoreV2:13*
use_locking(*
T0* 
_class
loc:@conv2/weights*
validate_shape(*&
_output_shapes
: @
 
save/Assign_14Assignfc1/biassave/RestoreV2:14*
_class
loc:@fc1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
„
save/Assign_15Assignfc1/bias/Adamsave/RestoreV2:15*
T0*
_class
loc:@fc1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
§
save/Assign_16Assignfc1/bias/Adam_1save/RestoreV2:16*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@fc1/bias*
validate_shape(
«
save/Assign_17Assignfc1/weightssave/RestoreV2:17*
_output_shapes
:	 *
use_locking(*
T0*
_class
loc:@fc1/weights*
validate_shape(
°
save/Assign_18Assignfc1/weights/Adamsave/RestoreV2:18*
use_locking(*
T0*
_class
loc:@fc1/weights*
validate_shape(*
_output_shapes
:	 
²
save/Assign_19Assignfc1/weights/Adam_1save/RestoreV2:19*
use_locking(*
T0*
_class
loc:@fc1/weights*
validate_shape(*
_output_shapes
:	 
¢
save/Assign_20Assignglobal_stepsave/RestoreV2:20*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
ń
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
N
	loss/tagsConst*
_output_shapes
: *
valueB
 Bloss*
dtype0
G
lossScalarSummary	loss/tagsMean*
T0*
_output_shapes
: 

initNoOp^beta1_power/Assign^beta2_power/Assign^conv1/bias/Adam/Assign^conv1/bias/Adam_1/Assign^conv1/bias/Assign^conv1/weights/Adam/Assign^conv1/weights/Adam_1/Assign^conv1/weights/Assign^conv2/bias/Adam/Assign^conv2/bias/Adam_1/Assign^conv2/bias/Assign^conv2/weights/Adam/Assign^conv2/weights/Adam_1/Assign^conv2/weights/Assign^fc1/bias/Adam/Assign^fc1/bias/Adam_1/Assign^fc1/bias/Assign^fc1/weights/Adam/Assign^fc1/weights/Adam_1/Assign^fc1/weights/Assign^global_step/Assign
I
Merge/MergeSummaryMergeSummaryloss*
N*
_output_shapes
: 

init_all_tablesNoOp
(
legacy_init_opNoOp^init_all_tables
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_b75306f0c11c4c00bf94707c5bf98cf4/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_1/ShardedFilename/shardConst*
_output_shapes
: *
value	B : *
dtype0

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
ŗ
save_1/SaveV2/tensor_namesConst*ė
valueįBŽBbeta1_powerBbeta2_powerB
conv1/biasBconv1/bias/AdamBconv1/bias/Adam_1Bconv1/weightsBconv1/weights/AdamBconv1/weights/Adam_1B
conv2/biasBconv2/bias/AdamBconv2/bias/Adam_1Bconv2/weightsBconv2/weights/AdamBconv2/weights/Adam_1Bfc1/biasBfc1/bias/AdamBfc1/bias/Adam_1Bfc1/weightsBfc1/weights/AdamBfc1/weights/Adam_1Bglobal_step*
dtype0*
_output_shapes
:

save_1/SaveV2/shape_and_slicesConst*
_output_shapes
:*=
value4B2B B B B B B B B B B B B B B B B B B B B B *
dtype0
ę
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesbeta1_powerbeta2_power
conv1/biasconv1/bias/Adamconv1/bias/Adam_1conv1/weightsconv1/weights/Adamconv1/weights/Adam_1
conv2/biasconv2/bias/Adamconv2/bias/Adam_1conv2/weightsconv2/weights/Adamconv2/weights/Adam_1fc1/biasfc1/bias/Adamfc1/bias/Adam_1fc1/weightsfc1/weights/Adamfc1/weights/Adam_1global_step*#
dtypes
2

save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
£
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
N*
_output_shapes
:*
T0*

axis 

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency*
_output_shapes
: *
T0
½
save_1/RestoreV2/tensor_namesConst*ė
valueįBŽBbeta1_powerBbeta2_powerB
conv1/biasBconv1/bias/AdamBconv1/bias/Adam_1Bconv1/weightsBconv1/weights/AdamBconv1/weights/Adam_1B
conv2/biasBconv2/bias/AdamBconv2/bias/Adam_1Bconv2/weightsBconv2/weights/AdamBconv2/weights/Adam_1Bfc1/biasBfc1/bias/AdamBfc1/bias/Adam_1Bfc1/weightsBfc1/weights/AdamBfc1/weights/Adam_1Bglobal_step*
dtype0*
_output_shapes
:

!save_1/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*=
value4B2B B B B B B B B B B B B B B B B B B B B B 
ü
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*#
dtypes
2*h
_output_shapesV
T:::::::::::::::::::::

save_1/AssignAssignbeta1_powersave_1/RestoreV2*
use_locking(*
T0*
_class
loc:@conv1/bias*
validate_shape(*
_output_shapes
: 
£
save_1/Assign_1Assignbeta2_powersave_1/RestoreV2:1*
use_locking(*
T0*
_class
loc:@conv1/bias*
validate_shape(*
_output_shapes
: 
¦
save_1/Assign_2Assign
conv1/biassave_1/RestoreV2:2*
use_locking(*
T0*
_class
loc:@conv1/bias*
validate_shape(*
_output_shapes
: 
«
save_1/Assign_3Assignconv1/bias/Adamsave_1/RestoreV2:3*
use_locking(*
T0*
_class
loc:@conv1/bias*
validate_shape(*
_output_shapes
: 
­
save_1/Assign_4Assignconv1/bias/Adam_1save_1/RestoreV2:4*
T0*
_class
loc:@conv1/bias*
validate_shape(*
_output_shapes
: *
use_locking(
ø
save_1/Assign_5Assignconv1/weightssave_1/RestoreV2:5*
T0* 
_class
loc:@conv1/weights*
validate_shape(*&
_output_shapes
: *
use_locking(
½
save_1/Assign_6Assignconv1/weights/Adamsave_1/RestoreV2:6* 
_class
loc:@conv1/weights*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0
æ
save_1/Assign_7Assignconv1/weights/Adam_1save_1/RestoreV2:7*
use_locking(*
T0* 
_class
loc:@conv1/weights*
validate_shape(*&
_output_shapes
: 
¦
save_1/Assign_8Assign
conv2/biassave_1/RestoreV2:8*
use_locking(*
T0*
_class
loc:@conv2/bias*
validate_shape(*
_output_shapes
:@
«
save_1/Assign_9Assignconv2/bias/Adamsave_1/RestoreV2:9*
use_locking(*
T0*
_class
loc:@conv2/bias*
validate_shape(*
_output_shapes
:@
Æ
save_1/Assign_10Assignconv2/bias/Adam_1save_1/RestoreV2:10*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@conv2/bias
ŗ
save_1/Assign_11Assignconv2/weightssave_1/RestoreV2:11*
use_locking(*
T0* 
_class
loc:@conv2/weights*
validate_shape(*&
_output_shapes
: @
æ
save_1/Assign_12Assignconv2/weights/Adamsave_1/RestoreV2:12*
T0* 
_class
loc:@conv2/weights*
validate_shape(*&
_output_shapes
: @*
use_locking(
Į
save_1/Assign_13Assignconv2/weights/Adam_1save_1/RestoreV2:13*
use_locking(*
T0* 
_class
loc:@conv2/weights*
validate_shape(*&
_output_shapes
: @
¤
save_1/Assign_14Assignfc1/biassave_1/RestoreV2:14*
T0*
_class
loc:@fc1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
©
save_1/Assign_15Assignfc1/bias/Adamsave_1/RestoreV2:15*
use_locking(*
T0*
_class
loc:@fc1/bias*
validate_shape(*
_output_shapes
:
«
save_1/Assign_16Assignfc1/bias/Adam_1save_1/RestoreV2:16*
T0*
_class
loc:@fc1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
Æ
save_1/Assign_17Assignfc1/weightssave_1/RestoreV2:17*
_class
loc:@fc1/weights*
validate_shape(*
_output_shapes
:	 *
use_locking(*
T0
“
save_1/Assign_18Assignfc1/weights/Adamsave_1/RestoreV2:18*
use_locking(*
T0*
_class
loc:@fc1/weights*
validate_shape(*
_output_shapes
:	 
¶
save_1/Assign_19Assignfc1/weights/Adam_1save_1/RestoreV2:19*
_class
loc:@fc1/weights*
validate_shape(*
_output_shapes
:	 *
use_locking(*
T0
¦
save_1/Assign_20Assignglobal_stepsave_1/RestoreV2:20*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: *
use_locking(

save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
1
save_1/restore_allNoOp^save_1/restore_shard "B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"$
legacy_init_op

legacy_init_op"
train_op

Adam"ć
trainable_variablesĖČ
h
conv1/weights:0conv1/weights/Assignconv1/weights/read:02)conv1/weights/Initializer/random_normal:0
\
conv1/bias:0conv1/bias/Assignconv1/bias/read:02&conv1/bias/Initializer/random_normal:0
h
conv2/weights:0conv2/weights/Assignconv2/weights/read:02)conv2/weights/Initializer/random_normal:0
\
conv2/bias:0conv2/bias/Assignconv2/bias/read:02&conv2/bias/Initializer/random_normal:0
`
fc1/weights:0fc1/weights/Assignfc1/weights/read:02'fc1/weights/Initializer/random_normal:0
T

fc1/bias:0fc1/bias/Assignfc1/bias/read:02$fc1/bias/Initializer/random_normal:0"
	summaries


loss:0"Ź
while_contextøµ
²
map/while/while_context
*map/while/LoopCond:02map/while/Merge:0:map/while/Identity:0Bmap/while/Exit:0Bmap/while/Exit_1:0J

map/TensorArray:0
@map/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
map/TensorArray_1:0
map/strided_slice:0
map/while/DecodeJpeg:0
map/while/Enter:0
map/while/Enter_1:0
map/while/Exit:0
map/while/Exit_1:0
map/while/Identity:0
map/while/Identity_1:0
map/while/Less/Enter:0
map/while/Less:0
map/while/LoopCond:0
map/while/Merge:0
map/while/Merge:1
map/while/Merge_1:0
map/while/Merge_1:1
map/while/NextIteration:0
map/while/NextIteration_1:0
map/while/Switch:0
map/while/Switch:1
map/while/Switch_1:0
map/while/Switch_1:1
#map/while/TensorArrayReadV3/Enter:0
%map/while/TensorArrayReadV3/Enter_1:0
map/while/TensorArrayReadV3:0
5map/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
/map/while/TensorArrayWrite/TensorArrayWriteV3:0
map/while/add/y:0
map/while/add:0
(map/while/resize_images/ExpandDims/dim:0
$map/while/resize_images/ExpandDims:0
(map/while/resize_images/ResizeBilinear:0
!map/while/resize_images/Squeeze:0
map/while/resize_images/size:08
map/TensorArray:0#map/while/TensorArrayReadV3/Enter:0-
map/strided_slice:0map/while/Less/Enter:0L
map/TensorArray_1:05map/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0i
@map/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0%map/while/TensorArrayReadV3/Enter_1:0Rmap/while/Enter:0Rmap/while/Enter_1:0"«
	variables
h
conv1/weights:0conv1/weights/Assignconv1/weights/read:02)conv1/weights/Initializer/random_normal:0
\
conv1/bias:0conv1/bias/Assignconv1/bias/read:02&conv1/bias/Initializer/random_normal:0
h
conv2/weights:0conv2/weights/Assignconv2/weights/read:02)conv2/weights/Initializer/random_normal:0
\
conv2/bias:0conv2/bias/Assignconv2/bias/read:02&conv2/bias/Initializer/random_normal:0
`
fc1/weights:0fc1/weights/Assignfc1/weights/read:02'fc1/weights/Initializer/random_normal:0
T

fc1/bias:0fc1/bias/Assignfc1/bias/read:02$fc1/bias/Initializer/random_normal:0
T
global_step:0global_step/Assignglobal_step/read:02global_step/initial_value:0
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
t
conv1/weights/Adam:0conv1/weights/Adam/Assignconv1/weights/Adam/read:02&conv1/weights/Adam/Initializer/zeros:0
|
conv1/weights/Adam_1:0conv1/weights/Adam_1/Assignconv1/weights/Adam_1/read:02(conv1/weights/Adam_1/Initializer/zeros:0
h
conv1/bias/Adam:0conv1/bias/Adam/Assignconv1/bias/Adam/read:02#conv1/bias/Adam/Initializer/zeros:0
p
conv1/bias/Adam_1:0conv1/bias/Adam_1/Assignconv1/bias/Adam_1/read:02%conv1/bias/Adam_1/Initializer/zeros:0
t
conv2/weights/Adam:0conv2/weights/Adam/Assignconv2/weights/Adam/read:02&conv2/weights/Adam/Initializer/zeros:0
|
conv2/weights/Adam_1:0conv2/weights/Adam_1/Assignconv2/weights/Adam_1/read:02(conv2/weights/Adam_1/Initializer/zeros:0
h
conv2/bias/Adam:0conv2/bias/Adam/Assignconv2/bias/Adam/read:02#conv2/bias/Adam/Initializer/zeros:0
p
conv2/bias/Adam_1:0conv2/bias/Adam_1/Assignconv2/bias/Adam_1/read:02%conv2/bias/Adam_1/Initializer/zeros:0
l
fc1/weights/Adam:0fc1/weights/Adam/Assignfc1/weights/Adam/read:02$fc1/weights/Adam/Initializer/zeros:0
t
fc1/weights/Adam_1:0fc1/weights/Adam_1/Assignfc1/weights/Adam_1/read:02&fc1/weights/Adam_1/Initializer/zeros:0
`
fc1/bias/Adam:0fc1/bias/Adam/Assignfc1/bias/Adam/read:02!fc1/bias/Adam/Initializer/zeros:0
h
fc1/bias/Adam_1:0fc1/bias/Adam_1/Assignfc1/bias/Adam_1/read:02#fc1/bias/Adam_1/Initializer/zeros:0*æ
serving_default«
5
images+
model_input_b64_images:0’’’’’’’’’)

prediction
ArgMax:0	’’’’’’’’’+
softmax 
	Softmax:0’’’’’’’’’tensorflow/serving/predict