#map = affine_map<() -> (0)>
#map1 = affine_map<()[s0] -> (s0)>
#map2 = affine_map<() -> (1)>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<?xf32>) -> (), sym_name = "simple_block"}> ({
  ^bb0(%arg0: memref<?xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "krnl.define_loops"() {num_loops = 1 : i64} : () -> !krnl.loop
    "krnl.iterate"(%1, %1) ({
    ^bb0(%arg1: index):
      %2 = "memref.dim"(%arg0, %0) : (memref<?xf32>, index) -> index
      %3 = "krnl.define_loops"() {num_loops = 1 : i64} : () -> !krnl.loop
      %4:2 = "krnl.block"(%3) {tile_size = 2 : i64} : (!krnl.loop) -> (!krnl.loop, !krnl.loop)
      "krnl.iterate"(%4#0, %4#1, %3, %2) ({
      ^bb0(%arg2: index):
        %5 = "arith.addi"(%arg2, %arg2) : (index, index) -> index
        "krnl.terminate"() : () -> ()
      }) {bounds = [#map, #map1], num_optimized_loops = 2 : i64} : (!krnl.loop, !krnl.loop, !krnl.loop, index) -> ()
      "krnl.terminate"() : () -> ()
    }) {bounds = [#map, #map2], num_optimized_loops = 1 : i64} : (!krnl.loop, !krnl.loop) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

