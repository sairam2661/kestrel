"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>, sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>, %arg2: tensor<32xi32>):
    %0 = "arith.constant"() <{value = dense<1> : tensor<32xi32>}> : () -> tensor<32xi32>
    %1 = "arith.xori"(%arg0, %arg1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %2 = "arith.select"(%0, %1, %arg2) : (tensor<32xi32>, tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %3 = "arith.divsi"(%2, %0) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    "tt.return"(%3) : (tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()