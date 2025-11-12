"builtin.module"() ({
  "func.func"() <{function_type = (tensor<i16>, tensor<i16>) -> tensor<i16>, sym_name = "bytewise_addition"}> ({
  ^bb0(%arg0: tensor<i16>, %arg1: tensor<i16>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<i16>, tensor<i16>) -> tensor<i16>
    "func.return"(%0) : (tensor<i16>) -> ()
  }) : () -> ()
}) : () -> ()