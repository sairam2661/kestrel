"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x5xi8>, tensor<513xi8>) -> (), sym_name = "test_table"}> ({
  ^bb0(%arg0: tensor<4x5xi8>, %arg1: tensor<513xi8>):
    %0 = "tosa.table"(%arg0, %arg1) : (tensor<4x5xi8>, tensor<513xi8>) -> tensor<?x?xi8>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

