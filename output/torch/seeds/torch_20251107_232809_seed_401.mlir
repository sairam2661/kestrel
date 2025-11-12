"builtin.module"() ({
  "func.func"() <{function_type = (!torchvvector_rangeTensorType, !torchvvector_indexTensorType) -> !torchvvector_sliceTensorType, sym_name = "test_slice_and_index"}> ({
  ^bb0(%arg0: !torchvvector_rangeTensorType, %arg1: !torchvvector_indexTensorType):
    %cst0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchvvector_indexScalarType
    %cst1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchvvector_indexScalarType
    %cst2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchvvector_indexScalarType
    %indices = "torch.prim.ListConstruct"(%cst1, %cst2) : (!torchvvector_indexScalarType, !torchvvector_indexScalarType) -> !torchvvector_indexListType
    %sliced = "torch.aten.slice.Tensor"(%arg0, %cst0, %cst1, %cst2) : (!torchvvector_rangeTensorType, !torchvvector_indexScalarType, !torchvvector_indexScalarType, !torchvvector_indexScalarType) -> !torchvvector_sliceTensorType
    %indexed = "torch.aten.index_select"(%sliced, %cst0, %indices) : (!torchvvector_sliceTensorType, !torchvvector_indexScalarType, !torchvvector_indexListType) -> !torchvvector_indexSelectTensorType
    "func.return"(%indexed) : (!torchvvector_indexSelectTensorType) -> ()
  }) : () -> ()
}) : () -> ()

#ssa_id_and_type
  = {torchvvector_rangeTensorType = !torchvvector_rangeTensorType, torchvvector_indexTensorType = !torchvvector_indexTensorType, torchvvector_indexScalarType = !torchvvector_indexScalarType, torchvvector_indexListType = !torchvvector_indexListType, torchvvector_sliceTensorType = !torchvvector_sliceTensorType, torchvvector_indexSelectTensorType = !torchvvector_indexSelectTensorType}

#attribute_dict
  = {value = "test_slice_and_index", sym_name = "test_slice_and_index"} 

#operation_list
  = { "torch.constant.int" = () -> !torchvvector_indexScalarType, "torch.prim.ListConstruct" = () -> !torchvvector_indexListType, "torch.aten.slice.Tensor" = () -> !torchvvector_sliceTensorType, "torch.aten.index_select" = () -> !torchvvector_indexSelectTensorType }

#function_result
  = { function_type = (!torchvvector_rangeTensorType, !torchvvector_indexTensorType) -> !torchvvector_indexSelectTensorType } 

#block_label
  = { label = "^bb0" }

