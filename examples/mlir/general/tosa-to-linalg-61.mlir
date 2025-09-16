"builtin.module"() ({
  "func.func"() <{function_type = (tensor<6xi8>, tensor<?xi8>) -> (), sym_name = "table8_dyn_table"}> ({
  ^bb0(%arg0: tensor<6xi8>, %arg1: tensor<?xi8>):
    %0 = "tosa.table"(%arg0, %arg1) : (tensor<6xi8>, tensor<?xi8>) -> tensor<6xi8>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

