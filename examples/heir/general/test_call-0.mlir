"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {}], function_type = (tensor<8xi16>, tensor<8xi16>) -> i16, sym_name = "dot_product"}> ({
  ^bb0(%arg2: tensor<8xi16>, %arg3: tensor<8xi16>):
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "tensor.extract"(%arg2, %1) : (tensor<8xi16>, index) -> i16
    "func.return"(%2) : (i16) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<8xi16>, tensor<8xi16>) -> (), sym_name = "test_dot_product"}> ({
  ^bb0(%arg0: tensor<8xi16>, %arg1: tensor<8xi16>):
    %0 = "func.call"(%arg0, %arg1) <{callee = @dot_product}> : (tensor<8xi16>, tensor<8xi16>) -> i16
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

