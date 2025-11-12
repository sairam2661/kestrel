"builtin.module"() ({
  "func.func"() <{function_type = (i1, i8) -> (i1, i32), sym_name = "complex_logic"}> ({
    ^bb0(%arg0: i1, %arg1: i8):
      %0 = "arith.extui"(%arg1) : (i8) -> i32
      %1 = "arith.addi"(%0, %0) : (i32, i32) -> i32
      %2 = "arith.cmpi"("ne", %arg0, false) : (i1, i1) -> i1
      %3 = "arith.select"(%2, %1, 0) : (i1, i32, i32) -> i32
      "func.return"(%2, %3) : (i1, i32) -> ()
  }) : () -> ()
}) : () -> ()