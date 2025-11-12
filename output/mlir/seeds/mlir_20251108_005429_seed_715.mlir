"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "mixed_arith_and_scf"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.cmpi"(%arg0, %arg1, "slt") : (i32, i32) -> i1
    %2 = "scf.if"(%1) ({
    ^bb0:
      %3 = "arith.addi"(%arg0, %1) : (i32, i1) -> i32
      "scf.yield"(%3) : (i32) -> ()
    }, {
    ^bb1:
      %4 = "arith.addi"(%arg1, %0) : (i32, i32) -> i32
      "scf.yield"(%4) : (i32) -> ()
    }) : (i32)
    "func.return"(%0, %2) : (i32, i1) -> ()
  }) : () -> ()
}) : () -> ()