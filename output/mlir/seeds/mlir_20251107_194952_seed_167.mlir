"builtin.module"() ({
  "func.func"() <{function_type = (i64, i64) -> i64, sym_name = "complex_arith"}> ({
  ^bb0(%arg0: i64, %arg1: i64):
    %0 = "arith.addi"(%arg0, %arg1) : (i64, i64) -> i64
    %1 = "arith.cmpi"(%0, %arg0) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %2 = "scf.if"(%1) <{results = i64}> ({
      ^bb1(%c0_i1: i1):
        %3 = "arith.addi"(%arg0, %arg1) : (i64, i64) -> i64
        "scf.yield"(%3) : (i64) -> i64
    }) : (i64) -> i64
    "func.return"(%2) : (i64) -> ()
  }) : () -> ()
}) : () -> ()