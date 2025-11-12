#executable_target_vmvx_bytecode_fb = #hal.executable.target<"vmvx", "vmvx-bytecode-fb", {ukernels = "all"}>
#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d2, d1)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#encoding = #iree_encoding.encoding<operand_index = 2 : i64, op_type =  matmul, element_types = [f32, f32, f32], user_indexing_maps = [#map, #map1, #map2]>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (index, index), sym_name = "query_tile_sizes_2d"}> ({
    %0:2 = "iree_codegen.query_tile_sizes"() <{tensor_type = tensor<?x?xf32, #encoding>}> : () -> (index, index)
    "func.return"(%0#0, %0#1) : (index, index) -> ()
  }) {hal.executable.target = #executable_target_vmvx_bytecode_fb} : () -> ()
}) : () -> ()

