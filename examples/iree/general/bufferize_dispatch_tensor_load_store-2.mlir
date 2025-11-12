#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "dispatch_tensor_load_and_store_with_compute_op"}> ({
    %0 = "hal.interface.binding.subspan"() <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<readonly:tensor<16xf32>>
    %1 = "hal.interface.binding.subspan"() <{binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 0>}> : () -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<16xf32>>
    %2 = "iree_tensor_ext.dispatch.tensor.load"(%0) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 2>, static_sizes = array<i64: 12>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<16xf32>>) -> tensor<12xf32>
    %3 = "tensor.empty"() : () -> tensor<12xf32>
    %4 = "linalg.copy"(%2, %3) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg0: f32, %arg1: f32):
      "linalg.yield"(%arg0) : (f32) -> ()
    }) : (tensor<12xf32>, tensor<12xf32>) -> tensor<12xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%4, %1) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 4>, static_sizes = array<i64: 12>, static_strides = array<i64: 1>}> : (tensor<12xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<16xf32>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

