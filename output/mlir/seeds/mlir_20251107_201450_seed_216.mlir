"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi8>, tensor<2xi8>) -> tensor<2xi1>, sym_name = "xorOperation", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<2xi8>, %arg1: tensor<2xi8>):
    %0 = "arith.cmpi"(%arg0, %arg1, "ne") : (tensor<2xi8>, tensor<2xi8>) -> tensor<2xi1>
    "func.return"(%0) : (tensor<2xi1>) -> ()
  }) : () -> ()
}) : () -> ()