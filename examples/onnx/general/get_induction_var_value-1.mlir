#map = affine_map<() -> (0)>
#map1 = affine_map<() -> (10)>
#map2 = affine_map<() -> (20)>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "test_2d_tiling_imperfectly_nested"}> ({
    %0:2 = "krnl.define_loops"() {num_loops = 2 : i64} : () -> (!krnl.loop, !krnl.loop)
    %1:2 = "krnl.block"(%0#0) {tile_size = 5 : i64} : (!krnl.loop) -> (!krnl.loop, !krnl.loop)
    %2:2 = "krnl.block"(%0#1) {tile_size = 4 : i64} : (!krnl.loop) -> (!krnl.loop, !krnl.loop)
    "krnl.permute"(%1#0, %1#1, %2#0, %2#1) {map = [0, 2, 1, 3]} : (!krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop) -> ()
    "krnl.iterate"(%1#0, %2#0, %0#0, %0#1) ({
    ^bb0(%arg0: index, %arg1: index):
      %3:2 = "krnl.get_induction_var_value"(%1#0, %2#0) : (!krnl.loop, !krnl.loop) -> (index, index)
      %4 = "arith.addi"(%3#0, %3#1) : (index, index) -> index
      %5 = "memref.alloc"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<10xf32>
      "krnl.iterate"(%1#1, %2#1) ({
        %6:2 = "krnl.get_induction_var_value"(%1#1, %2#1) : (!krnl.loop, !krnl.loop) -> (index, index)
        %7 = "arith.addi"(%6#0, %6#1) : (index, index) -> index
        "krnl.terminate"() : () -> ()
      }) {bounds = [], num_optimized_loops = 2 : i64} : (!krnl.loop, !krnl.loop) -> ()
      "memref.dealloc"(%5) : (memref<10xf32>) -> ()
      "krnl.terminate"() : () -> ()
    }) {bounds = [#map, #map1, #map, #map2], num_optimized_loops = 2 : i64} : (!krnl.loop, !krnl.loop, !krnl.loop, !krnl.loop) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

