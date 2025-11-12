#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer, Indirect>], flags = Indirect>
#translation = #iree_codegen.translation_info<pipeline = LLVMGPUTileAndFuse workgroup_size = [64, 1, 1] subgroup_size = 32>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "sort2D_static_shape"}> ({
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 2 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> {iree_gpu.use_rocdl_buffer_instructions} : (index) -> !iree_tensor_ext.dispatch.tensor<readwrite:tensor<2000x30000xi32>>
    %2 = "iree_tensor_ext.dispatch.tensor.load"(%1) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 2, 4>, static_strides = array<i64: 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readwrite:tensor<2000x30000xi32>>) -> tensor<2000x30000xi32>
    %3 = "iree_linalg_ext.sort"(%2) <{dimension = 1 : i64, operandSegmentSizes = array<i32: 0, 1>}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %4 = "arith.cmpi"(%arg0, %arg1) <{predicate = 2 : i64}> : (i32, i32) -> i1
      "iree_linalg_ext.yield"(%4) : (i1) -> ()
    }) {lowering_config = #iree_gpu.lowering_config<{thread = [1], workgroup = [1]}>} : (tensor<2000x30000xi32>) -> tensor<2000x30000xi32>
    "iree_tensor_ext.dispatch.tensor.store"(%3, %1) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0>, static_sizes = array<i64: 2000, 30000>, static_strides = array<i64: 1, 1>}> : (tensor<2000x30000xi32>, !iree_tensor_ext.dispatch.tensor<readwrite:tensor<2000x30000xi32>>) -> ()
    "func.return"() : () -> ()
  }) {translation_info = #translation} : () -> ()
}) : () -> ()

