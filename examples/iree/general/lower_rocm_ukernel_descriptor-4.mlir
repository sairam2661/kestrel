#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb", {abi = "hip", iree_codegen.ukernel_provider = #rocm.ukernel_provider, ukernels = "all"}>
#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d1, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x1x1x1x2x8xi8>, tensor<1x1x1x1x1x2x8xi8>, tensor<1x1x1x1x1x4xi32>) -> tensor<1x1x1x1x1x4xi32>, sym_name = "multi_mma_mfma_i32_16x16x32_i8_intrinsics_equal_to_one"}> ({
  ^bb0(%arg0: tensor<1x1x1x1x1x2x8xi8>, %arg1: tensor<1x1x1x1x1x2x8xi8>, %arg2: tensor<1x1x1x1x1x4xi32>):
    %0 = "iree_codegen.inner_tiled"(%arg0, %arg1, %arg2) <{indexing_maps = [#map, #map1, #map2], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>], kind = #iree_gpu.data_tiled_mma_layout<intrinsic = MFMA_I32_16x16x32_I8, subgroups_n = 4, intrinsics_k = 2>, operandSegmentSizes = array<i32: 2, 1>}> {iree_codegen.ukernel = #iree_codegen.ukernel_descriptor<"iree_uk_amdgpu_multi_mma_mfma_i32_16x16x32_i8", bitcode>} : (tensor<1x1x1x1x1x2x8xi8>, tensor<1x1x1x1x1x2x8xi8>, tensor<1x1x1x1x1x4xi32>) -> tensor<1x1x1x1x1x4xi32>
    "func.return"(%0) : (tensor<1x1x1x1x1x4xi32>) -> ()
  }) : () -> ()
}) {hal.executable.target = #executable_target_rocm_hsaco_fb} : () -> ()

