"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>, index) -> tensor<8xi32>, sym_name = "tensor_manip"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>, %arg2: index):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %1 = "arith.subi"(%arg0, %arg1) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %2 = "arith.addi"(%0, %1) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %3 = "tensor.extract"(%2, %arg2) : (tensor<8xi32>, index) -> i32
    %4 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %5 = "arith.addi"(%3, %4) : (i32, i32) -> i32
    %6 = "tensor.insert"(%5, %2, %arg2) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    "func.return"(%6) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()