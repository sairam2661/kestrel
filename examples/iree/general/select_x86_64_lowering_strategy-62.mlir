#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu_features = "+avx512f", native_vector_size = 64 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf"}>
#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d4)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d5, d0, d4)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d5, d0, d3)>
#map3 = affine_map<(d0, d1, d2, d3, d4, d5) -> ()>
#map4 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d5)>
#map5 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
#map6 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map7 = affine_map<(d0, d1, d2, d3) -> (d2, d0, d1, d3)>
"builtin.module"() ({
  "func.func"() <{function_type = (index, tensor<4x2x?x32xf16>, tensor<?x4x32xf16>, tensor<?x4x32xf16>, tensor<4x2x?x?xf16>) -> tensor<?x256x1x1xf16>, sym_name = "attention_reshape_pack"}> ({
  ^bb0(%arg0: index, %arg1: tensor<4x2x?x32xf16>, %arg2: tensor<?x4x32xf16>, %arg3: tensor<?x4x32xf16>, %arg4: tensor<4x2x?x?xf16>):
    %0 = "arith.constant"() <{value = 0.000000e+00 : f16}> : () -> f16
    %1 = "arith.constant"() <{value = 1.767580e-01 : f16}> : () -> f16
    %2 = "tensor.empty"(%arg0) : (index) -> tensor<?x4x2x32xf16>
    %3 = "tensor.empty"(%arg0) : (index) -> tensor<4x2x?x32xf16>
    %4 = "iree_linalg_ext.attention"(%arg1, %arg2, %arg3, %1, %arg4, %3) <{indexing_maps = [#map, #map1, #map2, #map3, #map4, #map5]}> ({
    ^bb0(%arg7: f32):
      "iree_linalg_ext.yield"(%arg7) : (f32) -> ()
    }) : (tensor<4x2x?x32xf16>, tensor<?x4x32xf16>, tensor<?x4x32xf16>, f16, tensor<4x2x?x?xf16>, tensor<4x2x?x32xf16>) -> tensor<4x2x?x32xf16>
    %5 = "linalg.generic"(%4, %2) <{indexing_maps = [#map6, #map7], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg5: f16, %arg6: f16):
      "linalg.yield"(%arg5) : (f16) -> ()
    }) : (tensor<4x2x?x32xf16>, tensor<?x4x2x32xf16>) -> tensor<?x4x2x32xf16>
    %6 = "tensor.collapse_shape"(%5) <{reassociation = [[0], [1, 2, 3]]}> : (tensor<?x4x2x32xf16>) -> tensor<?x256xf16>
    %7 = "tensor.empty"(%arg0) : (index) -> tensor<?x256x1x1xf16>
    %8 = "linalg.pack"(%6, %7, %0) <{inner_dims_pos = array<i64: 0, 1>, operandSegmentSizes = array<i32: 1, 1, 1, 0>, outer_dims_perm = array<i64: 0, 1>, static_inner_tiles = array<i64: 1, 1>}> : (tensor<?x256xf16>, tensor<?x256x1x1xf16>, f16) -> tensor<?x256x1x1xf16>
    "func.return"(%8) : (tensor<?x256x1x1xf16>) -> ()
  }) {hal.executable.target = #executable_target_embedded_elf_x86_64} : () -> ()
}) : () -> ()

