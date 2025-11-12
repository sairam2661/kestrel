"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_complexity_test"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>, %arg2: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %2 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, i32) -> i32
    %3 = "tensor.extract"(%arg1, %1) : (tensor<4xi32>, i32) -> i32
    %4 = "arith.muli"(%2, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "tensor.insert"(%4, %arg2, %0) : (i32, tensor<4xi32>, i32) -> tensor<4xi32>
    "func.return"(%5) : (tensor<4xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32, i32) -> tensor<4xi32>, sym_name = "tensor_insertion_test"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "arith.constant"() <{value = dense<[0, 0, 0, 0]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "arith.constant"() <{value = 2 : index}> : () -> index
    %4 = "tensor.insert"(%arg0, %0, %1) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %5 = "tensor.insert"(%arg1, %4, %2) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %6 = "tensor.insert"(%arg2, %5, %3) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%6) : (tensor<4xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_multiplication_test"}> ({
  ^bb0(%arg0: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %1 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, i32) -> i32
    %2 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %3 = "arith.muli"(%1, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "tensor.insert"(%3, %arg0, %0) : (i32, tensor<4xi32>, i32) -> tensor<4xi32>
    "func.return"(%4) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()