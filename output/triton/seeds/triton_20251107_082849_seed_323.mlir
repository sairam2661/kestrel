"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "tensor_manipulation"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_none}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %1 = "arith.constant"() <{value = dense<-1> : tensor<16xi32>}> : () -> tensor<16xi32>
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflow_none}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %3 = "arith.cmpi"(%2, %1) <{predicate = "slt"}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
    %4 = "arith.select"(%3, %2, %1) : (tensor<16xi1>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "tt.return"(%4) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()