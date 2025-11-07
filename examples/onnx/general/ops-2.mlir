#map = affine_map<(d0, d1) -> (d0 - d1)>
#map1 = affine_map<(d0, d1) -> (d0 + d1)>
#map2 = affine_map<(d0, d1) -> (d0 - d1, 0)>
#map3 = affine_map<(d0, d1)[s0] -> (d0 + d1, s0)>
#map4 = affine_map<() -> (0)>
#map5 = affine_map<() -> (10)>
"builtin.module"() ({
  "func.func"() <{function_type = (index) -> (), sym_name = "affine_map_bound"}> ({
  ^bb0(%arg0: index):
    %0:3 = "krnl.define_loops"() {num_loops = 3 : i64} : () -> (!krnl.loop, !krnl.loop, !krnl.loop)
    "krnl.iterate"(%0#0, %0#1, %0#0, %0#1) ({
    ^bb0(%arg1: index, %arg2: index):
      "krnl.iterate"(%0#2, %0#2, %arg1, %arg2, %arg1, %arg2) ({
      ^bb0(%arg3: index):
        "krnl.terminate"() : () -> ()
      }) {bounds = [#map, #map1], num_optimized_loops = 1 : i64} : (!krnl.loop, !krnl.loop, index, index, index, index) -> ()
      "krnl.iterate"(%0#2, %0#2, %arg1, %arg2, %arg1, %arg2, %arg0) ({
      ^bb0(%arg3: index):
        "krnl.terminate"() : () -> ()
      }) {bounds = [#map2, #map3], num_optimized_loops = 1 : i64} : (!krnl.loop, !krnl.loop, index, index, index, index, index) -> ()
      "krnl.terminate"() : () -> ()
    }) {bounds = [#map4, #map5, #map4, #map5], num_optimized_loops = 2 : i64} : (!krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

