"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "custom_computation"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    %1 = "arith.constant"() <{value = dense<5> : tensor<4x4xi32>}> : () -> tensor<4x4xi32>
    %2 = "arith.muli"(%0, %1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    %3 = "arith.remsi"(%2, %arg0) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    %4 = "arith.subi"(%3, %arg1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    %5 = "arith.cmpi"(%4, %arg0, "eq") : (tensor<4x4xi32>, tensor<4x4xi32>, i32) -> tensor<4x4xi1>
    %6 = "arith.select"(%5, %4, %arg0) : (tensor<4x4xi1>, tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
    "tt.return"(%6) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()