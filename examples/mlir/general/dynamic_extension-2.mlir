"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x5xi8>, tensor<256xi8>) -> (), sym_name = "test_table_non_const"}> ({
  ^bb0(%arg0: tensor<4x5xi8>, %arg1: tensor<256xi8>):
    %0 = "tosa.table"(%arg0, %arg1) : (tensor<4x5xi8>, tensor<256xi8>) -> tensor<4x5xi8>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

