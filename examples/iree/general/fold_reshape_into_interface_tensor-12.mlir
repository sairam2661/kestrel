#pipeline_layout = #hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x?x32xf32>) -> (), sym_name = "unsupported_dynamic_store_into_static_subspan"}> ({
  ^bb0(%arg0: tensor<2x?x32xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<16x32xf32>>
    %3 = "tensor.collapse_shape"(%arg0) <{reassociation = [[0, 1], [2]]}> : (tensor<2x?x32xf32>) -> tensor<?x32xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%3, %2, %1) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 1, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, 32>, static_strides = array<i64: 1, 1>}> : (tensor<?x32xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<16x32xf32>>, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

