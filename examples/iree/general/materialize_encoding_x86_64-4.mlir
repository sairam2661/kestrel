#executable_target_xyz = #hal.executable.target<"llvm-cpu", "xyz", {cpu_features = "+avx,+avx2,+fma", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, target_triple = "x86_64-xyz-xyz"}>
#map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d3, d2)>
#map2 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>
#encoding = #iree_encoding.encoding<operand_index = 2 : i64, op_type =  matmul, element_types = [f32, f32, f32], user_indexing_maps = [#map, #map1, #map2], iteration_sizes = [128, 80, 320, ?]>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<128x80x320xf32, #encoding>) -> tensor<128x80x320xf32>, sym_name = "unset_encoding_128x80x320_batch_matmul_RESULT"}> ({
  ^bb0(%arg0: tensor<128x80x320xf32, #encoding>):
    %0 = "iree_encoding.unset_encoding"(%arg0) : (tensor<128x80x320xf32, #encoding>) -> tensor<128x80x320xf32>
    "func.return"(%0) : (tensor<128x80x320xf32>) -> ()
  }) {hal.executable.target = #executable_target_xyz} : () -> ()
}) : () -> ()

