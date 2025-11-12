#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu_features = "+avx512f", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", native_vector_size = 16 : index, target_triple = "x86_64-none-elf"}>
#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> ()>
#map3 = affine_map<(d0, d1, d2) -> (d0, d1)>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<256x256xi8>, tensor<256x256xi8>, i32, i32, tensor<256x256xi32>) -> tensor<256x256xi32>, sym_name = "test_tiling_cpu_default"}> ({
  ^bb0(%arg0: tensor<256x256xi8>, %arg1: tensor<256x256xi8>, %arg2: i32, %arg3: i32, %arg4: tensor<256x256xi32>):
    %0 = "linalg.quantized_matmul"(%arg0, %arg1, %arg2, %arg3, %arg4) <{operandSegmentSizes = array<i32: 4, 1>}> ({
    ^bb0(%arg5: i8, %arg6: i8, %arg7: i32, %arg8: i32, %arg9: i32):
      %1 = "arith.extsi"(%arg5) : (i8) -> i32
      %2 = "arith.subi"(%1, %arg7) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %3 = "arith.extsi"(%arg6) : (i8) -> i32
      %4 = "arith.subi"(%3, %arg8) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %5 = "arith.muli"(%2, %4) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %6 = "arith.addi"(%arg9, %5) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "linalg.yield"(%6) : (i32) -> ()
    }) {linalg.memoized_indexing_maps = [#map, #map1, #map2, #map2, #map3]} : (tensor<256x256xi8>, tensor<256x256xi8>, i32, i32, tensor<256x256xi32>) -> tensor<256x256xi32>
    "func.return"(%0) : (tensor<256x256xi32>) -> ()
  }) {hal.executable.target = #executable_target_embedded_elf_x86_64} : () -> ()
}) : () -> ()

