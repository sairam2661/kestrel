"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_op_sequence"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %1 = "arith.cmpi"(%0, %arg0) <{predicate = 4}> : (i32, i32) -> i1
      %2 = "arith.select"(%1, %arg1, %arg0) : (i1, i32, i32) -> i32
      %3 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %4 = "arith.muli"(%2, %3) : (i32, i32) -> i32
      "func.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()