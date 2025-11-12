"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3xi8>, tensor<3xi8>, tensor<3xi8>) -> tensor<3xi8>, sym_name = "tensor_complexity"}> ({
  ^bb0(%arg0: tensor<3xi8>, %arg1: tensor<3xi8>, %arg2: tensor<3xi8>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "tensor.extract"(%arg0, %0) : (tensor<3xi8>, index) -> i8
    %4 = "tensor.extract"(%arg1, %0) : (tensor<3xi8>, index) -> i8
    %5 = "arith.addi"(%3, %4) <{overflowFlags = #arith_overflowedne}> : (i8, i8) -> i8
    %6 = "tensor.insert"(%5, %arg2, %0) : (i8, tensor<3xi8>, index) -> tensor<3xi8>
    %7 = "tensor.extract"(%arg0, %1) : (tensor<3xi8>, index) -> i8
    %8 = "tensor.extract"(%arg1, %1) : (tensor<3xi8>, index) -> i8
    %9 = "arith.muli"(%7, %8) <{overflowFlags = #arith_overflowedne}> : (i8, i8) -> i8
    %10 = "tensor.insert"(%9, %6, %1) : (i8, tensor<3xi8>, index) -> tensor<3xi8>
    %11 = "tensor.extract"(%arg0, %2) : (tensor<3xi8>, index) -> i8
    %12 = "tensor.extract"(%arg1, %2) : (tensor<3xi8>, index) -> i8
    %13 = "arith.subi"(%11, %12) <{overflowFlags = #arith_overflowedne}> : (i8, i8) -> i8
    %14 = "tensor.insert"(%13, %10, %2) : (i8, tensor<3xi8>, index) -> tensor<3xi8>
    "func.return"(%14) : (tensor<3xi8>) -> ()
  }) : () -> ()
}) : () -> ()