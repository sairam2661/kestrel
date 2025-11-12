#executable_target_xyz = #hal.executable.target<"llvm-cpu", "xyz", {cpu_features = "+avx,+avx2,+fma", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, target_triple = "x86_64-xyz-xyz"}>
#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#encoding = #iree_encoding.encoding<operand_index = 0 : i64, op_type =  matmul, element_types = [f32, f32, f32], user_indexing_maps = [#map, #map1, #map2], iteration_sizes = [?, ?, ?]>
#encoding1 = #iree_encoding.encoding<operand_index = 1 : i64, op_type =  matmul, element_types = [f32, f32, f32], user_indexing_maps = [#map, #map1, #map2], iteration_sizes = [?, ?, ?]>
#encoding2 = #iree_encoding.encoding<operand_index = 2 : i64, op_type =  matmul, element_types = [f32, f32, f32], user_indexing_maps = [#map, #map1, #map2], iteration_sizes = [?, ?, ?]>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?xf32>, tensor<?x?xf32>) -> tensor<?x?xf32>, sym_name = "pack_gemm_fill_dynamic"}> ({
  ^bb0(%arg0: tensor<?x?xf32>, %arg1: tensor<?x?xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %3 = "tensor.dim"(%arg0, %0) : (tensor<?x?xf32>, index) -> index
    %4 = "tensor.dim"(%arg1, %1) : (tensor<?x?xf32>, index) -> index
    %5 = "iree_encoding.set_encoding"(%arg0) : (tensor<?x?xf32>) -> tensor<?x?xf32, #encoding>
    %6 = "iree_encoding.set_encoding"(%arg1) : (tensor<?x?xf32>) -> tensor<?x?xf32, #encoding1>
    %7 = "tensor.empty"(%3, %4) : (index, index) -> tensor<?x?xf32, #encoding2>
    %8 = "linalg.fill"(%2, %7) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg5: f32, %arg6: f32):
      "linalg.yield"(%arg5) : (f32) -> ()
    }) : (f32, tensor<?x?xf32, #encoding2>) -> tensor<?x?xf32, #encoding2>
    %9 = "linalg.matmul"(%5, %6, %8) <{indexing_maps = [#map, #map1, #map2], operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg2: f32, %arg3: f32, %arg4: f32):
      %11 = "arith.mulf"(%arg2, %arg3) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %12 = "arith.addf"(%arg4, %11) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%12) : (f32) -> ()
    }) : (tensor<?x?xf32, #encoding>, tensor<?x?xf32, #encoding1>, tensor<?x?xf32, #encoding2>) -> tensor<?x?xf32, #encoding2>
    %10 = "iree_encoding.unset_encoding"(%9, %3, %4) : (tensor<?x?xf32, #encoding2>, index, index) -> tensor<?x?xf32>
    "func.return"(%10) : (tensor<?x?xf32>) -> ()
  }) {hal.executable.target = #executable_target_xyz} : () -> ()
}) : () -> ()

