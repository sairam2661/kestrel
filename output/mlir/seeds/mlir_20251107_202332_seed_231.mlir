"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi8>) -> tensor<2x2xi8>, sym_name = "complex_tensor_op_chain"}> ({
  ^bb0(%arg0: tensor<2x2xi8>):
    %0 = "arith.constant"() <{value = 2 : i8}> : () -> i8
    %1 = "arith.constant"() <{value = 3 : i8}> : () -> i8
    %2 = "arith.addi"(%arg0, %0) : (tensor<2x2xi8>, i8) -> tensor<2x2xi8>
    %3 = "arith.addi"(%2, %1) : (tensor<2x2xi8>, i8) -> tensor<2x2xi8>
    "func.return"(%3) : (tensor<2x2xi8>) -> ()
  }) : () -> ()
}) : () -> ()