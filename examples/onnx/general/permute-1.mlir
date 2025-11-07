#map = affine_map<() -> (0)>
#map1 = affine_map<() -> (10)>
#map2 = affine_map<() -> (20)>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "tiling"}> ({
    %0:2 = "krnl.define_loops"() {num_loops = 2 : i64} : () -> (!krnl.loop, !krnl.loop)
    %1:2 = "krnl.block"(%0#0) {tile_size = 5 : i64} : (!krnl.loop) -> (!krnl.loop, !krnl.loop)
    %2:2 = "krnl.block"(%0#1) {tile_size = 4 : i64} : (!krnl.loop) -> (!krnl.loop, !krnl.loop)
    "krnl.permute"(%1#0, %1#1, %2#0, %2#1) {map = [0, 2, 1, 3]} : (!krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop) -> ()
    "krnl.iterate"(%1#0, %2#0, %1#1, %2#1, %0#0, %0#1) ({
    ^bb0(%arg0: index, %arg1: index):
      %3 = "arith.addi"(%arg0, %arg0) : (index, index) -> index
      "krnl.terminate"() : () -> ()
    }) {bounds = [#map, #map1, #map, #map2], num_optimized_loops = 4 : i64} : (!krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

