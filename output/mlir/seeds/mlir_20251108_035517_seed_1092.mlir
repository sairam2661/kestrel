"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "mixed_arith_scf"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.cmpi"(%0, %arg0) <{predicate = "eq"}> : (i32, i32) -> i1
    %2 = "scf.if"(%1) ({
      ^bb0:
        %3 = "arith.addi"(%0, %arg1) : (i32, i32) -> i32
        "scf.yield"(%3) : (i32) -> ()
    }) : (i1) -> (i32)
    "func.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()