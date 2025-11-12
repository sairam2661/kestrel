"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, i32, i32) -> tensor<4xi32>, sym_name = "complex_inserts"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32):
    %0 = "arith.constant"() <{value = dense<[1, 2, 3, 4]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "arith.constant"() <{value = 2 : index}> : () -> index
    %4 = "arith.constant"() <{value = 3 : index}> : () -> index
    %5 = "tensor.insert"(%arg0, %0, %1) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %6 = "tensor.insert"(%arg1, %5, %2) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %7 = "tensor.insert"(%arg2, %6, %3) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %8 = "tensor.insert"(%arg3, %7, %4) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%8) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()