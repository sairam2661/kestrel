#map = affine_map<() -> (0)>
#map1 = affine_map<() -> (8)>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "unroll_with_block"}> ({
    %0 = "krnl.define_loops"() {num_loops = 1 : i64} : () -> !krnl.loop
    %1:2 = "krnl.block"(%0) {tile_size = 2 : i64} : (!krnl.loop) -> (!krnl.loop, !krnl.loop)
    "krnl.unroll"(%1#1) : (!krnl.loop) -> ()
    "krnl.iterate"(%1#0, %0) ({
    ^bb0(%arg0: index):
      "krnl.iterate"(%1#1) ({
        %2 = "krnl.get_induction_var_value"(%1#1) : (!krnl.loop) -> index
        %3 = "arith.addi"(%2, %2) : (index, index) -> index
        "krnl.terminate"() : () -> ()
      }) {bounds = [], num_optimized_loops = 1 : i64} : (!krnl.loop) -> ()
      "krnl.terminate"() : () -> ()
    }) {bounds = [#map, #map1], num_optimized_loops = 1 : i64} : (!krnl.loop, !krnl.loop) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

