"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>, sym_name = "tensor_xor"}> ({
  ^bb0(%arg0: tensor<4xi8>, %arg1: tensor<4xi8>):
    %0 = "arith.constant"() <{value = true}> : () -> i1
    %1 = "arith.constant"() <{value = false}> : () -> i1
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    %3 = "arith.constant"() <{value = 1 : index}> : () -> index
    %4 = "arith.constant"() <{value = 2 : index}> : () -> index
    %5 = "arith.constant"() <{value = 3 : index}> : () -> index
    %6 = "tensor.extract"(%arg0, %2) : (tensor<4xi8>, index) -> i8
    %7 = "tensor.extract"(%arg1, %2) : (tensor<4xi8>, index) -> i8
    %8 = "arith.xori"(%6, %7) : (i8, i8) -> i8
    %9 = "tensor.extract"(%arg0, %3) : (tensor<4xi8>, index) -> i8
    %10 = "tensor.extract"(%arg1, %3) : (tensor<4xi8>, index) -> i8
    %11 = "arith.xori"(%9, %10) : (i8, i8) -> i8
    %12 = "tensor.extract"(%arg0, %4) : (tensor<4xi8>, index) -> i8
    %13 = "tensor.extract"(%arg1, %4) : (tensor<4xi8>, index) -> i8
    %14 = "arith.xori"(%12, %13) : (i8, i8) -> i8
    %15 = "tensor.extract"(%arg0, %5) : (tensor<4xi8>, index) -> i8
    %16 = "tensor.extract"(%arg1, %5) : (tensor<4xi8>, index) -> i8
    %17 = "arith.xori"(%15, %16) : (i8, i8) -> i8
    %18 = "tensor.insert"(%8, %arg0, %2) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
    %19 = "tensor.insert"(%11, %18, %3) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
    %20 = "tensor.insert"(%14, %19, %4) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
    %21 = "tensor.insert"(%17, %20, %5) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
    "func.return"(%21) : (tensor<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()