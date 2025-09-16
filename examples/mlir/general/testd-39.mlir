"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "successReuseConstraintBetweenRegionAndOperand"}> ({
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    "testd.region_and_operand"(%0) ({
    ^bb0(%arg0: i32):
      "llvm.unreachable"() : () -> ()
    }) : (i32) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

