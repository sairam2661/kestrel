"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>, tensor<4xi16>) -> tensor<4xi32>, sym_name = "mixed_types_add"}> ({
  ^bb0(%arg0: tensor<4xi8>, %arg1: tensor<4xi16>):
    %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1.5 : f32}> : () -> f32
    %2 = "arith.cmpi"(%arg0, %arg0, "eq") : (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi1>
    %3 = "arith.cmpf"(%arg1, %arg1, "eq") : (tensor<4xi16>, tensor<4xi16>) -> tensor<4xi1>
    %4 = "arith.addi"(%arg0, %arg0) : (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>
    %5 = "arith.addf"(%arg1, %arg1) : (tensor<4xi16>, tensor<4xi16>) -> tensor<4xi16>
    %6 = "arith.extsi"(%4, 32) : (tensor<4xi8>) -> tensor<4xi32>
    %7 = "arith.extui"(%5, 32) : (tensor<4xi16>) -> tensor<4xi32>
    %8 = "arith.addi"(%6, %7) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%8) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()