"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "tensor_insert_extract"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "tensor.extract"(%arg0, %0) : (tensor<8xi32>, index) -> i32
    %5 = "tensor.insert"(%4, %arg1, %1) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    %6 = "tensor.extract"(%arg0, %1) : (tensor<8xi32>, index) -> i32
    %7 = "tensor.insert"(%6, %5, %2) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    %8 = "tensor.extract"(%arg0, %2) : (tensor<8xi32>, index) -> i32
    %9 = "tensor.insert"(%8, %7, %3) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    %10 = "tensor.extract"(%arg0, %3) : (tensor<8xi32>, index) -> i32
    %11 = "tensor.insert"(%10, %9, %0) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    "func.return"(%11) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()