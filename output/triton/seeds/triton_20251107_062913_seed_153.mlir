"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "complex_op"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = dense<2> : tensor<4xi32>}> : () -> tensor<4xi32>
    %1 = "arith.addi"(%arg0, %arg1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %2 = "arith.divsi"(%arg0, %0) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %3 = "arith.remsi"(%2, %1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %4 = "arith.cmpi"(%arg0, %arg1, "eq") : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi1>
    %5 = "arith.select"(%4, %1, %2) : (tensor<4xi1>, tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %6 = "arith.muli"(%3, %5) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "tt.return"(%6) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()