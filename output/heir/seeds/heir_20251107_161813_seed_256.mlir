"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "tensor_complex_ops"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %5 = "arith.constant"() <{value = 5 : index}> : () -> index
    %6 = "arith.constant"() <{value = 6 : index}> : () -> index
    %7 = "arith.constant"() <{value = 7 : index}> : () -> index
    %8 = "tensor.extract"(%arg0, %0, %1) : (tensor<2x2xi32>, index, index) -> i32
    %9 = "tensor.extract"(%arg1, %2, %3) : (tensor<2x2xi32>, index, index) -> i32
    %10 = "arith.addi"(%8, %9) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %11 = "tensor.insert"(%10, %arg0, %0, %1) : (i32, tensor<2x2xi32>, index, index) -> tensor<2x2xi32>
    %12 = "tensor.extract"(%arg0, %4, %5) : (tensor<2x2xi32>, index, index) -> i32
    %13 = "tensor.extract"(%arg1, %6, %7) : (tensor<2x2xi32>, index, index) -> i32
    %14 = "arith.addi"(%12, %13) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %15 = "tensor.insert"(%14, %11, %4, %5) : (i32, tensor<2x2xi32>, index, index) -> tensor<2x2xi32>
    "func.return"(%15) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()