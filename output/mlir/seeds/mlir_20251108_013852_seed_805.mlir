"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32, i32, i32), sym_name = "mixed_operations"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %1 = "arith.muli"(%arg0, %arg1) : (i32, i32) -> i32
      %2 = "arith.subi"(%arg0, %arg1) : (i32, i32) -> i32
      %3 = "arith.cmpi"(%arg0, %arg1, "ne") : (i32, i32) -> i1
      %4 = "arith.select"(%3, %1, %2) : (i1, i32, i32) -> i32
      "func.return"(%0, %1, %4) : (i32, i32, i32) -> ()
  }) : () -> ()
}) : () -> ()