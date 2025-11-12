#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x8x4x128xf32>) -> (), sym_name = "unsupported_offset_in_static_dims"}> ({
  ^bb0(%arg0: tensor<4x8x4x128xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<4x4608xf32>>
    %2 = "tensor.collapse_shape"(%arg0) <{reassociation = [[0], [1, 2, 3]]}> : (tensor<4x8x4x128xf32>) -> tensor<4x4096xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%2, %1) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 128>, static_sizes = array<i64: 4, 4096>, static_strides = array<i64: 1, 1>}> : (tensor<4x4096xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<4x4608xf32>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

