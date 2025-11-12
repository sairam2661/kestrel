#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index) -> !gpu.mma_matrix<16x16xf16, "AOp">, sym_name = "subgroup_mma_load_with_offset"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index):
    %0 = "hal.interface.binding.subspan"(%arg0) <{binding = 0 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<32x32xf16, strided<[32, 1], offset: ?>, 3>
    %1 = "gpu.subgroup_mma_load_matrix"(%0, %arg1, %arg2) <{leadDimension = 32 : index}> : (memref<32x32xf16, strided<[32, 1], offset: ?>, 3>, index, index) -> !gpu.mma_matrix<16x16xf16, "AOp">
    "func.return"(%1) : (!gpu.mma_matrix<16x16xf16, "AOp">) -> ()
  }) : () -> ()
}) : () -> ()

