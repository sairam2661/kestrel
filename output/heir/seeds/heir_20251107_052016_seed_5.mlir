"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "complex_add_sub"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %c3_i32 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %1 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflow}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    
    %2 = "tensor.extract"(%0, %c0_i32) : (tensor<16xi32>, i32) -> i32
    %3 = "tensor.extract"(%1, %c1_i32) : (tensor<16xi32>, i32) -> i32
    
    %4 = "arith.muli"(%2, %3) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
    
    %5 = "arith.addi"(%4, %c2_i32) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
    
    %6 = "arith.subi"(%5, %c3_i32) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
    
    "func.return"(%0) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()