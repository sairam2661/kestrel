"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_add"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %1 = "arith.muli"(%0, %0) : (i32, i32) -> i32
      %2 = "arith.addi"(%0, %1) : (i32, i32) -> i32
      "func.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()