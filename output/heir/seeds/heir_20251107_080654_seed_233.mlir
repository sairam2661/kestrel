"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_mutation_mixed_arith"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, i32) -> i32
    %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %3 = "tensor.extract"(%arg1, %2) : (tensor<4xi32>, i32) -> i32
    %4 = "arith.addi"(%1, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "tensor.insert"(%4, %arg0, %0) : (i32, tensor<4xi32>, i32) -> tensor<4xi32>
    %6 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %7 = "tensor.extract"(%arg1, %6) : (tensor<4xi32>, i32) -> i32
    %8 = "arith.subi"(%7, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %9 = "tensor.insert"(%8, %5, %2) : (i32, tensor<4xi32>, i32) -> tensor<4xi32>
    %10 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %11 = "tensor.extract"(%arg0, %10) : (tensor<4xi32>, i32) -> i32
    %12 = "arith.muli"(%11, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %13 = "tensor.insert"(%12, %9, %6) : (i32, tensor<4xi32>, i32) -> tensor<4xi32>
    "func.return"(%13) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()