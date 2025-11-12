"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>) -> (tensor<32xi32>), sym_name = "complex_reduce"}> ({
  ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>):
    %0 = "tt.expand_dims"(%arg0, 0) : (tensor<32xi32>, i32) -> tensor<1x32xi32>
    %1 = "tt.expand_dims"(%arg1, 1) : (tensor<32xi32>, i32) -> tensor<32x1xi32>
    %2 = "tt.addptr"(%0, %1) : (tensor<1x32xi32>, tensor<32x1xi32>) -> tensor<32x32xi32>
    %3 = "tt.reduce"(%2) <{operation = "add" : i32}> : (tensor<32x32xi32>) -> tensor<1xi32>
    %4 = "tt.expand_dims"(%3, 1) : (tensor<1xi32>, i32) -> tensor<1x1xi32>
    "tt.return"(%4) : (tensor<1x1xi32>) -> ()
  }) : () -> ()
}) : () -> ()