"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "hoist_from_scf_while"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "scf.while"(%arg1) ({
    ^bb0(%arg3: i32):
      %3 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %4 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %5 = "arith.addi"(%arg0, %3) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %6 = "arith.cmpi"(%arg3, %5) <{predicate = 2 : i64}> : (i32, i32) -> i1
      "scf.condition"(%6, %arg3) : (i1, i32) -> ()
    }, {
    ^bb0(%arg2: i32):
      %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %2 = "arith.addi"(%1, %arg2) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "scf.yield"(%2) : (i32) -> ()
    }) : (i32) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

