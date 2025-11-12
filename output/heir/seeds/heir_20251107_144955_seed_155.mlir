"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_flow_test"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.cmpi"(%0, %arg0, "eq") : (i32, i32) -> i1
    %2 = "scf.if"(%1) ({
    ^bb0:
      %3 = "arith.addi"(%0, %arg1) : (i32, i32) -> i32
      "scf.yield"(%3) : (i32) -> ()
    }) {
    } : (i1) -> (i32)
    %4 = "scf.for"(%arg0, %arg1, %arg0, %arg1) ({
    ^bb0(%iv: i32, %iv0: i32):
      %5 = "arith.addi"(%iv, %iv0) : (i32, i32) -> i32
      "scf.yield"(%5) : (i32) -> ()
    }) : (i32) -> (i32)
    %6 = "arith.select"(%2, %4, %0) : (i1, i32, i32) -> i32
    "func.return"(%6) : (i32) -> ()
  }) : () -> ()
}) : () -> ()