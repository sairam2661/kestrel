"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>, sym_name = "tensor_mixer"}> ({
  ^bb0(%arg0: tensor<2x3xi32>, %arg1: tensor<2x3xi32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %4 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %5 = "arith.constant"() <{value = 6 : i32}> : () -> i32
    %6 = "tensor_ext.rotate"(%arg0, %0) : (tensor<2x3xi32>, i32) -> tensor<2x3xi32>
    %7 = "tensor_ext.rotate"(%arg1, %1) : (tensor<2x3xi32>, i32) -> tensor<2x3xi32>
    %8 = "arith.addi"(%6, %7) <{overflowFlags = #arith_overflownone}> : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
    %9 = "tensor_ext.rotate"(%8, %2) : (tensor<2x3xi32>, i32) -> tensor<2x3xi32>
    %10 = "tensor_ext.rotate"(%arg0, %3) : (tensor<2x3xi32>, i32) -> tensor<2x3xi32>
    %11 = "arith.muli"(%9, %10) <{overflowFlags = #arith_overflownone}> : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
    %12 = "tensor_ext.rotate"(%11, %4) : (tensor<2x3xi32>, i32) -> tensor<2x3xi32>
    %13 = "tensor_ext.rotate"(%arg1, %5) : (tensor<2x3xi32>, i32) -> tensor<2x3xi32>
    %14 = "arith.addi"(%12, %13) <{overflowFlags = #arith_overflownone}> : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
    "func.return"(%14) : (tensor<2x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()