#pipeline_layout = #hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#pipeline_layout1 = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">, #hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x?x1x8xi32>) -> (), sym_name = "fold_expand_and_collapse"}> ({
  ^bb0(%arg0: tensor<1x?x1x8xi32>):
    %0 = "arith.constant"() <{value = 128 : index}> : () -> index
    %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %2 = "hal.interface.binding.subspan"(%0, %1) <{alignment = 64 : index, binding = 1 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout1, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<?x8xi32>>
    %3 = "iree_tensor_ext.dispatch.tensor.load"(%2, %1, %1) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, 8>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readwrite:tensor<?x8xi32>>, index, index) -> tensor<?x8xi32>
    %4 = "tensor.expand_shape"(%3, %1) <{reassociation = [[0, 1], [2, 3]], static_output_shape = array<i64: 1, -9223372036854775808, 1, 8>}> : (tensor<?x8xi32>, index) -> tensor<1x?x1x8xi32>
    %5 = "linalg.copy"(%arg0, %4) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg1: i32, %arg2: i32):
      "linalg.yield"(%arg1) : (i32) -> ()
    }) : (tensor<1x?x1x8xi32>, tensor<1x?x1x8xi32>) -> tensor<1x?x1x8xi32>
    %6 = "tensor.collapse_shape"(%5) <{reassociation = [[0, 1], [2, 3]]}> : (tensor<1x?x1x8xi32>) -> tensor<?x8xi32>
    "iree_tensor_ext.dispatch.tensor.store"(%6, %2, %1, %1) <{operandSegmentSizes = array<i32: 1, 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, 8>, static_strides = array<i64: 1, 1>}> : (tensor<?x8xi32>, !iree_tensor_ext.dispatch.tensor<readwrite:tensor<?x8xi32>>, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

