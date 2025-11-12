#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu_features = "+avx512f", native_vector_size = 64 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf"}>
#map = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d3, d4, d6)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d2, d3, d5, d6)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5, d6) -> (d0, d1, d2, d4, d5)>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<128x10x32x8x1xf32>, tensor<128x80x32x4x1xf32>, tensor<128x10x80x8x4xf32>) -> tensor<128x10x80x8x4xf32>, sym_name = "batch_mmt4d_generic_form"}> ({
  ^bb0(%arg0: tensor<128x10x32x8x1xf32>, %arg1: tensor<128x80x32x4x1xf32>, %arg2: tensor<128x10x80x8x4xf32>):
    %0 = "linalg.generic"(%arg0, %arg1, %arg2) <{indexing_maps = [#map, #map1, #map2], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg3: f32, %arg4: f32, %arg5: f32):
      %1 = "arith.mulf"(%arg3, %arg4) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %2 = "arith.addf"(%arg5, %1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%2) : (f32) -> ()
    }) : (tensor<128x10x32x8x1xf32>, tensor<128x80x32x4x1xf32>, tensor<128x10x80x8x4xf32>) -> tensor<128x10x80x8x4xf32>
    "func.return"(%0) : (tensor<128x10x80x8x4xf32>) -> ()
  }) {hal.executable.target = #executable_target_embedded_elf_x86_64} : () -> ()
}) : () -> ()

