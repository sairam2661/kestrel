#map = affine_map<() -> (0)>
#map1 = affine_map<() -> (1024)>
#map2 = affine_map<() -> (2048)>
#map3 = affine_map<() -> (4096)>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "tiling3d"}> ({
    %0:3 = "krnl.define_loops"() {num_loops = 3 : i64} : () -> (!krnl.loop, !krnl.loop, !krnl.loop)
    %1:2 = "krnl.block"(%0#0) {tile_size = 4 : i64} : (!krnl.loop) -> (!krnl.loop, !krnl.loop)
    %2:2 = "krnl.block"(%0#1) {tile_size = 4 : i64} : (!krnl.loop) -> (!krnl.loop, !krnl.loop)
    %3:2 = "krnl.block"(%0#2) {tile_size = 4 : i64} : (!krnl.loop) -> (!krnl.loop, !krnl.loop)
    "krnl.permute"(%1#0, %1#1, %2#0, %2#1, %3#0, %3#1) {map = [0, 3, 1, 4, 2, 5]} : (!krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop) -> ()
    "krnl.iterate"(%1#0, %1#1, %2#0, %2#1, %3#0, %3#1, %0#0, %0#1, %0#2) ({
    ^bb0(%arg0: index, %arg1: index, %arg2: index):
      "krnl.terminate"() : () -> ()
    }) {bounds = [#map, #map1, #map, #map2, #map, #map3], num_optimized_loops = 6 : i64} : (!krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

