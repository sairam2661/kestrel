"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "unusual_ops"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "tosa.const"() <{value = 2147483647 : i32}> : () -> i32
      %1 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %2 = "arith.muli"(%1, %0) : (i32, i32) -> i32
      %3 = "tosa.const"() <{value = -1 : i32}> : () -> i32
      %4 = "arith.addi"(%2, %3) : (i32, i32) -> i32
      "func.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()