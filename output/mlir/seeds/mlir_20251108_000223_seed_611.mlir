"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "mixed_arith_and_scf"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.cmpi"(%0, %arg0, "slt") : (i32, i32) -> i1
    "scf.if"(%1) ({
    ^bb1:
      %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }) {
    } : (i1) -> ()
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()