"builtin.module"() ({
  "spirv.func"() <{function_type = () -> i32, sym_name = "test_spirv_func"}> ({
    ^bb0():
      %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %1 = "arith.addi"(%0, %0) : (i32, i32) -> i32
      %2 = "arith.muli"(%1, %1) : (i32, i32) -> i32
      %3 = "arith.subi"(%2, %0) : (i32, i32) -> i32
      "spirv.ReturnValue"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()