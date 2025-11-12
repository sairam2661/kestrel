"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3xi8>) -> tensor<3xi8>, sym_name = "tensor_insert_extract_test"}> ({
  ^bb0(%arg0: tensor<3xi8>):
    %0 = "arith.constant"() <{value = 42 : i8}> : () -> i8
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "tensor.insert"(%0, %arg0, %1) : (i8, tensor<3xi8>, index) -> tensor<3xi8>
    %3 = "tensor.extract"(%2, %1) : (tensor<3xi8>, index) -> i8
    %4 = "arith.addi"(%3, %0) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %5 = "tensor.insert"(%4, %2, %1) : (i8, tensor<3xi8>, index) -> tensor<3xi8>
    "func.return"(%5) : (tensor<3xi8>) -> ()
  }) : () -> ()
}) : () -> ()