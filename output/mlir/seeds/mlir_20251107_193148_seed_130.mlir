"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21xi32>) -> tensor<13x21xi32>, sym_name = "test_bitwise_xor"}> ({
  ^bb0(%arg0: tensor<13x21xi32>):
    %1 = "tosa.const"() <{values = dense<1> : tensor<1x1xi32>}> : () -> tensor<1x1xi32>
    %2 = "tosa.broadcast"(%1, %arg0) <{broadcast_dimensions = [0, 1]}> : (tensor<1x1xi32>, tensor<13x21xi32>) -> tensor<13x21xi32>
    %3 = "arith.xor"(%arg0, %2) : (tensor<13x21xi32>, tensor<13x21xi32>) -> tensor<13x21xi32>
    "func.return"(%3) : (tensor<13x21xi32>) -> ()
  }) : () -> ()
}) : () -> ()