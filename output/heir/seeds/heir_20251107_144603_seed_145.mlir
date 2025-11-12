"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_combinations"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %4 = "comb.truth_table"(%0, %1, %2, %3) <{tt = [0, 1, 1, 0, 1, 0, 0, 1]}> : (i32, i32, i32, i32) -> tensor<4xi1>
    %5 = "comb.truth_table"(%0, %1, %2, %3) <{tt = [1, 0, 0, 1, 0, 1, 1, 0]}> : (i32, i32, i32, i32) -> tensor<4xi1>
    %6 = "arith.addi"(%4, %5) <{overflowFlags = #arith_overflownone}> : (tensor<4xi1>, tensor<4xi1>) -> tensor<4xi1>
    %7 = "tensor.cast"(%arg0) <{type = tensor<4xi1>}> : (tensor<4xi32>) -> tensor<4xi1>
    %8 = "tensor.cast"(%arg1) <{type = tensor<4xi1>}> : (tensor<4xi32>) -> tensor<4xi1>
    %9 = "arith.addi"(%7, %8) <{overflowFlags = #arith_overflownone}> : (tensor<4xi1>, tensor<4xi1>) -> tensor<4xi1>
    "func.return"(%9) : (tensor<4xi1>) -> ()
  }) : () -> ()
}) : () -> ()