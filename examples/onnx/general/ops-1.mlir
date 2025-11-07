#map = affine_map<() -> (0)>
#map1 = affine_map<() -> (10)>
#map2 = affine_map<() -> (1)>
#map3 = affine_map<() -> (11)>
#map4 = affine_map<()[s0] -> (s0)>
"builtin.module"() ({
  "func.func"() <{function_type = (index) -> (), sym_name = "simple_iterate"}> ({
  ^bb0(%arg0: index):
    %0:3 = "krnl.define_loops"() {num_loops = 3 : i64} : () -> (!krnl.loop, !krnl.loop, !krnl.loop)
    "krnl.iterate"(%0#0, %0#1, %0#0, %0#1) ({
    ^bb0(%arg1: index, %arg2: index):
      "krnl.terminate"() : () -> ()
    }) {bounds = [#map, #map1, #map2, #map3], num_optimized_loops = 2 : i64} : (!krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop) -> ()
    "krnl.iterate"(%0#0, %0#1, %0#0, %0#1) ({
    ^bb0(%arg1: index, %arg2: index):
      "krnl.iterate"(%0#2, %0#2) ({
      ^bb0(%arg3: index):
        "krnl.terminate"() : () -> ()
      }) {bounds = [#map, #map1], num_optimized_loops = 1 : i64} : (!krnl.loop, !krnl.loop) -> ()
      "krnl.terminate"() : () -> ()
    }) {bounds = [#map, #map1, #map, #map1], num_optimized_loops = 2 : i64} : (!krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop) -> ()
    "krnl.iterate"(%0#0, %0#1, %0#0, %arg0, %0#1) ({
    ^bb0(%arg1: index, %arg2: index):
      "krnl.terminate"() : () -> ()
    }) {bounds = [#map, #map4, #map, #map1], num_optimized_loops = 2 : i64} : (!krnl.loop, !krnl.loop, !krnl.loop, index, !krnl.loop) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

