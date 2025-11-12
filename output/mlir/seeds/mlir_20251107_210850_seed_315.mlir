"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x3xi8>, tensor<3x2xi16>) -> tensor<4x2xi32>, sym_name = "mixed_tensor_operations"}> ({
  ^bb0(%arg0: tensor<4x3xi8>, %arg1: tensor<3x2xi16>):
    %0 = "tosa.const"() <{values = dense<[[1, 2, 3], [4, 5, 6], [7, 8, 9], [10, 11, 12]]> : tensor<4x3xi8>}> : () -> tensor<4x3xi8>
    %1 = "tosa.const"() <{values = dense<[[10, 20], [30, 40], [50, 60]]> : tensor<3x2xi16>}> : () -> tensor<3x2xi16>
    %2 = "arith.addi"(%arg0, %0) : (tensor<4x3xi8>, tensor<4x3xi8>) -> tensor<4x3xi8>
    %3 = "arith.muli"(%arg1, %1) : (tensor<3x2xi16>, tensor<3x2xi16>) -> tensor<3x2xi16>
    %4 = "tosa.reduce_sum"(%2) <{axis = 1 : i32}> : (tensor<4x3xi8>) -> tensor<4xi8>
    %5 = "tosa.reduce_sum"(%3) <{axis = 0 : i32}> : (tensor<3x2xi16>) -> tensor<2xi16>
    %6 = "arith.extui"(%4) : (tensor<4xi8>) -> tensor<4xi32>
    %7 = "arith.extui"(%5) : (tensor<2xi16>) -> tensor<2xi32>
    %8 = "arith.addi"(%6, %7) : (tensor<4xi32>, tensor<2xi32>) -> tensor<4xi32>
    "func.return"(%8) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()