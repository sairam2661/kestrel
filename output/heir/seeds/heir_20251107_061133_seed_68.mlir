"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>, sym_name = "tensor_xor"}> ({
  ^bb0(%arg0: tensor<4xi8>, %arg1: tensor<4xi8>):
    %0 = "tensor.extract"(%arg0, 0) : (tensor<4xi8>, index) -> i8
    %1 = "tensor.extract"(%arg1, 0) : (tensor<4xi8>, index) -> i8
    %2 = "arith.xori"(%0, %1) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %3 = "tensor.insert"(%2, %arg0, 0) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
    %4 = "tensor.extract"(%arg0, 1) : (tensor<4xi8>, index) -> i8
    %5 = "tensor.extract"(%arg1, 1) : (tensor<4xi8>, index) -> i8
    %6 = "arith.xori"(%4, %5) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %7 = "tensor.insert"(%6, %3, 1) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
    %8 = "tensor.extract"(%arg0, 2) : (tensor<4xi8>, index) -> i8
    %9 = "tensor.extract"(%arg1, 2) : (tensor<4xi8>, index) -> i8
    %10 = "arith.xori"(%8, %9) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %11 = "tensor.insert"(%10, %7, 2) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
    %12 = "tensor.extract"(%arg0, 3) : (tensor<4xi8>, index) -> i8
    %13 = "tensor.extract"(%arg1, 3) : (tensor<4xi8>, index) -> i8
    %14 = "arith.xori"(%12, %13) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %15 = "tensor.insert"(%14, %11, 3) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
    "func.return"(%15) : (tensor<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()