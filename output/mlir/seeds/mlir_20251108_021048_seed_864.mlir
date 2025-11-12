"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "mixed_arith_and_scf"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.cmpi"(%0, %arg0) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "scf.if"(%1) ({
      ^bb1(%arg2: i1):
        %2 = "arith.addi"(%0, %0) : (i32, i32) -> i32
        "scf.yield"(%2) : (i32) -> i32
    }) {
      "scf.yield" = "arith.addi" : (i32, i32) -> i32
    } : (i1) -> (i32)
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()