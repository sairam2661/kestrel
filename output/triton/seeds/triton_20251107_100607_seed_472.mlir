"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<128xi32>) -> i32, sym_name = "complex_reduce"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<128xi32>):
    %0 = "tt.reduce"(%arg1) ({
      ^bb1(%acc: i32, %val: i32):
        %1 = "arith.addi"(%acc, %val) <{overflowFlags = #arith_overflow_mode}> : (i32, i32) -> i32
        "scf.yield"(%1) : (i32) -> ()
    }) : (tensor<128xi32>) -> i32
    %2 = "arith.muli"(%0, %arg0) <{overflowFlags = #arith_overflow_mode}> : (i32, i32) -> i32
    "tt.return"(%2) : (i32) -> ()
  }) : (i32, tensor<128xi32>) -> i32
  
  "tt.func"() <{function_type = () -> i32, sym_name = "test_func"}> ({
    %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %1 = "tt.call"(%0, %0) <{callee = @complex_reduce}> : (i32, tensor<128xi32>) -> i32
    %2 = "arith.constant"() <{value = dense<0> : tensor<128xi32>}> : () -> tensor<128xi32>
    %3 = "tt.call"(%0, %2) <{callee = @complex_reduce}> : (i32, tensor<128xi32>) -> i32
    "tt.return"(%3) : (i32) -> ()
  }) : () -> i32
}) : () -> ()