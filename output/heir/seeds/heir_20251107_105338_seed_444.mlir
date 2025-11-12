"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_manipulation"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 6 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "tensor.extract"(%arg0, %1) : (tensor<4xi32>, index) -> i32
    %5 = "tensor.extract"(%arg0, %2) : (tensor<4xi32>, index) -> i32
    %6 = "tensor.extract"(%arg1, %0) : (tensor<4xi32>, index) -> i32
    %7 = "arith.addi"(%4, %5) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
    %8 = "arith.addi"(%7, %6) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
    %9 = "tensor.insert"(%8, %arg0, %0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%9) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()