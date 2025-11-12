"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "matrix_addition"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: tensor<2x2xi32>, %arg3: tensor<2x2xi32>):
      %3 = "tensor.extract"(%arg2, %0, %0) : (tensor<2x2xi32>, index, index) -> i32
      %4 = "tensor.extract"(%arg3, %0, %0) : (tensor<2x2xi32>, index, index) -> i32
      %5 = "arith.addi"(%3, %4) <{overflowFlags = #arith_overflowpolicywrap}> : (i32, i32) -> i32
      %6 = "tensor.insert"(%5, %arg2, %0, %0) : (i32, tensor<2x2xi32>, index, index) -> tensor<2x2xi32>
      %7 = "tensor.extract"(%arg2, %0, %1) : (tensor<2x2xi32>, index, index) -> i32
      %8 = "tensor.extract"(%arg3, %0, %1) : (tensor<2x2xi32>, index, index) -> i32
      %9 = "arith.addi"(%7, %8) <{overflowFlags = #arith_overflowpolicywrap}> : (i32, i32) -> i32
      %10 = "tensor.insert"(%9, %6, %0, %1) : (i32, tensor<2x2xi32>, index, index) -> tensor<2x2xi32>
      %11 = "tensor.extract"(%arg2, %1, %0) : (tensor<2x2xi32>, index, index) -> i32
      %12 = "tensor.extract"(%arg3, %1, %0) : (tensor<2x2xi32>, index, index) -> i32
      %13 = "arith.addi"(%11, %12) <{overflowFlags = #arith_overflowpolicywrap}> : (i32, i32) -> i32
      %14 = "tensor.insert"(%13, %10, %1, %0) : (i32, tensor<2x2xi32>, index, index) -> tensor<2x2xi32>
      %15 = "tensor.extract"(%arg2, %1, %1) : (tensor<2x2xi32>, index, index) -> i32
      %16 = "tensor.extract"(%arg3, %1, %1) : (tensor<2x2xi32>, index, index) -> i32
      %17 = "arith.addi"(%15, %16) <{overflowFlags = #arith_overflowpolicywrap}> : (i32, i32) -> i32
      %18 = "tensor.insert"(%17, %14, %1, %1) : (i32, tensor<2x2xi32>, index, index) -> tensor<2x2xi32>
      "secret.yield"(%18) : (tensor<2x2xi32>) -> ()
    }) : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    "func.return"(%2) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()