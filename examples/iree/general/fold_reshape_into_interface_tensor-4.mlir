#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x?xf32>) -> (), sym_name = "fold_collapse_into_stores_dynamic_rank_reduced_inner"}> ({
  ^bb0(%arg0: tensor<2x?xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %2 = "hal.interface.binding.subspan"(%0, %1) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<32x?xf32>>
    %3 = "tensor.collapse_shape"(%arg0) <{reassociation = [[0, 1]]}> : (tensor<2x?xf32>) -> tensor<?xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%3, %2, %1, %1) <{operandSegmentSizes = array<i32: 1, 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 1, -9223372036854775808>, static_strides = array<i64: 1, 1>}> : (tensor<?xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<32x?xf32>>, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

