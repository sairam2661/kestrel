#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer, "ReadOnly|Indirect">], flags = Indirect>
"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<?x32xf4E2M1FN>, sym_name = "fold_load_from_bitcast_dynamic"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %2 = "hal.interface.binding.subspan"(%0, %1) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 3 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> : (index, index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?x16xi8>>
    %3 = "iree_tensor_ext.dispatch.tensor.load"(%2, %1, %1) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: -9223372036854775808, 16>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?x16xi8>>, index, index) -> tensor<?x16xi8>
    %4 = "iree_tensor_ext.bitcast"(%3, %1, %1) <{operandSegmentSizes = array<i32: 1, 1, 1>}> : (tensor<?x16xi8>, index, index) -> tensor<?x32xf4E2M1FN>
    "func.return"(%4) : (tensor<?x32xf4E2M1FN>) -> ()
  }) : () -> ()
}) : () -> ()

