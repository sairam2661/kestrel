"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x64xi8>, tensor<513xi8>) -> tensor<2x64xi8>, sym_name = "test_i8_table_size"}> ({
  ^bb0(%arg0: tensor<2x64xi8>, %arg1: tensor<513xi8>):
    %0 = "tosa.table"(%arg0, %arg1) : (tensor<2x64xi8>, tensor<513xi8>) -> tensor<2x64xi8>
    "func.return"(%0) : (tensor<2x64xi8>) -> ()
  }) : () -> ()
}) : () -> ()

