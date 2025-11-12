#executable_target_xyz = #hal.executable.target<"llvm-cpu", "xyz", {iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, target_triple = "aarch64-xyz-xyz"}>
#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> (d1)>
#map2 = affine_map<(d0, d1) -> (d0)>
#encoding = #iree_encoding.encoding<operand_index = 0 : i64, op_type =  matmul, element_types = [f32, f32, f32], user_indexing_maps = [#map, #map1, #map2], iteration_sizes = [16, 16]>
#encoding1 = #iree_encoding.encoding<operand_index = 1 : i64, op_type =  matmul, element_types = [f32, f32, f32], user_indexing_maps = [#map, #map1, #map2], iteration_sizes = [16, 16]>
#encoding2 = #iree_encoding.encoding<operand_index = 2 : i64, op_type =  matmul, element_types = [f32, f32, f32], user_indexing_maps = [#map, #map1, #map2], iteration_sizes = [16, 16]>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16x16xf32>, tensor<16xf32>, tensor<16xf32>) -> tensor<16xf32>, sym_name = "matvec_lowering_f32f32f32_aarch64"}> ({
  ^bb0(%arg0: tensor<16x16xf32>, %arg1: tensor<16xf32>, %arg2: tensor<16xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "iree_encoding.set_encoding"(%arg0) : (tensor<16x16xf32>) -> tensor<16x16xf32, #encoding>
    %2 = "iree_encoding.set_encoding"(%arg1) : (tensor<16xf32>) -> tensor<16xf32, #encoding1>
    %3 = "iree_encoding.set_encoding"(%arg2) : (tensor<16xf32>) -> tensor<16xf32, #encoding2>
    %4 = "linalg.matvec"(%1, %2, %3) <{operandSegmentSizes = array<i32: 2, 1>}> ({
    ^bb0(%arg3: f32, %arg4: f32, %arg5: f32):
      %6 = "arith.mulf"(%arg3, %arg4) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %7 = "arith.addf"(%arg5, %6) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%7) : (f32) -> ()
    }) {linalg.memoized_indexing_maps = [#map, #map1, #map2]} : (tensor<16x16xf32, #encoding>, tensor<16xf32, #encoding1>, tensor<16xf32, #encoding2>) -> tensor<16xf32, #encoding2>
    %5 = "iree_encoding.unset_encoding"(%4) : (tensor<16xf32, #encoding2>) -> tensor<16xf32>
    "func.return"(%5) : (tensor<16xf32>) -> ()
  }) {hal.executable.target = #executable_target_xyz} : () -> ()
}) : () -> ()

