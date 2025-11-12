#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">], flags = Indirect>
"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<?x32xf32>, sym_name = "fold_collapse_into_loads_dynamic"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %2 = "hal.interface.binding.subspan"(%0, %1) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<2x?x32xf32>>
    %3 = "iree_tensor_ext.dispatch.tensor.load"(%2, %1, %1) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 2, -9223372036854775808, 32>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<2x?x32xf32>>, index, index) -> tensor<2x?x32xf32>
    %4 = "tensor.collapse_shape"(%3) <{reassociation = [[0, 1], [2]]}> : (tensor<2x?x32xf32>) -> tensor<?x32xf32>
    "func.return"(%4) : (tensor<?x32xf32>) -> ()
  }) : () -> ()
}) : () -> ()

