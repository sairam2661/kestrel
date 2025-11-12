"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>, sym_name = "tensor_add_unusual"}> ({
  ^bb0(%arg0: tensor<2xi32>, %arg1: tensor<2xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "tensor.extract"(%arg0, %0) : (tensor<2xi32>, index) -> i32
    %3 = "tensor.extract"(%arg0, %1) : (tensor<2xi32>, index) -> i32
    %4 = "tensor.extract"(%arg1, %0) : (tensor<2xi32>, index) -> i32
    %5 = "tensor.extract"(%arg1, %1) : (tensor<2xi32>, index) -> i32
    %6 = "arith.addi"(%2, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %7 = "arith.addi"(%3, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %8 = "tensor.from_elements"(%6, %7) : (i32, i32) -> tensor<2xi32>
    "func.return"(%8) : (tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()