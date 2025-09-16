"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "wrap_while_loop_in_zero_trip_check"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %2:2 = "scf.while"(%0) ({
    ^bb0(%arg3: i32):
      %4 = "arith.cmpi"(%arg3, %arg0) <{predicate = 2 : i64}> : (i32, i32) -> i1
      %5 = "arith.addi"(%arg0, %1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "scf.condition"(%4, %arg3, %5) : (i1, i32, i32) -> ()
    }, {
    ^bb0(%arg1: i32, %arg2: i32):
      %3 = "arith.addi"(%arg1, %arg2) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "scf.yield"(%3) : (i32) -> ()
    }) : (i32) -> (i32, i32)
    "func.return"(%2#0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

