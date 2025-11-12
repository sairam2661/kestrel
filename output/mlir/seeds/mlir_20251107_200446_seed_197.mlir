"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<?xi1>) -> (i32, tensor<?xi1>), sym_name = "xor_bitwise"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<?xi1>):
    %0 = "arith.cmpi"(%arg0, %arg0, "ne") : (i32, i32) -> i1
    %1 = "arith.cmpi"(%arg0, %arg0, "eq") : (i32, i32) -> i1
    %2 = "arith.xori"(%0, %1) : (i1, i1) -> i1
    %3 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %4 = "scf.if"(%2) <{sym_name = "if_true"}> ({
      ^bb1(%arg2: i1):
        %5 = "arith.cmpi"(%arg0, %arg0, "slt") : (i32, i32) -> i1
        "scf.yield"(%5) : (i1) -> (i1)
    }) {
      "scf.yield"=#0
    } : (i1) -> (i1)
    %6 = "arith.cmpi"(%arg0, %arg0, "sgt") : (i32, i32) -> i1
    %7 = "arith.xori"(%6, %4) : (i1, i32) -> i32
    %8 = "arith.cmpi"(%arg0, %arg0, "sle") : (i32, i32) -> i1
    %9 = "arith.xori"(%8, %7) : (i1, i32) -> i32
    "func.return"(%7, %arg1) : (i32, tensor<?xi1>) -> ()
  }) : () -> ()
}) : () -> ()