"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> tensor<2x2xi32>, sym_name = "tensor_complex_ops"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = dense<[[0, 0], [0, 0]]> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "tensor.insert"(%arg0, %0, %1, %1) : (i32, tensor<2x2xi32>, index, index) -> tensor<2x2xi32>
    %4 = "tensor.insert"(%arg1, %3, %2, %2) : (i32, tensor<2x2xi32>, index, index) -> tensor<2x2xi32>
    %5 = "arith.constant"() <{value = 1 : index}> : () -> index
    %6 = "arith.constant"() <{value = 1 : index}> : () -> index
    %7 = "tensor.extract"(%4, %5, %6) : (tensor<2x2xi32>, index, index) -> i32
    %8 = "arith.addi"(%7, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %9 = "tensor.insert"(%8, %4, %5, %6) : (i32, tensor<2x2xi32>, index, index) -> tensor<2x2xi32>
    "func.return"(%9) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()