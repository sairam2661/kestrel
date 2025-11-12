#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index, index) -> (), sym_name = "dynamic_dispatch_tensor_load_and_store"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index, %arg3: index):
    %0 = "hal.interface.binding.subspan"(%arg3) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 1>}> : (index) -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<?xf32>>
    %1 = "hal.interface.binding.subspan"(%arg3) <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 1>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xf32>>
    %2 = "iree_tensor_ext.dispatch.tensor.load"(%0, %arg3, %arg0, %arg1, %arg2) <{operandSegmentSizes = array<i32: 1, 1, 1, 1, 1>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: -9223372036854775808>, static_strides = array<i64: -9223372036854775808>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<?xf32>>, index, index, index, index) -> tensor<?xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%2, %1, %arg3, %arg0, %arg1, %arg2) <{operandSegmentSizes = array<i32: 1, 1, 1, 1, 1, 1>, static_offsets = array<i64: -9223372036854775808>, static_sizes = array<i64: -9223372036854775808>, static_strides = array<i64: -9223372036854775808>}> : (tensor<?xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xf32>>, index, index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

