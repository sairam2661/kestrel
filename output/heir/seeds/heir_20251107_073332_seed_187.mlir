"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>, sym_name = "complex_rotations"}> ({
  ^bb0(%arg0: tensor<4xi8>, %arg1: tensor<4xi8>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 9 : index}> : () -> index
    %5 = "tensor.extract"(%arg0, %0) : (tensor<4xi8>, index) -> i8
    %6 = "tensor.extract"(%arg0, %1) : (tensor<4xi8>, index) -> i8
    %7 = "tensor.extract"(%arg0, %2) : (tensor<4xi8>, index) -> i8
    %8 = "tensor.extract"(%arg0, %3) : (tensor<4xi8>, index) -> i8
    %9 = "tensor.extract"(%arg1, %0) : (tensor<4xi8>, index) -> i8
    %10 = "tensor.extract"(%arg1, %1) : (tensor<4xi8>, index) -> i8
    %11 = "tensor.extract"(%arg1, %2) : (tensor<4xi8>, index) -> i8
    %12 = "tensor.extract"(%arg1, %3) : (tensor<4xi8>, index) -> i8
    %13 = "arith.addi"(%5, %9) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %14 = "arith.addi"(%6, %10) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %15 = "arith.addi"(%7, %11) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %16 = "arith.addi"(%8, %12) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %17 = "tensor_ext.rotate"(%arg0, %1) : (tensor<4xi8>, index) -> tensor<4xi8>
    %18 = "tensor_ext.rotate"(%arg1, %2) : (tensor<4xi8>, index) -> tensor<4xi8>
    %19 = "arith.addi"(%13, %14) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %20 = "arith.addi"(%15, %16) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %21 = "tensor_ext.rotate"(%17, %3) : (tensor<4xi8>, index) -> tensor<4xi8>
    %22 = "tensor_ext.rotate"(%18, %0) : (tensor<4xi8>, index) -> tensor<4xi8>
    %23 = "arith.addi"(%19, %20) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %24 = "tensor_ext.rotate"(%21, %4) : (tensor<4xi8>, index) -> tensor<4xi8>
    %25 = "tensor_ext.rotate"(%22, %4) : (tensor<4xi8>, index) -> tensor<4xi8>
    %26 = "arith.addi"(%23, %23) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %27 = "tensor.insert"(%26, %24, %0) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
    %28 = "tensor.insert"(%23, %25, %1) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
    "func.return"(%28) : (tensor<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()