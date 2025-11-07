"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (tensor<8xi16>) -> i16, sym_name = "add"}> ({
  ^bb0(%arg0: tensor<8xi16>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "tensor.extract"(%arg0, %0) : (tensor<8xi16>, index) -> i16
    "func.return"(%1) : (i16) -> ()
  }) : () -> ()
}) : () -> ()

