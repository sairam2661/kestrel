"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1xui8>, tensor<1xui8>) -> (tensor<1xui8>, tensor<1xui8>), sym_name = "test_unsigned_function_signature"}> ({
  ^bb0(%arg0: tensor<1xui8>, %arg1: tensor<1xui8>):
    "func.return"(%arg0, %arg1) : (tensor<1xui8>, tensor<1xui8>) -> ()
  }) : () -> ()
}) : () -> ()

