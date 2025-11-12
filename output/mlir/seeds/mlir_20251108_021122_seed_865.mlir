"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arithmetic"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %1 = "arith.cmpi"(%0, %arg0) <{predicate = 4 : i64}> : (i32, i32) -> i1
      %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %3 = "arith.muli"(%arg0, %2) : (i32, i32) -> i32
      %4 = "scf.if"(%1) ({
        ^bb1(%5: i1):
          %6 = "arith.addi"(%3, %arg1) : (i32, i32) -> i32
          "scf.yield"(%6) : (i32) -> i32
      }) : (i32) -> i32
      "func.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()