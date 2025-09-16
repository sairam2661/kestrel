"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> (), sym_name = "while_cmp_rhs"}> ({
  ^bb0(%arg0: i32):
    %0 = "scf.while"() ({
      %3 = "test.val"() : () -> i32
      %4 = "arith.cmpi"(%arg0, %3) <{predicate = 1 : i64}> : (i32, i32) -> i1
      "scf.condition"(%4, %3) : (i1, i32) -> ()
    }, {
    ^bb0(%arg1: i32):
      %1 = "arith.cmpi"(%arg0, %arg1) <{predicate = 1 : i64}> : (i32, i32) -> i1
      %2 = "arith.cmpi"(%arg0, %arg1) <{predicate = 0 : i64}> : (i32, i32) -> i1
      "test.use"(%1, %2, %arg1) : (i1, i1, i32) -> ()
      "scf.yield"() : () -> ()
    }) : () -> i32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

