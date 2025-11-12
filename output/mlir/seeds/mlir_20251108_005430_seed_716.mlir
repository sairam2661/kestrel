"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "cross_dialect_test"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "arith.cmpi"(%0, %1, "gt") : (i32, i32) -> i1
    %3 = "scf.if"(%2) ({
    ^if_true:
      %4 = "arith.addi"(%0, %1) : (i32, i32) -> i32
      %5 = "arith.addi"(%4, %1) : (i32, i32) -> i32
      "scf.yield"(%5) : (i32) -> ()
    }, {
    ^if_false:
      %4 = "arith.subi"(%0, %1) : (i32, i32) -> i32
      %5 = "arith.subi"(%4, %1) : (i32, i32) -> i32
      "scf.yield"(%5) : (i32) -> ()
    }) : (i32) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()