"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> (i32), sym_name = "nested_transformations"}> ({
    ^bb0(%arg0: i32):
      %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
      %1 = "arith.constant"() <{value = 5 : i32}> : () -> i32
      %2 = "arith.subi"(%0, %1) : (i32, i32) -> i32
      %3 = "arith.muli"(%2, %0) : (i32, i32) -> i32
      %4 = "arith.divi"(%3, %2) : (i32, i32) -> i32
      "func.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()