#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "eliminate_empty_tensors_with_store_op"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 8 : index}> : () -> index
    %2 = "arith.constant"() <{value = 32 : index}> : () -> index
    %3 = "arith.constant"() <{value = 128 : index}> : () -> index
    %4 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> !iree_tensor_ext.dispatch.tensor<writeonly:tensor<128x384xf32>>
    %5 = "tensor.empty"() : () -> tensor<32x384xf32>
    "scf.for"(%0, %3, %2) ({
    ^bb0(%arg0: index):
      %6 = "scf.for"(%0, %2, %1, %5) ({
      ^bb0(%arg1: index, %arg2: tensor<32x384xf32>):
        "scf.yield"(%arg2) : (tensor<32x384xf32>) -> ()
      }) : (index, index, index, tensor<32x384xf32>) -> tensor<32x384xf32>
      "iree_tensor_ext.dispatch.tensor.store"(%6, %4, %arg0) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 0, 0>, static_offsets = array<i64: -9223372036854775808, 0>, static_sizes = array<i64: 32, 384>, static_strides = array<i64: 1, 1>}> : (tensor<32x384xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<128x384xf32>>, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

