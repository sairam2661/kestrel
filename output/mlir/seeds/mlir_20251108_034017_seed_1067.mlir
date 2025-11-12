"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x2xi32>, tensor<2x3xi32>) -> tensor<6xi32>, sym_name = "nested_reshape_and_concat"}> ({
  ^bb0(%arg0: tensor<3x2xi32>, %arg1: tensor<2x3xi32>):
    %0 = "arith.cmpi"(%arg0, %arg1) <{predicate = "eq"}> : (tensor<3x2xi32>, tensor<2x3xi32>) -> tensor<3x2xi1>
    %1 = "arith.cmpi"(%arg1, %arg0) <{predicate = "ne"}> : (tensor<2x3xi32>, tensor<3x2xi32>) -> tensor<2x3xi1>
    %2 = "tosa.cast"(%0) : (tensor<3x2xi1>) -> tensor<3x2xi32>
    %3 = "tosa.cast"(%1) : (tensor<2x3xi1>) -> tensor<2x3xi32>
    %4 = "tosa.add"(%2, %3) : (tensor<3x2xi32>, tensor<2x3xi32>) -> tensor<3x2xi32>
    %5 = "tensor.reshape"(%4) : (tensor<3x2xi32>) -> tensor<6xi32>
    "func.return"(%5) : (tensor<6xi32>) -> ()
  }) : () -> ()
}) : () -> ()