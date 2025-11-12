"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %1 = "arith.muli"(%0, %arg0) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %2 = "arith.subi"(%1, %arg1) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %3 = "arith.remsi"(%2, %arg0) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %4 = "arith.cmpi"(%3, %arg1, "eq") : (tensor<8xi32>, tensor<8xi32>) -> tensor<1xi1>
    %5 = "arith.select"(%4, %arg1, %arg0) : (tensor<1xi1>, tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %6 = "arith.divsi"(%5, %arg0) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    "tt.return"(%6) : (tensor<8xi32>) -> ()
  }) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
}) : () -> ()