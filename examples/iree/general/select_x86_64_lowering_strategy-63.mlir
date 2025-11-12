#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu_features = "+avx512f", native_vector_size = 64 : i64, target_triple = "x86_64-unknown-unknown-eabi-elf"}>
#map = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d2, d3, d5)>
#map1 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d1, d2, d4, d5)>
#map2 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d3, d4)>
#map3 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x4096x16x1xf16>, tensor<640x4096x16x1xf16>) -> tensor<5x10240x16x1xf16>, sym_name = "mmt4d_generic_unpack_pack"}> ({
  ^bb0(%arg0: tensor<5x4096x16x1xf16>, %arg1: tensor<640x4096x16x1xf16>):
    %0 = "arith.constant"() <{value = 0.000000e+00 : f16}> : () -> f16
    %1 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %2 = "tensor.empty"() : () -> tensor<5x640x16x16xf16>
    %3 = "tensor.empty"() : () -> tensor<5x640x16x16xf32>
    %4 = "linalg.fill"(%1, %3) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg7: f32, %arg8: f32):
      "linalg.yield"(%arg7) : (f32) -> ()
    }) : (f32, tensor<5x640x16x16xf32>) -> tensor<5x640x16x16xf32>
    %5 = "linalg.mmt4d"(%arg0, %arg1, %4) <{operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg4: f16, %arg5: f16, %arg6: f32):
      %12 = "arith.extf"(%arg4) : (f16) -> f32
      %13 = "arith.extf"(%arg5) : (f16) -> f32
      %14 = "arith.mulf"(%12, %13) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %15 = "arith.addf"(%arg6, %14) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%15) : (f32) -> ()
    }) {linalg.memoized_indexing_maps = [#map, #map1, #map2]} : (tensor<5x4096x16x1xf16>, tensor<640x4096x16x1xf16>, tensor<5x640x16x16xf32>) -> tensor<5x640x16x16xf32>
    %6 = "linalg.generic"(%5, %2) <{indexing_maps = [#map3, #map3], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg2: f32, %arg3: f16):
      %11 = "arith.truncf"(%arg2) : (f32) -> f16
      "linalg.yield"(%11) : (f16) -> ()
    }) : (tensor<5x640x16x16xf32>, tensor<5x640x16x16xf16>) -> tensor<5x640x16x16xf16>
    %7 = "tensor.empty"() : () -> tensor<77x10240xf16>
    %8 = "linalg.unpack"(%6, %7) <{inner_dims_pos = array<i64: 0, 1>, outer_dims_perm = array<i64: 0, 1>, static_inner_tiles = array<i64: 16, 16>}> : (tensor<5x640x16x16xf16>, tensor<77x10240xf16>) -> tensor<77x10240xf16>
    %9 = "tensor.empty"() : () -> tensor<5x10240x16x1xf16>
    %10 = "linalg.pack"(%8, %9, %0) <{inner_dims_pos = array<i64: 0, 1>, operandSegmentSizes = array<i32: 1, 1, 1, 0>, outer_dims_perm = array<i64: 0, 1>, static_inner_tiles = array<i64: 16, 1>}> : (tensor<77x10240xf16>, tensor<5x10240x16x1xf16>, f16) -> tensor<5x10240x16x1xf16>
    "func.return"(%10) : (tensor<5x10240x16x1xf16>) -> ()
  }) {hal.executable.target = #executable_target_embedded_elf_x86_64} : () -> ()
}) : () -> ()

