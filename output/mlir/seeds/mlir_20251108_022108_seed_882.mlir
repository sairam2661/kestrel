"builtin.module"() ({
  "func.func"() <{function_type = () -> i64, sym_name = "complex_nested_loops"}> ({
  ^bb0:
    %0 = "arith.constant"() <{value = 0 : i64}> : () -> i64
    %1 = "arith.constant"() <{value = 10 : index}> : () -> index
    %2 = "arith.constant"() <{value = 20 : index}> : () -> index
    %3 = "scf.for"(%0, %2, %1, %0) ({
    ^bb1(%arg0: index, %arg1: i64):
      %4 = "arith.constant"() <{value = 0 : index}> : () -> index
      %5 = "arith.constant"() <{value = 5 : index}> : () -> index
      %6 = "scf.for"(%4, %5, %1, %arg1) ({
      ^bb2(%arg2: index, %arg3: i64):
        %7 = "arith.addi"(%arg3, %1) <{overflowFlags = #arith_overflow_flags}> : (i64, index) -> i64
        "scf.yield"(%7) : (i64) -> ()
      }) : (index, i64) -> i64
      "scf.yield"(%6) : (i64) -> ()
    }) : (index, i64) -> i64
    "func.return"(%3) : (i64) -> ()
  }) : () -> ()
}) : () -> ()