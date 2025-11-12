"builtin.module"() ({
  "util.func"() <{function_type = (i32) -> (), sym_name = "primitiveArgOnly", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    %1 = "util.optimization_barrier"(%0) : (i32) -> i32
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

