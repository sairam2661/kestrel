"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "complex_op"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.constant"() <{value = dense<2> : tensor<16xi32>}> : () -> tensor<16xi32>
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith
        } 
  > : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %2 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith
        } 
  > : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %3 = "arith.muli"(%1, %2) <{overflowFlags = #arith
        } 
  > : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %4 = "arith.select"(%arg0, %3, %0) <{predicate = 2 : i64}> : (tensor<16xi32>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "tt.return"(%4) : (tensor<16xi32>) -> ()
  }) : () -> tensor<16xi32>
}) : () -> ()