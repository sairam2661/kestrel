#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {cpu_features = "+avx512f", data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", native_vector_size = 16 : index, target_triple = "x86_64-none-elf"}>
#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#map3 = affine_map<(d0, d1) -> (d0, d1)>
#map4 = affine_map<(d0, d1) -> (d1)>
#map5 = affine_map<(d0, d1)[s0] -> (d0, s0)>
#map6 = affine_map<(d0, d1)[s0] -> (s0, d1)>
#map7 = affine_map<(d0, d1)[s0] -> (d1)>
#map8 = affine_map<(d0, d1)[s0] -> (d0, d1)>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<384x512xf32>, tensor<512x128xf32>, tensor<128xf32>) -> tensor<384x128xf32>, sym_name = "custom_op"}> ({
  ^bb0(%arg0: tensor<384x512xf32>, %arg1: tensor<512x128xf32>, %arg2: tensor<128xf32>):
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "tensor.empty"() : () -> tensor<384x128xf32>
    %2 = "iree_linalg_ext.custom_op"(%arg0, %arg1, %arg2, %1) <{indexing_maps = [#map5, #map6, #map7, #map8], iterator_types = [#iree_linalg_ext.iterator_type<parallel>, #iree_linalg_ext.iterator_type<parallel>], operandSegmentSizes = array<i32: 3, 1>}> ({
    ^bb0(%arg3: tensor<?x?xf32>, %arg4: tensor<?x?xf32>, %arg5: tensor<?xf32>, %arg6: tensor<?x?xf32>):
      %3 = "linalg.fill"(%0, %arg6) <{operandSegmentSizes = array<i32: 1, 1>}> ({
      ^bb0(%arg13: f32, %arg14: f32):
        "linalg.yield"(%arg13) : (f32) -> ()
      }) : (f32, tensor<?x?xf32>) -> tensor<?x?xf32>
      %4 = "linalg.matmul"(%arg3, %arg4, %3) <{indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 2, 1>}> ({
      ^bb0(%arg10: f32, %arg11: f32, %arg12: f32):
        %7 = "arith.mulf"(%arg10, %arg11) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
        %8 = "arith.addf"(%arg12, %7) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
        "linalg.yield"(%8) : (f32) -> ()
      }) : (tensor<?x?xf32>, tensor<?x?xf32>, tensor<?x?xf32>) -> tensor<?x?xf32>
      %5 = "linalg.generic"(%4, %arg5, %arg6) <{indexing_maps = [#map3, #map4, #map3], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 2, 1>}> ({
      ^bb0(%arg7: f32, %arg8: f32, %arg9: f32):
        %6 = "arith.addf"(%arg7, %arg8) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
        "linalg.yield"(%6) : (f32) -> ()
      }) : (tensor<?x?xf32>, tensor<?xf32>, tensor<?x?xf32>) -> tensor<?x?xf32>
      "iree_linalg_ext.yield"(%5) : (tensor<?x?xf32>) -> ()
    }) : (tensor<384x512xf32>, tensor<512x128xf32>, tensor<128xf32>, tensor<384x128xf32>) -> tensor<384x128xf32>
    "func.return"(%2) : (tensor<384x128xf32>) -> ()
  }) {hal.executable.target = #executable_target_embedded_elf_x86_64} : () -> ()
}) : () -> ()

