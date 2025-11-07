#map = affine_map<() -> (0)>
#map1 = affine_map<() -> (10)>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "simple_block"}> ({
    %0 = "krnl.define_loops"() {num_loops = 1 : i64} : () -> !krnl.loop
    %1:2 = "krnl.block"(%0) {tile_size = 2 : i64} : (!krnl.loop) -> (!krnl.loop, !krnl.loop)
    "krnl.iterate"(%1#0, %1#1, %0) ({
    ^bb0(%arg0: index):
      %2 = "arith.addi"(%arg0, %arg0) : (index, index) -> index
      "krnl.terminate"() : () -> ()
    }) {bounds = [#map, #map1], num_optimized_loops = 2 : i64} : (!krnl.loop, !krnl.loop, !krnl.loop) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

