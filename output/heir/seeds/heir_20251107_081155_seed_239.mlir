"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>, sym_name = "tensor_mixer"}> ({
  ^bb0(%arg0: tensor<4xi8>, %arg1: tensor<4xi8>):
    %0 = "arith.constant"() <{value = 1 : i8}> : () -> i8
    %1 = "tensor.extract"(%arg0, %0) : (tensor<4xi8>, i8) -> i8
    %2 = "tensor.extract"(%arg1, %0) : (tensor<4xi8>, i8) -> i8
    %3 = "arith.muli"(%1, %2) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %4 = "arith.constant"() <{value = 2 : i8}> : () -> i8
    %5 = "tensor.extract"(%arg0, %4) : (tensor<4xi8>, i8) -> i8
    %6 = "tensor.extract"(%arg1, %4) : (tensor<4xi8>, i8) -> i8
    %7 = "arith.addi"(%5, %6) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %8 = "arith.constant"() <{value = 3 : i8}> : () -> i8
    %9 = "tensor.extract"(%arg0, %8) : (tensor<4xi8>, i8) -> i8
    %10 = "tensor.extract"(%arg1, %8) : (tensor<4xi8>, i8) -> i8
    %11 = "arith.mulf"(%9, %10) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %12 = "arith.select"(%11, %3, %7) : (i8, i8, i8) -> i8
    %13 = "tensor.insert"(%12, %arg0, %0) : (i8, tensor<4xi8>, i8) -> tensor<4xi8>
    "func.return"(%13) : (tensor<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()