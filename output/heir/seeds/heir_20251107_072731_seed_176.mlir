"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, i32) -> tensor<4xi32>, sym_name = "dynamic_insert"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 100 : i32}> : () -> i32
    %5 = "tensor.insert"(%4, %arg0, %0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %6 = "tensor.insert"(%4, %5, %1) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %7 = "tensor.insert"(%4, %6, %2) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %8 = "tensor.insert"(%4, %7, %3) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%8) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()