"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (tensor<8xi16>) -> tensor<8xi16>, sym_name = "pointwise"}> ({
  ^bb0(%arg2: tensor<8xi16>):
    "func.return"(%arg2) : (tensor<8xi16>) -> ()
  }) : () -> ()
  "func.func"() <{arg_attrs = [{secret.secret}, {}], function_type = (tensor<8xi16>, tensor<8xi16>) -> i16, sym_name = "dot_product"}> ({
  ^bb0(%arg0: tensor<8xi16>, %arg1: tensor<8xi16>):
    %0 = "func.call"(%arg0) <{callee = @pointwise}> : (tensor<8xi16>) -> tensor<8xi16>
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "tensor.extract"(%0, %1) : (tensor<8xi16>, index) -> i16
    "func.return"(%2) : (i16) -> ()
  }) : () -> ()
}) : () -> ()

