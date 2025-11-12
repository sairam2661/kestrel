"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi32>, i8) -> (tensor<2x3xi32>, i8), sym_name = "tensor_manipulation"}> ({
  ^bb0(%arg0: tensor<2x3xi32>, %arg1: i8):
    %c0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %c1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %c2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %c3 = "arith.constant"() <{value = 3 : index}> : () -> index

    %0 = "tensor.extract"(%arg0) <{indices = [0, 0]}> : (tensor<2x3xi32>) -> i32
    %1 = "arith.addi"(%0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i8) -> i32

    %2 = "tensor.extract"(%arg0) <{indices = [0, 1]}> : (tensor<2x3xi32>) -> i32
    %3 = "arith.addi"(%2, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i8) -> i32

    %4 = "tensor.extract"(%arg0) <{indices = [0, 2]}> : (tensor<2x3xi32>) -> i32
    %5 = "arith.addi"(%4, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i8) -> i32

    %6 = "tensor.extract"(%arg0) <{indices = [1, 0]}> : (tensor<2x3xi32>) -> i32
    %7 = "arith.addi"(%6, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i8) -> i32

    %8 = "tensor.extract"(%arg0) <{indices = [1, 1]}> : (tensor<2x3xi32>) -> i32
    %9 = "arith.addi"(%8, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i8) -> i32

    %10 = "tensor.extract"(%arg0) <{indices = [1, 2]}> : (tensor<2x3xi32>) -> i32
    %11 = "arith.addi"(%10, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i8) -> i32

    %12 = "arith.select"(%1, %3, %5) <{predicate = "slt"}> : (i32, i32, i32) -> i32
    %13 = "arith.select"(%7, %9, %11) <{predicate = "slt"}> : (i32, i32, i32) -> i32

    %14 = "tensor.insert"(%12, %arg0) <{indices = [0, 0]}> : (i32, tensor<2x3xi32>) -> tensor<2x3xi32>
    %15 = "tensor.insert"(%13, %14) <{indices = [1, 1]}> : (i32, tensor<2x3xi32>) -> tensor<2x3xi32>

    "func.return"(%15, %arg1) : (tensor<2x3xi32>, i8) -> ()
  }) : () -> ()
}) : () -> ()