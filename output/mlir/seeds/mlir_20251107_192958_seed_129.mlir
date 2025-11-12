"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32, i1), sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %2 = "arith.cmpi"(%1, %0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "scf.for"() <{lower_bound = 0 : i32, upper_bound = 5 : i32, step = 1 : i32}> ({
    ^bb1(%arg2: i32):
      "scf.yield"() : () -> ()
    }) : () -> ()
    "func.return"(%1, %2) : (i32, i1) -> ()
  }) : () -> ()
}) : () -> ()