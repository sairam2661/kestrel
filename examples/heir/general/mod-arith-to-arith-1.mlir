"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>, sym_name = "test_lower_subifge"}> ({
  ^bb0(%arg0: tensor<4xi8>, %arg1: tensor<4xi8>):
    %0 = "mod_arith.subifge"(%arg0, %arg1) : (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>
    "func.return"(%0) : (tensor<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()

