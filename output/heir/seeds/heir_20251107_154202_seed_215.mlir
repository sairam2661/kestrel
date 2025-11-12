"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {secret.secret}], function_type = (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>, sym_name = "xor"}> ({
  ^bb0(%arg0: tensor<4xi8>, %arg1: tensor<4xi8>):
    %0 = "arith.constant"() <{value = 255 : i8}> : () -> i8
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "tensor.extract"(%arg0, %1) : (tensor<4xi8>, index) -> i8
    %3 = "tensor.extract"(%arg1, %1) : (tensor<4xi8>, index) -> i8
    %4 = "arith.xori"(%2, %3) : (i8, i8) -> i8
    %5 = "tensor.insert"(%4, %arg0, %1) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
    %6 = "arith.constant"() <{value = 1 : index}> : () -> index
    %7 = "tensor.extract"(%arg0, %6) : (tensor<4xi8>, index) -> i8
    %8 = "tensor.extract"(%arg1, %6) : (tensor<4xi8>, index) -> i8
    %9 = "arith.xori"(%7, %8) : (i8, i8) -> i8
    %10 = "tensor.insert"(%9, %5, %6) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
    %11 = "arith.constant"() <{value = 2 : index}> : () -> index
    %12 = "tensor.extract"(%arg0, %11) : (tensor<4xi8>, index) -> i8
    %13 = "tensor.extract"(%arg1, %11) : (tensor<4xi8>, index) -> i8
    %14 = "arith.xori"(%12, %13) : (i8, i8) -> i8
    %15 = "tensor.insert"(%14, %10, %11) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
    %16 = "arith.constant"() <{value = 3 : index}> : () -> index
    %17 = "tensor.extract"(%arg0, %16) : (tensor<4xi8>, index) -> i8
    %18 = "tensor.extract"(%arg1, %16) : (tensor<4xi8>, index) -> i8
    %19 = "arith.xori"(%17, %18) : (i8, i8) -> i8
    %20 = "tensor.insert"(%19, %15, %16) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
    "func.return"(%20) : (tensor<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()