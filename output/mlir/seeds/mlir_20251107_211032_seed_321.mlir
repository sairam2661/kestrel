"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32), sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.addi"(%arg1, %0) : (i32, i32) -> i32
    %3 = "scf.if"(%1) ({
      %4 = "arith.addi"(%2, %0) : (i32, i32) -> i32
      "scf.yield"(%4) : (i32) -> ()
    }, {
      %5 = "arith.addi"(%1, %2) : (i32, i32) -> i32
      "scf.yield"(%5) : (i32) -> ()
    }) : (i32) -> (i32)
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()