#pipeline_layout = #hal.pipeline.layout<bindings = [#hal.pipeline.binding<storage_buffer>, #hal.pipeline.binding<storage_buffer>]>
"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> (), sym_name = "vectorize_mma_load_store_non_identity_memref"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 0 : index, descriptor_flags = 1 : i32, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<32x1280xf16, strided<[1280, 1], offset: 11840>, #hal.descriptor_type<storage_buffer>>
    %2 = "hal.interface.binding.subspan"(%0) <{alignment = 64 : index, binding = 1 : index, layout = #pipeline_layout, operandSegmentSizes = array<i32: 1, 0>}> : (index) -> memref<32x1280xf16, strided<[1280, 1], offset: 11840>, #hal.descriptor_type<storage_buffer>>
    %3 = "gpu.subgroup_mma_load_matrix"(%1, %arg0, %arg1) <{leadDimension = 1280 : index}> : (memref<32x1280xf16, strided<[1280, 1], offset: 11840>, #hal.descriptor_type<storage_buffer>>, index, index) -> !gpu.mma_matrix<16x16xf16, "COp">
    "gpu.subgroup_mma_store_matrix"(%3, %2, %arg0, %arg1) <{leadDimension = 1280 : index}> : (!gpu.mma_matrix<16x16xf16, "COp">, memref<32x1280xf16, strided<[1280, 1], offset: 11840>, #hal.descriptor_type<storage_buffer>>, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

