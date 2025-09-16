"builtin.module"() ({
  "func.func"() <{function_type = (i64, i64, i64) -> i64, sym_name = "uplift_while"}> ({
  ^bb0(%arg0: i64, %arg1: i64, %arg2: i64):
    %0 = "scf.while"(%arg0) ({
    ^bb0(%arg4: i64):
      %2 = "arith.cmpi"(%arg4, %arg1) <{predicate = 2 : i64}> : (i64, i64) -> i1
      "scf.condition"(%2, %arg4) : (i1, i64) -> ()
    }, {
    ^bb0(%arg3: i64):
      "test.test1"(%arg3) : (i64) -> ()
      %1 = "arith.addi"(%arg3, %arg2) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
      "test.test2"(%1) : (i64) -> ()
      "scf.yield"(%1) : (i64) -> ()
    }) : (i64) -> i64
    "func.return"(%0) : (i64) -> ()
  }) : () -> ()
}) : () -> ()

