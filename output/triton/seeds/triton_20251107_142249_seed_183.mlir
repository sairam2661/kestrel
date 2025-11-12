"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>, sym_name = "tensor_xor_and_select", sym_visibility = "public"}> ({
  ^bb0(%arg0: tensor<2x3xi32>, %arg1: tensor<2x3xi32>):
    %0 = "arith.xori"(%arg0, %arg1) : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
    %1 = "arith.constant"() <{value = dense<1 : i32> : tensor<2x3xi32>}> : () -> tensor<2x3xi32>
    %2 = "arith.cmpi"(%0, %1, "slt") : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi1>
    %3 = "arith.select"(%2, %0, %arg0) : (tensor<2x3xi1>, tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
    "tt.return"(%3) : (tensor<2x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()