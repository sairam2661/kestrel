#executable_target_xyz = #hal.executable.target<"llvm-cpu", "xyz", {native_vector_size = 64 : i64}>
#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d1, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
"builtin.module"() ({
  "func.func"() <{function_type = (vector<32x64xf32>, vector<32x64xf32>, vector<32x32xf32>) -> vector<32x32xf32>, sym_name = "large_contract_with_native_vector_size"}> ({
  ^bb0(%arg0: vector<32x64xf32>, %arg1: vector<32x64xf32>, %arg2: vector<32x32xf32>):
    %0 = "vector.contract"(%arg0, %arg1, %arg2) <{indexing_maps = [#map, #map1, #map2], iterator_types = [#vector.iterator_type<parallel>, #vector.iterator_type<parallel>, #vector.iterator_type<reduction>], kind = #vector.kind<add>}> : (vector<32x64xf32>, vector<32x64xf32>, vector<32x32xf32>) -> vector<32x32xf32>
    "func.return"(%0) : (vector<32x32xf32>) -> ()
  }) {hal.executable.target = #executable_target_xyz} : () -> ()
}) : () -> ()

