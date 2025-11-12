#executable_target_xyz = #hal.executable.target<"llvm-cpu", "xyz", {cpu_features = "+avx512vnni", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, target_triple = "x86_64-xyz-xyz"}>
#map = affine_map<(d0, d1, d2) -> (d2, d0)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#encoding = #iree_encoding.encoding<operand_index = 0 : i64, op_type =  matmul, element_types = [f32, f32, f32], user_indexing_maps = [#map, #map1, #map2], iteration_sizes = [128, 512, 256]>
#encoding1 = #iree_encoding.encoding<operand_index = 1 : i64, op_type =  matmul, element_types = [f32, f32, f32], user_indexing_maps = [#map, #map1, #map2], iteration_sizes = [128, 512, 256]>
#encoding2 = #iree_encoding.encoding<operand_index = 2 : i64, op_type =  matmul, element_types = [f32, f32, f32], user_indexing_maps = [#map, #map1, #map2], iteration_sizes = [128, 512, 256]>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<256x128xf32>, tensor<256x512xf32>, tensor<128x512xf32>) -> tensor<128x512xf32>, sym_name = "matmul_transpose_a_f32f32f32"}> ({
  ^bb0(%arg0: tensor<256x128xf32>, %arg1: tensor<256x512xf32>, %arg2: tensor<128x512xf32>):
    %0 = "arith.constant"() <{value = 256 : index}> : () -> index
    %1 = "arith.constant"() <{value = 128 : index}> : () -> index
    %2 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %3 = "arith.constant"() <{value = 512 : index}> : () -> index
    %4 = "iree_encoding.set_encoding"(%arg0) : (tensor<256x128xf32>) -> tensor<256x128xf32, #encoding>
    %5 = "iree_encoding.set_encoding"(%arg1) : (tensor<256x512xf32>) -> tensor<256x512xf32, #encoding1>
    %6 = "iree_encoding.set_encoding"(%arg2) : (tensor<128x512xf32>) -> tensor<128x512xf32, #encoding2>
    %7 = "linalg.matmul"(%4, %5, %6) <{indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg3: f32, %arg4: f32, %arg5: f32):
      %9 = "arith.mulf"(%arg3, %arg4) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %10 = "arith.addf"(%arg5, %9) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%10) : (f32) -> ()
    }) : (tensor<256x128xf32, #encoding>, tensor<256x512xf32, #encoding1>, tensor<128x512xf32, #encoding2>) -> tensor<128x512xf32, #encoding2>
    %8 = "iree_encoding.unset_encoding"(%7) : (tensor<128x512xf32, #encoding2>) -> tensor<128x512xf32>
    "func.return"(%8) : (tensor<128x512xf32>) -> ()
  }) {hal.executable.target = #executable_target_xyz} : () -> ()
}) : () -> ()

