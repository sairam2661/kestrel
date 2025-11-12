"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_op_combinations"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %3 = "arith.select"(%0, %2, %arg1) : (i1, i32, i32) -> i32
    %4 = "tt.expand_dims"(%3) <{dim = 0 : i32}> : (i32) -> tensor<1xi32>
    %5 = "tt.reduce"(%4, "arith.addi") <{initial_value = 0 : i32}> ({
    ^bb0(%arg2: i32, %arg3: i32):
      %6 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      "scf.yield"(%6) : (i32) -> ()
    }) : (i32, tensor<1xi32>) -> i32
    "tt.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()