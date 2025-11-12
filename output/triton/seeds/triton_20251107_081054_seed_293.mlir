"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32x32xi32>, tensor<32xi32>) -> (tensor<32x32xi32>), sym_name = "complex_operations"}> ({
    ^bb0(%arg0: tensor<32x32xi32>, %arg1: tensor<32xi32>):
      %0 = "tt.expand_dims"(%arg1) <{axis = 1 : i32}> : (tensor<32xi32>) -> tensor<32x1xi32>
      %1 = "tt.broadcast"(%0) : (tensor<32x1xi32>) -> tensor<32x32xi32>
      %2 = "arith.subi"(%arg0, %1) : (tensor<32x32xi32>, tensor<32x32xi32>) -> tensor<32x32xi32>
      %3 = "tt.reduce"(%2) <{combine = "add", dim = 1 : i32, init = dense<0 : i32> : tensor<32xi32>}> : (tensor<32x32xi32>) -> tensor<32xi32>
      %4 = "tt.expand_dims"(%3) <{axis = 1 : i32}> : (tensor<32xi32>) -> tensor<32x1xi32>
      %5 = "tt.broadcast"(%4) : (tensor<32x1xi32>) -> tensor<32x32xi32>
      %6 = "arith.subi"(%0, %5) : (tensor<32x1xi32>, tensor<32x32xi32>) -> tensor<32x32xi32>
      "tt.return"(%6) : (tensor<32x32xi32>) -> ()
  }) : () -> ()
}) : () -> ()