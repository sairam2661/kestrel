"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16x16xi32>) -> tensor<16x16xi32>, sym_name = "tensor_transform"}> ({
  ^bb0(%arg0: tensor<16x16xi32>):
    %0 = "tt.make_range"() <{start = 0, end = 16, step = 1}> : () -> tensor<16xi32>
    %1 = "tt.expand_dims"(%0, 1) : (tensor<16xi32>, i32) -> tensor<16x1xi32>
    %2 = "tt.expand_dims"(%1, 1) : (tensor<16x1xi32>, i32) -> tensor<16x1x1xi32>
    %3 = "arith.constant"() <{value = dense<2> : tensor<16xi32>}> : () -> tensor<16xi32>
    %4 = "arith.muli"(%3, %0) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %5 = "tt.expand_dims"(%4, 1) : (tensor<16xi32>, i32) -> tensor<16x1xi32>
    %6 = "tt.expand_dims"(%5, 1) : (tensor<16x1xi32>, i32) -> tensor<16x1x1xi32>
    %7 = "arith.addi"(%2, %6) : (tensor<16x1x1xi32>, tensor<16x1x1xi32>) -> tensor<16x1x1xi32>
    %8 = "tt.reduce"(%7, "tt.sum") <{reduction_dim = 2}> : (tensor<16x1x1xi32>, i32) -> tensor<16x1xi32>
    %9 = "tt.expand_dims"(%8, 1) : (tensor<16x1xi32>, i32) -> tensor<16x1x1xi32>
    %10 = "arith.addi"(%arg0, %9) : (tensor<16x16xi32>, tensor<16x1x1xi32>) -> tensor<16x16xi32>
    "tt.return"(%10) : (tensor<16x16xi32>) -> ()
  }) : (tensor<16x16xi32>) -> (tensor<16x16xi32>)
}) : () -> ()