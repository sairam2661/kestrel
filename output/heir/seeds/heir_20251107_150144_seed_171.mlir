"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, i32) -> tensor<4xi32>, sym_name = "tensor_insert_extract_test"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "tensor.insert"(%arg0, %arg1, %0) : (tensor<4xi32>, i32, index) -> tensor<4xi32>
    %5 = "tensor.extract"(%4, %1) : (tensor<4xi32>, index) -> i32
    %6 = "tensor.insert"(%4, %5, %2) : (tensor<4xi32>, i32, index) -> tensor<4xi32>
    %7 = "tensor.extract"(%6, %3) : (tensor<4xi32>, index) -> i32
    %8 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %9 = "tensor.insert"(%6, %8, %3) : (tensor<4xi32>, i32, index) -> tensor<4xi32>
    "func.return"(%9) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()