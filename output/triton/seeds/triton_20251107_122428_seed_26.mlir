"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>, sym_name = "tensor_sum"}> ({
  ^bb0(%arg0: tensor<8x8xi32>, %arg1: tensor<8x8xi32>):
    %0 = "tt.expand_dims"(%arg0, 1) <{dim = 0 : i32}> : (tensor<8x8xi32>, i32) -> tensor<8x1x8xi32>
    %1 = "tt.expand_dims"(%arg1, 1) <{dim = 0 : i32}> : (tensor<8x8xi32>, i32) -> tensor<8x1x8xi32>
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<8x1x8xi32>, tensor<8x1x8xi32>) -> tensor<8x1x8xi32>
    %3 = "tt.reduce"(%2, "add") <{reduce_dims = [1 : i32]}>: (tensor<8x1x8xi32>, i32) -> tensor<8x8xi32>
    "tt.return"(%3) : (tensor<8x8xi32>) -> ()
  }) : () -> ()
}) : () -> ()