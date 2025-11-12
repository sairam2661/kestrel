"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>, sym_name = "mixed_ops_func"}> ({
    ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>):
      %0 = "arith.addi"(%arg0, %arg1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %1 = "arith.muli"(%0, %arg0) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %2 = "arith.subi"(%1, %arg1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %3 = "arith.xori"(%2, %arg0) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %4 = "arith.divsi"(%3, %arg1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %5 = "tt.expand_dims"(%4) <{axis = 1 : i32}> : (tensor<64xi32>) -> tensor<64x1xi32>
      %6 = "tt.expand_dims"(%5) <{axis = 2 : i32}> : (tensor<64x1xi32>) -> tensor<64x1x1xi32>
      %7 = "tt.reduce"(%6) <{redop = "add", init = dense<0> : tensor<64xi32>}> : (tensor<64x1x1xi32>) -> tensor<64xi32>
      "tt.return"(%7) : (tensor<64xi32>) -> ()
  }) : () -> ()
}) : () -> ()