"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> (), sym_name = "loop_unroll_static_yield_value_defined_above"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "arith.constant"() <{value = 4 : index}> : () -> index
    %4:2 = "scf.for"(%1, %3, %2, %0, %arg0) ({
    ^bb0(%arg1: index, %arg2: i32, %arg3: i32):
      %5 = "arith.andi"(%arg3, %arg2) : (i32, i32) -> i32
      "scf.yield"(%5, %arg0) : (i32, i32) -> ()
    }) : (index, index, index, i32, i32) -> (i32, i32)
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

