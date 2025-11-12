"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %c1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %0 = "arith.addi"(%arg0, %c1) : (tensor<4xi32>, i32) -> tensor<4xi32>
    %1 = "tosa.const"() <{value = dense<[4, 5, 6, 7]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %2 = "arith.addi"(%1, %c2) : (tensor<4xi32>, i32) -> tensor<4xi32>
    %3 = "tosa.const"() <{value = dense<[8, 9, 10, 11]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %4 = "arith.addi"(%3, %0) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %5 = "arith.addi"(%4, %2) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %6 = "arith.addi"(%5, %arg1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%6) : (tensor<4xi32>) -> ()
  }) : () -> ()
  "transform.named_sequence"() <{function_type = (!transformany_op) -> (), sym_name = "__transform_sequence"}> ({
  ^bb0(%arg0: !transformany_op):
    %0 = "transform.structured.match"(%arg0) <{ops = ["arith.addi"]}> : (!transformany_op) -> !transformany_op
    %1 = "transform.get_consumers_of_result"(%0) <{result_number = 1 : i64}> : (!transformany_op) -> !transformany_op
    "transform.yield"() : () -> ()
  }) : () -> ()
}) : () -> ()