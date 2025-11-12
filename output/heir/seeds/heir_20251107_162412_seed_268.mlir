"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>, sym_name = "tensor_interaction"}> ({
  ^bb0(%arg0: tensor<2xi32>, %arg1: tensor<2xi32>):
    %0 = "tensor.extract"(%arg0, 0) : (tensor<2xi32>, index) -> i32
    %1 = "tensor.extract"(%arg0, 1) : (tensor<2xi32>, index) -> i32
    %2 = "tensor.extract"(%arg1, 0) : (tensor<2xi32>, index) -> i32
    %3 = "tensor.extract"(%arg1, 1) : (tensor<2xi32>, index) -> i32
    %4 = "arith.addi"(%0, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "arith.muli"(%1, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %6 = "arith.subi"(%4, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %7 = "tensor.insert"(%6, %arg0, 0) : (i32, tensor<2xi32>, index) -> tensor<2xi32>
    %8 = "tensor.insert"(%3, %7, 1) : (i32, tensor<2xi32>, index) -> tensor<2xi32>
    "func.return"(%8) : (tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()