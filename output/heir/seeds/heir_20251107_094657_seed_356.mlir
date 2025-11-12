"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "nested_loops"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "scf.for"(%arg0) <{lowerBound = 0, upperBound = 10, step = 1}> ({
    ^bb1(%iv: i32):
      %2 = "scf.for"(%iv) <{lowerBound = 0, upperBound = 10, step = 1}> ({
      ^bb2(%jv: i32):
        %3 = "arith.addi"(%0, %jv) <{overflowFlags = #arith_overflow_NONE}> : (i32, i32) -> i32
        scf.yield %3 : i32
      }) : (i32) -> (i32)
      scf.yield %2 : i32
    }) : (i32) -> (i32)
    "func.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()