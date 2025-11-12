"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "tensor_complex_ops"}> ({
    ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
      %0 = "arith.constant"() <{value = dense<1 : i32> : tensor<4x4xi32>}> : () -> tensor<4x4xi32>
      %1 = "arith.addi"(%arg0, %arg1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
      %2 = "arith.muli"(%1, %0) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
      %3 = "arith.constant"() <{value = dense<2 : i32> : tensor<4x4xi32>}> : () -> tensor<4x4xi32>
      %4 = "arith.remsi"(%2, %3) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
      %5 = "arith.cmpi"(%arg0, %arg1, "slt") : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi1>
      %6 = "arith.select"(%5, %0, %1) : (tensor<4x4xi1>, tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
      "tt.return"(%6) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()