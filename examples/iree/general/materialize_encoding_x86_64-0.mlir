#executable_target_xyz = #hal.executable.target<"llvm-cpu", "xyz", {cpu_features = "+avx512f", iree.encoding.resolver = #iree_cpu.cpu_encoding_resolver<>, target_triple = "x86_64-xyz-xyz"}>
#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#encoding = #iree_encoding.encoding<operand_index = 0 : i64, op_type =  matmul, element_types = [bf16, bf16, bf16], user_indexing_maps = [#map, #map1, #map2], iteration_sizes = [1, 1000, ?]>
"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1000xbf16>) -> tensor<1x1000xbf16, #encoding>, sym_name = "set_encoding_with_padding_semantics_bf16_x86_64_avx512f"}> ({
  ^bb0(%arg0: tensor<1x1000xbf16>):
    %0 = "iree_encoding.set_encoding"(%arg0) : (tensor<1x1000xbf16>) -> tensor<1x1000xbf16, #encoding>
    "func.return"(%0) : (tensor<1x1000xbf16, #encoding>) -> ()
  }) {hal.executable.target = #executable_target_xyz} : () -> ()
}) : () -> ()

