"builtin.module"() ({
  "func.func"() <{function_type = (tensor<i1>, tensor<?xui16>, tensor<?xui16>) -> tensor<?xui16>, sym_name = "select_conversion"}> ({
  ^bb0(%arg0: tensor<i1>, %arg1: tensor<?xui16>, %arg2: tensor<?xui16>):
    %0 = "tensor.extract"(%arg0) : (tensor<i1>) -> i1
    %1 = "arith.select"(%0, %arg1, %arg2) : (i1, tensor<?xui16>, tensor<?xui16>) -> tensor<?xui16>
    "func.return"(%1) : (tensor<?xui16>) -> ()
  }) : () -> ()
}) : () -> ()

