"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "complex_arith"}> ({
  ^bb0(%arg0: i32):
    %1 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %2 = "arith.cmpi"(%1, %arg0, "sgt") : (i32, i32) -> i1
    "scf.if"(%2) ({
    ^bb1:
      %3 = "arith.addi"(%1, %arg0) : (i32, i32) -> i32
      "scf.yield"(%3) : (i32) -> ()
    }) {
    } : (i1) -> (i32)
    "func.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()