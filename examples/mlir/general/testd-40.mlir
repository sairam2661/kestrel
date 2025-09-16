"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "failedReuseConstraintBetweenRegionAndOperand"}> ({
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    "testd.region_and_operand"(%0) ({
    ^bb0(%arg0: i64):
      "llvm.unreachable"() : () -> ()
    }) : (i32) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

