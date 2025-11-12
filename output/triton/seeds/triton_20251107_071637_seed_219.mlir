"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "xor_and_cmp"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.xori"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %1 = "arith.constant"() <{value = dense<0> : tensor<16xi1>}> : () -> tensor<16xi1>
    %2 = "arith.cmpi"(%0, %1) <{predicate = 4 : i64}> : (tensor<16xi32>, tensor<16xi1>) -> tensor<16xi1>
    %3 = "arith.select"(%2, %arg0, %arg1) : (tensor<16xi1>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "tt.return"(%3) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()