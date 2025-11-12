"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "cross_dialect_interplay"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %1 = "arith.cmpi"(%0, %arg0, "eq") : (i32, i32, index) -> i1
      %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %3 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %4 = "scf.if"(%1) ({
        %5 = "arith.addi"(%2, %arg0) : (i32, i32) -> i32
        "scf.yield"(%5) : (i32) -> ()
      }, {
        %6 = "arith.addi"(%3, %arg1) : (i32, i32) -> i32
        "scf.yield"(%6) : (i32) -> ()
      }) : (i1) -> i32
      "func.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()