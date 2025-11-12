#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "sort1D"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> {iree_gpu.use_rocdl_buffer_instructions} : (index) -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<4xi32>>
    %2 = "iree_tensor_ext.dispatch.tensor.load"(%1) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 4>, static_strides = array<i64: 1>}> : (!iree_tensor_ext.dispatch.tensor<readwrite:tensor<4xi32>>) -> tensor<4xi32>
    %3 = "iree_linalg_ext.sort"(%2) <{dimension = 0 : i64, operandSegmentSizes = array<i32: 0, 1>}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %4 = "arith.cmpi"(%arg0, %arg1) <{predicate = 2 : i64}> : (i32, i32) -> i1
      "iree_linalg_ext.yield"(%4) : (i1) -> ()
    }) : (tensor<4xi32>) -> tensor<4xi32>
    "iree_tensor_ext.dispatch.tensor.store"(%3, %1) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 4>, static_strides = array<i64: 1>}> : (tensor<4xi32>, !iree_tensor_ext.dispatch.tensor<readwrite:tensor<4xi32>>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

