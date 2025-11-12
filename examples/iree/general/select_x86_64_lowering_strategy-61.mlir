#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu_features = "+avx512f", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", native_vector_size = 16 : index, target_triple = "x86_64-unknown-linux-gnu"}>
#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> (d0)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#map3 = affine_map<(d0, d1, d2) -> (d0)>
#map4 = affine_map<(d0, d1, d2) -> (d0, d1)>
#map5 = affine_map<(d0, d1, d2) -> (d2, d0, d1)>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<32x262144xf16>, tensor<32xf32>, tensor<32x16x16384xf16>, tensor<32x16xf16>, tensor<32x16xf16>) -> tensor<16384x32x16xf16>, sym_name = "decode_reduction_f32"}> ({
  ^bb0(%arg0: tensor<32x262144xf16>, %arg1: tensor<32xf32>, %arg2: tensor<32x16x16384xf16>, %arg3: tensor<32x16xf16>, %arg4: tensor<32x16xf16>):
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 2.621440e+05 : f32}> : () -> f32
    %2 = "arith.constant"() <{value = 9.99999997E-7 : f32}> : () -> f32
    %3 = "tensor.empty"() : () -> tensor<16384x32x16xf16>
    %4 = "tensor.empty"() : () -> tensor<32xf32>
    %5 = "linalg.fill"(%0, %4) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg14: f32, %arg15: f32):
      "linalg.yield"(%arg14) : (f32) -> ()
    }) : (f32, tensor<32xf32>) -> tensor<32xf32>
    %6 = "linalg.generic"(%arg0, %arg1, %5) <{indexing_maps = [#map, #map1, #map1], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg11: f16, %arg12: f32, %arg13: f32):
      %19 = "arith.extf"(%arg11) : (f16) -> f32
      %20 = "arith.subf"(%19, %arg12) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %21 = "arith.mulf"(%20, %20) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %22 = "arith.addf"(%21, %arg13) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%22) : (f32) -> ()
    }) : (tensor<32x262144xf16>, tensor<32xf32>, tensor<32xf32>) -> tensor<32xf32>
    %7 = "linalg.generic"(%arg2, %arg1, %6, %arg3, %arg4, %3) <{indexing_maps = [#map2, #map3, #map3, #map4, #map4, #map5], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 5, 1>}> ({
    ^bb0(%arg5: f16, %arg6: f32, %arg7: f32, %arg8: f16, %arg9: f16, %arg10: f16):
      %8 = "arith.divf"(%arg7, %1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %9 = "arith.addf"(%8, %2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %10 = "math.rsqrt"(%9) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
      %11 = "arith.extf"(%arg5) : (f16) -> f32
      %12 = "arith.subf"(%11, %arg6) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %13 = "arith.mulf"(%12, %10) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %14 = "arith.extf"(%arg8) : (f16) -> f32
      %15 = "arith.mulf"(%13, %14) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %16 = "arith.extf"(%arg9) : (f16) -> f32
      %17 = "arith.addf"(%15, %16) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %18 = "arith.truncf"(%17) : (f32) -> f16
      "linalg.yield"(%18) : (f16) -> ()
    }) : (tensor<32x16x16384xf16>, tensor<32xf32>, tensor<32xf32>, tensor<32x16xf16>, tensor<32x16xf16>, tensor<16384x32x16xf16>) -> tensor<16384x32x16xf16>
    "func.return"(%7) : (tensor<16384x32x16xf16>) -> ()
  }) {hal.executable.target = #executable_target_embedded_elf_x86_64} : () -> ()
}) : () -> ()

