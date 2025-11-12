#pipeline_layout = #hal.pipeline.layout<constants = 2, bindings = [#hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "sort3D_dynamic_shape"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 0 : index}> : () -> i32
    %2 = "hal.interface.constant.load"() <{layout = #pipeline_layout, ordinal = 1 : index}> : () -> i32
    %3 = "arith.index_castui"(%1) : (i32) -> index
    %4 = "arith.index_castui"(%2) : (i32) -> index
    %5 = "iree_tensor_ext.dispatch.workload.ordinal"(%4) <{ordinal = 0 : index}> : (index) -> index
    %6 = "hal.interface.binding.subspan"(%3, %5) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 1>}> {iree_gpu.use_rocdl_buffer_instructions} : (index, index) -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<?x2x4xi32>>
    %7 = "iree_tensor_ext.dispatch.tensor.load"(%6, %5, %5) <{operandSegmentSizes = array<i32: 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, 2, 4>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readwrite:tensor<?x2x4xi32>>, index, index) -> tensor<?x2x4xi32>
    %8 = "iree_linalg_ext.sort"(%7) <{dimension = 2 : i64, operandSegmentSizes = array<i32: 0, 1>}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %9 = "arith.cmpi"(%arg0, %arg1) <{predicate = 2 : i64}> : (i32, i32) -> i1
      "iree_linalg_ext.yield"(%9) : (i1) -> ()
    }) : (tensor<?x2x4xi32>) -> tensor<?x2x4xi32>
    "iree_tensor_ext.dispatch.tensor.store"(%8, %6, %5, %5) <{operandSegmentSizes = array<i32: 1, 1, 1, 0, 1, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: -9223372036854775808, 2, 4>, static_strides = array<i64: 1, 1, 1>}> : (tensor<?x2x4xi32>, !iree_tensor_ext.dispatch.tensor<readwrite:tensor<?x2x4xi32>>, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

