"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<4x3xi8>) -> (i32, tensor<4x3xi8>), sym_name = "complex_op_chain"}> ({
    ^bb0(%arg0: i32, %arg1: tensor<4x3xi8>):
      %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
      %1 = "arith.cmpf"("eq", %arg0, %0) : (i32, i32) -> i1
      %2 = "arith.select"(%1, %arg1, %arg0) : (i1, tensor<4x3xi8>, tensor<4x3xi8>) -> tensor<4x3xi8>
      %3 = "tosa.const"() <{values = dense<255> : tensor<4x3xi8>}> : () -> tensor<4x3xi8>
      %4 = "tosa.add"(%2, %3) : (tensor<4x3xi8>, tensor<4x3xi8>) -> tensor<4x3xi8>
      "func.return"(%0, %4) : (i32, tensor<4x3xi8>) -> ()
  }) : () -> ()
}) : () -> ()