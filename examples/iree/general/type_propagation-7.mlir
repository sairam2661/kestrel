#pipeline_layout = #hal.pipeline.layout<constants = 1, bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "fill_op"}> ({
    %0 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"(%0) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 0, 1>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xi8>>
    %2 = "tensor.empty"(%0) : (index) -> tensor<?xi1>
    %3 = "arith.constant"() <{value = false}> : () -> i1
    %4 = "linalg.fill"(%3, %2) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg0: i1, %arg1: i1):
      "linalg.yield"(%arg0) : (i1) -> ()
    }) : (i1, tensor<?xi1>) -> tensor<?xi1>
    %5 = "arith.extui"(%4) : (tensor<?xi1>) -> tensor<?xi8>
    "iree_tensor_ext.dispatch.tensor.store"(%5, %1, %0, %0) <{operandSegmentSizes = array<i32: 1, 1, 1, 0, 1, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: -9223372036854775808>, static_strides = array<i64: 1>}> : (tensor<?xi8>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<?xi8>>, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

