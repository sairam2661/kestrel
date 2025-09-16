"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x5xi16>, tensor<513xi16>) -> (), sym_name = "test_table"}> ({
  ^bb0(%arg0: tensor<4x5xi16>, %arg1: tensor<513xi16>):
    %0 = "tosa.table"(%arg0, %arg1) : (tensor<4x5xi16>, tensor<513xi16>) -> tensor<?x?xi32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

