?n
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
8
Const
output"dtype"
valuetensor"
dtypetype
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
?
InitializeTableFromTextFileV2
table_handle
filename"
	key_indexint(0?????????"
value_indexint(0?????????"+

vocab_sizeint?????????(0?????????"
	delimiterstring	?
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
@
ReadVariableOp
resource
value"dtype"
dtypetype?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
H
ShardedFilename
basename	
shard

num_shards
filename
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
9
VarIsInitializedOp
resource
is_initialized
?"serve*2.4.02unknown8?Q
W
asset_path_initializerPlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
VariableVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable
a
)Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable*
_output_shapes
: 
R
Variable/AssignAssignVariableOpVariableasset_path_initializer*
dtype0
]
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
: *
dtype0
?

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*?
shared_nametrhash_table_<object3.third_party.tensorflow.python.training.tracking.tracking.Asset object at 0x7f4ca62f8eb8>_-2_-1*
value_dtype0	
Y
asset_path_initializer_1Placeholder*
_output_shapes
: *
dtype0*
shape: 
?

Variable_1VarHandleOp*
_class
loc:@Variable_1*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable_1
e
+Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_1*
_output_shapes
: 
X
Variable_1/AssignAssignVariableOp
Variable_1asset_path_initializer_1*
dtype0
a
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
: *
dtype0
P
ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
e
ReadVariableOpReadVariableOp
Variable_1^Variable_1/Assign*
_output_shapes
: *
dtype0
?
StatefulPartitionedCallStatefulPartitionedCallReadVariableOp
hash_table*
Tin
2*
Tout
2*
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
GPU 2J 8? * 
fR
__inference_<lambda>_46
:
NoOpNoOp^StatefulPartitionedCall^Variable_1/Assign
?
Const_1Const"/device:CPU:0*
_output_shapes
: *
dtype0*d
value[BY BS
&
	asset
	table

signatures
 

_initializer
 

	_filename
 
J
serving_default_wordPlaceholder*
_output_shapes
:*
dtype0
?
StatefulPartitionedCall_1StatefulPartitionedCallserving_default_word
hash_tableConst*
Tin
2	*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference_signature_wrapper_22
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameConst_1*
Tin
2*
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
GPU 2J 8? *$
fR
__inference__traced_save_81
?
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filename*
Tin
2*
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
GPU 2J 8? *'
f"R 
__inference__traced_restore_91?9
?
?
__inference_<lambda>_46!
text_file_init_asset_filepath=
9text_file_init_initializetablefromtextfilev2_table_handle
identity??,text_file_init/InitializeTableFromTextFileV2?
,text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV29text_file_init_initializetablefromtextfilev2_table_handletext_file_init_asset_filepath*
_output_shapes
 *
	key_index?????????*
value_index?????????2.
,text_file_init/InitializeTableFromTextFileV2S
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
Const?
IdentityIdentityConst:output:0-^text_file_init/InitializeTableFromTextFileV2*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
: :2\
,text_file_init/InitializeTableFromTextFileV2,text_file_init/InitializeTableFromTextFileV2: 

_output_shapes
: 
?
7
__inference__creator_27
identity??
hash_table?

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*?
shared_nametrhash_table_<object3.third_party.tensorflow.python.training.tracking.tracking.Asset object at 0x7f4ca62f8eb8>_-2_-1*
value_dtype0	2

hash_tablei
IdentityIdentityhash_table:table_handle:0^hash_table*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 2

hash_table
hash_table
?
s
 __inference_signature_wrapper_22
word
unknown
	unknown_0	
identity	??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallwordunknown	unknown_0*
Tin
2	*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *
fR
__inference_lookup_112
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0	*
_output_shapes
:2

Identity"
identityIdentity:output:0*
_input_shapes

::: 22
StatefulPartitionedCallStatefulPartitionedCall:> :

_output_shapes
:

_user_specified_nameword:

_output_shapes
: 
?
j
__inference__traced_save_81
file_prefix
savev2_const_1

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
Const?
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*<
value3B1 B+_temp_529c8ba295d94dee848fc35f9e188651/part2	
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0savev2_const_1"/device:CPU:0*
_output_shapes
 *
dtypes
22
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

identity_1Identity_1:output:0*
_input_shapes
: : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: 
?
?
__inference__initializer_34!
text_file_init_asset_filepath=
9text_file_init_initializetablefromtextfilev2_table_handle
identity??,text_file_init/InitializeTableFromTextFileV2?
,text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV29text_file_init_initializetablefromtextfilev2_table_handletext_file_init_asset_filepath*
_output_shapes
 *
	key_index?????????*
value_index?????????2.
,text_file_init/InitializeTableFromTextFileV2P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Const?
IdentityIdentityConst:output:0-^text_file_init/InitializeTableFromTextFileV2*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
: :2\
,text_file_init/InitializeTableFromTextFileV2,text_file_init/InitializeTableFromTextFileV2: 

_output_shapes
: 
?
D
__inference__traced_restore_91
file_prefix

identity_1??
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
:*
dtypes
22
	RestoreV29
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpd
IdentityIdentityfile_prefix^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

IdentityX

Identity_1IdentityIdentity:output:0*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*
_input_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
__inference_lookup_11
word.
*none_lookup_lookuptablefindv2_table_handle/
+none_lookup_lookuptablefindv2_default_value	
identity	??None_Lookup/LookupTableFindV2?
None_Lookup/LookupTableFindV2LookupTableFindV2*none_lookup_lookuptablefindv2_table_handleword+none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*
_output_shapes
:2
None_Lookup/LookupTableFindV2?
IdentityIdentity&None_Lookup/LookupTableFindV2:values:0^None_Lookup/LookupTableFindV2*
T0	*
_output_shapes
:2

Identity"
identityIdentity:output:0*
_input_shapes

::: 2>
None_Lookup/LookupTableFindV2None_Lookup/LookupTableFindV2:> :

_output_shapes
:

_user_specified_nameword:

_output_shapes
: 
?
)
__inference__destroyer_39
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes "?L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_defaultu
&
word
serving_default_word:0/
output_0#
StatefulPartitionedCall_1:0	tensorflow/serving/predict28

asset_path_initializer:0static_hashtable_asset.txt2:

asset_path_initializer_1:0static_hashtable_asset.txt:?
P
	asset
	table

signatures

lookup"
_generic_user_object
* 
R
_initializer
_create_resource
_initialize
	_destroy_resourceR 
,

serving_default"
signature_map
-
	_filename"
_generic_user_object
*
?2?
__inference_lookup_11?
???
FullArgSpec
args?
jself
jword
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
?2?
__inference__creator_27?
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
annotations? *? 
?2?
__inference__initializer_34?
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
annotations? *? 
?2?
__inference__destroyer_39?
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
annotations? *? 
,B*
 __inference_signature_wrapper_22word
	J
Const3
__inference__creator_27?

? 
? "? 5
__inference__destroyer_39?

? 
? "? ;
__inference__initializer_34?

? 
? "? H
__inference_lookup_11/?
?
?
word
? "	?	v
 __inference_signature_wrapper_22R&?#
? 
?

word?
word"$?!

output_0?
output_0	