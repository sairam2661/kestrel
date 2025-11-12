"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "unary_op_mixed_with_reduce"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_flags}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %1 = "tt.reduce"(%0) <{operation = "add", reduction_identity = 0 : i32}> ({
      ^bb1(%arg2: i32, %arg3: i32):
        %4 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
        "tt.yield"(%4) : (i32) -> ()
    }) : (tensor<8xi32>) -> i32
    %2 = "arith.select"(%arg0, %arg1, %1) : (tensor<8xi32>, tensor<8xi32>, i32) -> tensor<8xi32>
    "tt.return"(%2) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()