#region
  = { block = {block_label = "^bb0", operation_list = { "torch.constant.int" = () -> !torchvvector_indexScalarType, "torch.prim.ListConstruct" = () -> !torchvvector_indexListType, "torch.aten.slice.Tensor" = () -> !torchvvector_sliceTensorType, "torch.aten.index_select" = () -> !torchvvector_indexSelectTensorType } } 

,module
  = { module_type = "builtin.module", region = { block = {block_label = "^bb0", operation_list = { "torch.constant.int" = () -> !torchvvector_indexScalarType, "torch.prim.ListConstruct" = () -> !torchvvector_indexListType, "torch.aten.slice.Tensor" = () -> !torchvvector_sliceTensorType, "torch.aten.index_select" = () -> !torchvvector_indexSelectTensorType } } } 

,generic_module
  = { module_type = "func.func", attribute_dict = {value = "test_slice_and_index", sym_name = "test_slice_and_index"}, region = { block = {block_label = "^bb0", operation_list = { "torch.constant.int" = () -> !torchvvector_indexScalarType, "torch.prim.ListConstruct" = () -> !torchvvector_indexListType, "torch.aten.slice.Tensor" = () -> !torchvvector_sliceTensorType, "torch.aten.index_select" = () -> !torchvvector_indexSelectTensorType } } } 

,mlir_file
  = { definition_and_module_list = { module = { module_type = "builtin.module", region = { block = {block_label = "^bb0", operation_list = { "torch.constant.int" = () -> !torchvvector_indexScalarType, "torch.prim.ListConstruct" = () -> !torchvvector_indexListType, "torch.aten.slice.Tensor" = () -> !torchvvector_sliceTensorType, "torch.aten.index_select" = () -> !torchvvector_indexSelectTensorType } } } } } 

,ssa_id_and_type
  = { torchvvector_rangeTensorType = !torchvvector_rangeTensorType, torchvvector_indexTensorType = !torchvvector_indexTensorType, torchvvector_indexScalarType = !torchvvector_indexScalarType, torchvvector_indexListType = !torchvvector_indexListType, torchvvector_sliceTensorType = !torchvvector_sliceTensorType, torchvvector_indexSelectTensorType = !torchvvector_indexSelectTensorType } 

,attribute_dict
  = { value = "test_slice_and_index", sym_name = "test_slice_and_index" } 

,operation_list
  = { "torch.constant.int" = () -> !torchvvector_indexScalarType, "torch.prim.ListConstruct" = () -> !torchvvector_indexListType, "torch.aten.slice.Tensor" = () -> !torchvvector_sliceTensorType, "torch.aten.index_select" = () -> !torchvvector_indexSelectTensorType } 

,function_result
  = { function_type = (!torchvvector_rangeTensorType, !torchvvector_indexTensorType) -> !torchvvector_indexSelectTensorType } 

,block_label
  = { label = "^bb0" } 

,region
  = { block = { block_label = "^bb0", operation_list = { "torch.constant.int" = () -> !torchvvector_indexScalarType, "torch.prim.ListConstruct" = () -> !torchvvector_indexListType, "torch.aten.slice.Tensor" = () -> !torchvvector_sliceTensorType, "torch.aten.index_select" = () -> !torchvvector_indexSelectTensorType } } } 

,module
  = { module_type = "builtin.module", region = { block = { block_label = "^bb0", operation_list = { "torch.constant.int" = () -> !torchvvector_indexScalarType, "torch.prim.ListConstruct" = () -> !torchvvector_indexListType, "torch.aten.slice.Tensor" = () -> !torchvvector_sliceTensorType, "torch.aten.index_select" = () -> !torchvvector_indexSelectTensorType } } } } 

,generic_module
  = { module_type = "func.func", attribute_dict = { value = "test_slice_and_index", sym_name = "test_slice_and_index" }, region = { block = { block_label = "^bb0", operation_list = { "torch.constant.int" = () -> !torchvvector_indexScalarType, "torch.prim.ListConstruct" = () -> !torchvvector_indexListType, "torch.aten.slice.Tensor" = () -> !torchvvector_sliceTensorType, "torch.aten.index_select" = () -> !torchvvector_indexSelectTensorType } } } } 

,mlir_file
  = { definition_and_module_list = { module = { module_type = "builtin.module", region = { block = { block_label = "^bb0", operation_list = { "torch.constant.int" = () -> !torchvvector_indexScalarType, "torch.prim.ListConstruct" = () -> !torchvvector_indexListType, "torch.aten.slice.Tensor" = () -> !torchvvector_sliceTensorType, "torch.aten.index_select" = () -> !torchvvector_indexSelectTensorType } } } } } 

,ssa_id_and_type
  = { torchvvector_rangeTensorType = !torchvvector_rangeTensorType, torchvvector_indexTensorType = !torchvvector_indexTensorType, torchvvector_indexScalarType = !torchvvector_indexScalarType, torchvvector_indexListType = !torchvvector_indexListType, torchvvector_sliceTensorType = !torchvvector_sliceTensorType, torchvvector_indexSelectTensorType = !torchvvector_indexSelectTensorType } 

,attribute_dict
  = { value = "test_slice_and_index", sym_name = "test_slice_and_index" } 

,operation_list
  = { "torch.constant.int" = () -> !torchvvector_indexScalarType, "torch.prim.ListConstruct" = () -> !torchvvector_indexListType, "torch.aten.slice.Tensor" = () -> !torchvvector_sliceTensorType, "torch.aten.index_select" = () -> !torchvvector_indexSelectTensorType } 

,function_result
  = { function_type = (!torchvvector_rangeTensorType, !torchvvector_indexTensorType) -> !torchvvector_indexSelectTensorType } 

,block_label
  = { label = "^bb0" } 

,region
