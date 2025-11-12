"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "mixed_operations"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = dense<1> : tensor<4xi32>}> : () -> tensor<4xi32>
    %1 = "arith.addi"(%arg0, %arg1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %2 = "arith.subi"(%arg0, %arg1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %3 = "arith.muli"(%arg0, %0) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %4 = "arith.remsi"(%arg0, %0) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %5 = "arith.xori"(%arg0, %arg1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %6 = "arith.cmpi"(%arg0, %arg1, "eq") : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi1>
    %7 = "arith.select"(%6, %arg0, %arg1) : (tensor<4xi1>, tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "tt.return"(%7) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()