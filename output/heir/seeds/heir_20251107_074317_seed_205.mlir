"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<2x3xi8>, sym_name = "tensor_insert_extract_test"}> ({
  ^bb0(%arg0: tensor<2x3xi8>, %arg1: tensor<2x3xi8>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 42 : i8}> : () -> i8
    %4 = "tensor.insert"(%3, %arg0, %0, %1) : (i8, tensor<2x3xi8>, index, index) -> tensor<2x3xi8>
    %5 = "tensor.insert"(%arg0, %4, %1, %2) : (tensor<2x3xi8>, tensor<2x3xi8>, index, index) -> tensor<2x3xi8>
    %6 = "tensor.extract"(%5, %1, %1) : (tensor<2x3xi8>, index, index) -> i8
    %7 = "arith.constant"() <{value = 1 : i8}> : () -> i8
    %8 = "arith.addi"(%6, %7) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %9 = "tensor.insert"(%8, %5, %0, %2) : (i8, tensor<2x3xi8>, index, index) -> tensor<2x3xi8>
    %10 = "tensor.extract"(%9, %1, %2) : (tensor<2x3xi8>, index, index) -> i8
    "func.return"(%10) : (i8) -> ()
  }) : () -> ()
}) : () -> ()