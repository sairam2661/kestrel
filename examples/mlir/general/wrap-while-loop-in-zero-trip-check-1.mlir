"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "wrap_while_loop_with_minimal_before_block"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = true}> : () -> i1
    %2 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %3 = "scf.while"(%0, %1) ({
    ^bb0(%arg2: i32, %arg3: i1):
      "scf.condition"(%arg3, %arg2) : (i1, i32) -> ()
    }, {
    ^bb0(%arg1: i32):
      %4 = "arith.addi"(%arg1, %2) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %5 = "arith.cmpi"(%4, %arg0) <{predicate = 2 : i64}> : (i32, i32) -> i1
      "scf.yield"(%4, %5) : (i32, i1) -> ()
    }) : (i32, i1) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

