"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xi8>, tensor<512xi8>) -> (), sym_name = "table8_dyn"}> ({
  ^bb0(%arg0: tensor<?xi8>, %arg1: tensor<512xi8>):
    %0 = "tosa.table"(%arg0, %arg1) : (tensor<?xi8>, tensor<512xi8>) -> tensor<?xi8>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

