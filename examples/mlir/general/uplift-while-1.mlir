"builtin.module"() ({
  "func.func"() <{function_type = (index, index, index) -> index, sym_name = "uplift_while"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index):
    %0 = "scf.while"(%arg0) ({
    ^bb0(%arg4: index):
      %2 = "arith.cmpi"(%arg1, %arg4) <{predicate = 4 : i64}> : (index, index) -> i1
      "scf.condition"(%2, %arg4) : (i1, index) -> ()
    }, {
    ^bb0(%arg3: index):
      "test.test1"(%arg3) : (index) -> ()
      %1 = "arith.addi"(%arg3, %arg2) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
      "test.test2"(%1) : (index) -> ()
      "scf.yield"(%1) : (index) -> ()
    }) : (index) -> index
    "func.return"(%0) : (index) -> ()
  }) : () -> ()
}) : () -> ()

