"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<i32>, tensor<i32>) -> tensor<i32>, sym_name = "complex_reduce"}> ({
  ^bb0(%arg0: tensor<i32>, %arg1: tensor<i32>):
    %0 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflow_none}> : (tensor<i32>, tensor<i32>) -> tensor<i32>
    %1 = "tt.reduce"(%0: tensor<i32>) ({
      ^bb1(%arg2: i32, %arg3: i32):
        %4 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
        "scf.yield"(%4) : (i32) -> ()
    }) : (tensor<i32>) -> i32
    %2 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %3 = "arith.subi"(%1, %2) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    "tt.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()