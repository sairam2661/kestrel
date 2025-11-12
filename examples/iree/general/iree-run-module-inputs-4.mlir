"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi16>, tensor<3xi8>) -> (tensor<2xi16>, tensor<3xi8>), sym_name = "small_buffers"}> ({
  ^bb0(%arg0: tensor<2xi16>, %arg1: tensor<3xi8>):
    "func.return"(%arg0, %arg1) : (tensor<2xi16>, tensor<3xi8>) -> ()
  }) : () -> ()
}) : () -> ()

