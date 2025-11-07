#map = affine_map<() -> (0)>
#map1 = affine_map<() -> (8)>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<8xf32>) -> (), sym_name = "unroll_with_block_get_iv"}> ({
  ^bb0(%arg0: memref<8xf32>):
    %0 = "krnl.define_loops"() {num_loops = 1 : i64} : () -> !krnl.loop
    %1:2 = "krnl.block"(%0) {tile_size = 2 : i64} : (!krnl.loop) -> (!krnl.loop, !krnl.loop)
    "krnl.unroll"(%1#1) : (!krnl.loop) -> ()
    "krnl.iterate"(%1#0, %0) ({
    ^bb0(%arg1: index):
      %2 = "krnl.get_induction_var_value"(%1#0) : (!krnl.loop) -> index
      "krnl.iterate"(%1#1) ({
        %3 = "krnl.get_induction_var_value"(%1#1) : (!krnl.loop) -> index
        %4 = "arith.addi"(%2, %3) : (index, index) -> index
        "krnl.terminate"() : () -> ()
      }) {bounds = [], num_optimized_loops = 1 : i64} : (!krnl.loop) -> ()
      "krnl.terminate"() : () -> ()
    }) {bounds = [#map, #map1], num_optimized_loops = 1 : i64} : (!krnl.loop, !krnl.loop) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

