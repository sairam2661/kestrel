"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, i32) -> i32, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %2 = "arith.muli"(%1, %0) : (i32, i32) -> i32
    %3 = "arith.subi"(%2, %arg2) : (i32, i32) -> i32
    %4 = "arith.cmpi"(%3, %0) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %5 = "scf.if"(%4) ({
      %6 = "arith.addi"(%3, %0) : (i32, i32) -> i32
      "scf.yield"(%6) : (i32) -> ()
    }, {
      "scf.yield"(%3) : (i32) -> ()
    }) : (i1) -> i32
    "func.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()