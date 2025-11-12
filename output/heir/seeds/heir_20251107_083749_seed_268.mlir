"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi8>, tensor<4x4xi8>) -> tensor<4x4xi16>, sym_name = "tensor_multiply_and_add"}> ({
  ^bb0(%arg0: tensor<4x4xi8>, %arg1: tensor<4x4xi8>):
    %0 = "tensor.extract"(%arg0, %c0, %c0) : (tensor<4x4xi8>, index, index) -> i8
    %1 = "tensor.extract"(%arg1, %c0, %c0) : (tensor<4x4xi8>, index, index) -> i8
    %2 = "arith.muli"(%0, %1) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %3 = "arith.constant"() <{value = 10 : i8}> : () -> i8
    %4 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %5 = "tensor.insert"(%4, %arg0, %c0, %c0) : (i8, tensor<4x4xi8>, index, index) -> tensor<4x4xi8>
    %6 = "tensor.extract"(%5, %c1, %c1) : (tensor<4x4xi8>, index, index) -> i8
    %7 = "tensor.extract"(%arg1, %c1, %c1) : (tensor<4x4xi8>, index, index) -> i8
    %8 = "arith.muli"(%6, %7) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %9 = "arith.addi"(%8, %3) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %10 = "tensor.insert"(%9, %5, %c1, %c1) : (i8, tensor<4x4xi8>, index, index) -> tensor<4x4xi8>
    %11 = "tensor.extract"(%10, %c2, %c2) : (tensor<4x4xi8>, index, index) -> i8
    %12 = "tensor.extract"(%arg1, %c2, %c2) : (tensor<4x4xi8>, index, index) -> i8
    %13 = "arith.muli"(%11, %12) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %14 = "arith.addi"(%13, %3) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %15 = "tensor.insert"(%14, %10, %c2, %c2) : (i8, tensor<4x4xi8>, index, index) -> tensor<4x4xi8>
    %16 = "tensor.extract"(%15, %c3, %c3) : (tensor<4x4xi8>, index, index) -> i8
    %17 = "tensor.extract"(%arg1, %c3, %c3) : (tensor<4x4xi8>, index, index) -> i8
    %18 = "arith.muli"(%16, %17) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %19 = "arith.addi"(%18, %3) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %20 = "tensor.insert"(%19, %15, %c3, %c3) : (i8, tensor<4x4xi8>, index, index) -> tensor<4x4xi8>
    %21 = "func.call"() <{callee = "cast_to_i16"}> : (tensor<4x4xi8>) -> tensor<4x4xi16>
    "func.return"(%21) : (tensor<4x4xi16>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<4x4xi8>) -> tensor<4x4xi16>, sym_name = "cast_to_i16"}> ({
  ^bb0(%arg0: tensor<4x4xi8>):
    %0 = "tensor.cast"(%arg0) <{resultType = tensor<4x4xi16>}> : (tensor<4x4xi8>) -> tensor<4x4xi16>
    "func.return"(%0) : (tensor<4x4xi16>) -> ()
  }) : () -> ()
}) : () -> ()