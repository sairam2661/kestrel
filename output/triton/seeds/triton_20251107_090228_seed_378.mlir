"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "unusual_op_sequence"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %1 = "arith.muli"(%0, %0) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %2 = "arith.remsi"(%1, %arg0) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %3 = "arith.xori"(%2, %arg1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %4 = "arith.cmpi"(%3, %arg0, "slt") : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi1>
    %5 = "arith.constant"() <{value = dense<1> : tensor<4xi1>}> : () -> tensor<4xi1>
    %6 = "arith.select"(%4, %arg0, %arg1) : (tensor<4xi1>, tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "tt.return"(%6) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()