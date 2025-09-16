"builtin.module"() ({
  "test.single_no_terminator_op"() ({
    %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
  }) : () -> ()
  "test.variadic_no_terminator_op"() ({
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
  }, {
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
  }) : () -> ()
  "test.single_no_terminator_custom_asm_op"() ({
    "important_dont_drop"() : () -> ()
  }) : () -> ()
}) : () -> ()

