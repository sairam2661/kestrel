#map = affine_map<() -> (0)>
#map1 = affine_map<() -> (10)>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "block_nested"}> ({
    %0 = "krnl.define_loops"() {num_loops = 1 : i64} : () -> !krnl.loop
    %1:2 = "krnl.block"(%0) {tile_size = 4 : i64} : (!krnl.loop) -> (!krnl.loop, !krnl.loop)
    %2:2 = "krnl.block"(%1#1) {tile_size = 2 : i64} : (!krnl.loop) -> (!krnl.loop, !krnl.loop)
    "krnl.iterate"(%1#0, %2#0, %2#1, %0) ({
    ^bb0(%arg0: index):
      %3 = "arith.addi"(%arg0, %arg0) : (index, index) -> index
      "krnl.terminate"() : () -> ()
    }) {bounds = [#map, #map1], num_optimized_loops = 3 : i64} : (!krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

