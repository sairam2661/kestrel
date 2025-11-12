"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>, sym_name = "tensor_combination"}> ({
  ^bb0(%arg0: tensor<2xi32>, %arg1: tensor<2xi32>):
    %0 = "tensor.extract"(%arg0, 0) : (tensor<2xi32>, index) -> i32
    %1 = "tensor.extract"(%arg1, 1) : (tensor<2xi32>, index) -> i32
    %2 = "arith.muli"(%0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %4 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "tensor.insert"(%4, %arg0, 0) : (i32, tensor<2xi32>, index) -> tensor<2xi32>
    %6 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %7 = "arith.subi"(%0, %6) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %8 = "tensor.insert"(%7, %arg1, 1) : (i32, tensor<2xi32>, index) -> tensor<2xi32>
    "func.return"(%8) : (tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()