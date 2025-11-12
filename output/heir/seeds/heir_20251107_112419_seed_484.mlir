"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1xi32>, tensor<1x1xi32>) -> tensor<1x1xi32>, sym_name = "tensor_op_mixer"}> ({
  ^bb0(%arg0: tensor<1x1xi32>, %arg1: tensor<1x1xi32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "comb.truth_table"() <{operands = [0, 1], result = 2, table = [0, 1, 1, 0]}> : () -> i32
    %3 = "tensor.extract"(%arg0, %0) : (tensor<1x1xi32>, i32) -> i32
    %4 = "tensor.extract"(%arg1, %0) : (tensor<1x1xi32>, i32) -> i32
    %5 = "arith.addi"(%3, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %6 = "tensor.insert"(%5, %arg0, %0) : (i32, tensor<1x1xi32>, i32) -> tensor<1x1xi32>
    "func.return"(%6) : (tensor<1x1xi32>) -> ()
  }) : () -> ()
}) : () -> ()