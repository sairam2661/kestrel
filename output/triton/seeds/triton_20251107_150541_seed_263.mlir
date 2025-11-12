"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>, sym_name = "mysterious_op", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>):
    %0 = "arith.muli"(%arg0, %arg1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %1 = "arith.remsi"(%0, %arg0) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %2 = "arith.xori"(%1, %arg1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %3 = "arith.addi"(%2, %0) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %4 = "arith.divsi"(%3, %arg1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    "tt.return"(%4) : (tensor<64xi32>) -> ()
  }) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
}) : () -> ()