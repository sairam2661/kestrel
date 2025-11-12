"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>, sym_name = "xor_combine"}> ({
  ^bb0(%arg0: tensor<4xi8>, %arg1: tensor<4xi8>):
    %0 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %4 = "tensor.extract"(%arg0, %0) : (tensor<4xi8>, i32) -> i8
    %5 = "tensor.extract"(%arg0, %1) : (tensor<4xi8>, i32) -> i8
    %6 = "tensor.extract"(%arg0, %2) : (tensor<4xi8>, i32) -> i8
    %7 = "tensor.extract"(%arg0, %3) : (tensor<4xi8>, i32) -> i8
    %8 = "tensor.extract"(%arg1, %0) : (tensor<4xi8>, i32) -> i8
    %9 = "tensor.extract"(%arg1, %1) : (tensor<4xi8>, i32) -> i8
    %10 = "tensor.extract"(%arg1, %2) : (tensor<4xi8>, i32) -> i8
    %11 = "tensor.extract"(%arg1, %3) : (tensor<4xi8>, i32) -> i8
    %12 = "arith.xori"(%4, %8) : (i8, i8) -> i8
    %13 = "arith.xori"(%5, %9) : (i8, i8) -> i8
    %14 = "arith.xori"(%6, %10) : (i8, i8) -> i8
    %15 = "arith.xori"(%7, %11) : (i8, i8) -> i8
    %16 = "tensor.insert"(%12, %arg0, %0) : (i8, tensor<4xi8>, i32) -> tensor<4xi8>
    %17 = "tensor.insert"(%13, %16, %1) : (i8, tensor<4xi8>, i32) -> tensor<4xi8>
    %18 = "tensor.insert"(%14, %17, %2) : (i8, tensor<4xi8>, i32) -> tensor<4xi8>
    %19 = "tensor.insert"(%15, %18, %3) : (i8, tensor<4xi8>, i32) -> tensor<4xi8>
    "func.return"(%19) : (tensor<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()