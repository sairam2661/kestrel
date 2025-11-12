#map = affine_map<(d0) -> (d0)>
#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "tensor_extract"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 13 : index}> : () -> index
    %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<14xi8>>
    %3 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<14xi8>>
    %4 = "iree_tensor_ext.dispatch.tensor.load"(%2) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 14>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<14xi8>>) -> tensor<14xi8>
    %5 = "arith.trunci"(%4) <{overflowFlags = #arith.overflow<none>}> : (tensor<14xi8>) -> tensor<14xi1>
    %6 = "tensor.empty"() : () -> tensor<14xi1>
    %7 = "linalg.generic"(%6) <{indexing_maps = [#map], iterator_types = [#linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 0, 1>}> ({
    ^bb0(%arg0: i1):
      %9 = "linalg.index"() <{dim = 0 : i64}> : () -> index
      %10 = "arith.subi"(%1, %9) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
      %11 = "tensor.extract"(%5, %10) : (tensor<14xi1>, index) -> i1
      "linalg.yield"(%11) : (i1) -> ()
    }) : (tensor<14xi1>) -> tensor<14xi1>
    %8 = "arith.extui"(%7) : (tensor<14xi1>) -> tensor<14xi8>
    "iree_tensor_ext.dispatch.tensor.store"(%8, %3) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 14>, static_strides = array<i64: 1>}> : (tensor<14xi8>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<14xi8>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

