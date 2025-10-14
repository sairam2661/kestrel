module {
  test.single_no_terminator_op : {
    %c1_i32 = arith.constant 1 : i32
  }
  test.variadic_no_terminator_op : {
    %c1_i32 = arith.constant 1 : i32
  }, {
    %c1_i32 = arith.constant 1 : i32
  }
  test.single_no_terminator_custom_asm_op{
    "important_dont_drop"() : () -> ()
  }
}

