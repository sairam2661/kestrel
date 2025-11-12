#executable_target_xyz = #hal.executable.target<"xyz", "xyz", {cpu_features = "+dotprod", target_triple = "aarch64-xyz-xyz"}>
#map = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d1, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
"builtin.module"() ({
  "func.func"() <{function_type = (vector<8x4xi8>, vector<8x4xi8>, vector<8x8xi32>) -> vector<8x8xi32>, sym_name = "mmt_8x4x8_i8i8i32"}> ({
  ^bb0(%arg0: vector<8x4xi8>, %arg1: vector<8x4xi8>, %arg2: vector<8x8xi32>):
    %0 = "arith.extsi"(%arg0) : (vector<8x4xi8>) -> vector<8x4xi32>
    %1 = "arith.extsi"(%arg1) : (vector<8x4xi8>) -> vector<8x4xi32>
    %2 = "vector.contract"(%0, %1, %arg2) <{indexing_maps = [#map, #map1, #map2], iterator_types = [#vector.iterator_type<parallel>, #vector.iterator_type<parallel>, #vector.iterator_type<reduction>], kind = #vector.kind<add>}> : (vector<8x4xi32>, vector<8x4xi32>, vector<8x8xi32>) -> vector<8x8xi32>
    "func.return"(%2) : (vector<8x8xi32>) -> ()
  }) {hal.executable.target = #executable_target_xyz} : () -> ()
}) : () -> ()

