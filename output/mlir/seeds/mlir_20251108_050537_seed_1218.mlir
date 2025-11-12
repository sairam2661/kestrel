"builtin.module"() ({
  "func.func"() <{function_type = (tensor<64x64xi8>) -> tensor<64x64xi32>, sym_name = "tensor_conversion"}> ({
  ^bb0(%arg0: tensor<64x64xi8>):
    %0 = "tosa.cast"(%arg0) : (tensor<64x64xi8>) -> tensor<64x64xi32>
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "arith.addi"(%0, %1) : (tensor<64x64xi32>, i32) -> tensor<64x64xi32>
    %3 = "tosa.const"() <{values = dense<255> : tensor<64x64xi8>}> : () -> tensor<64x64xi8>
    %4 = "tosa.cast"(%3) : (tensor<64x64xi8>) -> tensor<64x64xi32>
    %5 = "arith.cmpf"(%2, %4, "slt") : (tensor<64x64xi32>, tensor<64x64xi32>) -> tensor<64x64xi1>
    "func.return"(%5) : (tensor<64x64xi1>) -> ()
  }) : () -> ()
}) : () -> ()