#map = affine_map<() -> (0)>
#map1 = affine_map<() -> (4)>
"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "simple_unroll"}> ({
    %0 = "krnl.define_loops"() {num_loops = 1 : i64} : () -> !krnl.loop
    "krnl.unroll"(%0) : (!krnl.loop) -> ()
    "krnl.iterate"(%0, %0) ({
    ^bb0(%arg0: index):
      %1 = "arith.constant"() <{value = 1 : index}> : () -> index
      %2 = "arith.addi"(%arg0, %1) : (index, index) -> index
      "krnl.terminate"() : () -> ()
    }) {bounds = [#map, #map1], num_optimized_loops = 1 : i64} : (!krnl.loop, !krnl.loop) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

