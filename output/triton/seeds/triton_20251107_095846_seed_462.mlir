"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>, sym_name = "tensor_op_combinations"}> ({
  ^bb0(%arg0: tensor<16x16xi32>, %arg1: tensor<16x16xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
    %1 = "arith.subi"(%0, %arg0) : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
    %2 = "arith.muli"(%1, %arg1) : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
    %3 = "arith.divsi"(%2, %arg1) : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
    %4 = "arith.remsi"(%3, %arg0) : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
    %5 = "tt.expand_dims"(%4) : (tensor<16x16xi32>) -> tensor<16x16x1xi32>
    %6 = "tt.reduce"(%5) : (tensor<16x16x1xi32>) -> tensor<16x16xi32>
    "tt.return"(%6) : (tensor<16x16xi32>) -> ()
  }) : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
}) : () -> ()