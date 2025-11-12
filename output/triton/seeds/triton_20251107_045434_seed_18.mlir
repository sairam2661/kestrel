"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>, sym_name = "complex_reduce"}> ({
  ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>):
    %0 = "arith.xori"(%arg0, %arg1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %1 = "arith.constant"() <{value = dense<1> : tensor<64xi32>}> : () -> tensor<64xi32>
    %2 = "arith.addi"(%0, %1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %3 = "tt.reduce"(%arg0) <{operation = "add", neutral_element = dense<0> : tensor<64xi32>}> : (tensor<64xi32>) -> tensor<64xi32>
    %4 = "tt.reduce"(%arg1) <{operation = "mul", neutral_element = dense<1> : tensor<64xi32>}> : (tensor<64xi32>) -> tensor<64xi32>
    %5 = "arith.addi"(%3, %4) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    "tt.return"(%5) : (tensor<64xi32>) -> ()
  }) : () -> ()
}) : () -> ()