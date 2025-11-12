"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>, sym_name = "tensor_operations"}> ({
  ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>):
    %0 = "arith.constant"() <{value = dense<2> : tensor<64xi32>}> : () -> tensor<64xi32>
    %1 = "arith.addi"(%arg0, %arg1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %2 = "arith.muli"(%1, %0) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %3 = "arith.divsi"(%2, %arg0) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %4 = "arith.remsi"(%arg1, %arg0) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %5 = "arith.xori"(%arg0, %arg1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %6 = "arith.cmpi"(%arg0, %arg1, "eq") : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi1>
    %7 = "arith.select"(%6, %2, %3) : (tensor<64xi1>, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    "tt.return"(%7) : (tensor<64xi32>) -> ()
  }) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
}) : () -> ()