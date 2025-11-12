"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3xi8>, i1) -> tensor<3xi8>, sym_name = "fuzz_tensor_select"}> ({
  ^bb0(%arg0: tensor<3xi8>, %arg1: i1):
    %0 = "arith.constant"() <{value = 42 : i8}> : () -> i8
    %1 = "arith.constant"() <{value = 255 : i8}> : () -> i8
    %2 = "tensor.extract"(%arg0, %0) : (tensor<3xi8>, i8) -> i8
    %3 = "arith.select"(%arg1, %1, %2) : (i1, i8, i8) -> i8
    %4 = "tensor.insert"(%3, %arg0, %0) : (i8, tensor<3xi8>, i8) -> tensor<3xi8>
    "func.return"(%4) : (tensor<3xi8>) -> ()
  }) : () -> ()
}) : () -> ()