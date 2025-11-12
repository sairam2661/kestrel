"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<8x1xi32>) -> tensor<8x4xi32>, sym_name = "expand_dims_and_add"}> ({
  ^bb0(%arg0: tensor<8x1xi32>):
    %0 = "tt.expand_dims"(%arg0) <{axis = 1 : i32}> : (tensor<8x1xi32>) -> tensor<8x1x4xi32>
    %1 = "arith.constant"() <{value = dense<1> : tensor<8x1x4xi32>}> : () -> tensor<8x1x4xi32>
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<8x1x4xi32>, tensor<8x1x4xi32>) -> tensor<8x1x4xi32>
    %3 = "tt.reduce"(%2, %1) <{operation = "add", identity = 0 : i32}> : (tensor<8x1x4xi32>, tensor<8x1x4xi32>) -> tensor<8xi32>
    "tt.return"(%3) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()