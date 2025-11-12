"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "complex_transform"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.muli"(%arg0, %arg1) : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %3 = "arith.cmpi"("slt", %0, %2) : (i32, i32) -> i1
    %4 = "scf.if"(%3) ({
      %5 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %6 = "arith.addi"(%5, %0) : (i32, i32) -> i32
      "scf.yield"(%6) : (i32) -> ()
    }, {
      %7 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %8 = "arith.addi"(%7, %1) : (i32, i32) -> i32
      "scf.yield"(%8) : (i32) -> ()
    }) : (i1) -> i32
    %9 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %10 = "arith.addi"(%9, %4) : (i32, i32) -> i32
    "func.return"(%10, %1) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()