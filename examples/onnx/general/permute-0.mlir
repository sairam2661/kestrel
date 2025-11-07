#map = affine_map<() -> (0)>
#map1 = affine_map<() -> (10)>
#map2 = affine_map<() -> (20)>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "simple_permute"}> ({
    %0:2 = "krnl.define_loops"() {num_loops = 2 : i64} : () -> (!krnl.loop, !krnl.loop)
    "krnl.permute"(%0#0, %0#1) {map = [1, 0]} : (!krnl.loop, !krnl.loop) -> ()
    "krnl.iterate"(%0#1, %0#0, %0#0, %0#1) ({
    ^bb0(%arg0: index, %arg1: index):
      %1 = "arith.addi"(%arg0, %arg0) : (index, index) -> index
      "krnl.terminate"() : () -> ()
    }) {bounds = [#map, #map1, #map, #map2], num_optimized_loops = 2 : i64} : (!krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

