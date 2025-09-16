"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x64xi16>, tensor<256xi16>) -> tensor<2x64xi32>, sym_name = "test_i16_table_size"}> ({
  ^bb0(%arg0: tensor<2x64xi16>, %arg1: tensor<256xi16>):
    %0 = "tosa.table"(%arg0, %arg1) : (tensor<2x64xi16>, tensor<256xi16>) -> tensor<2x64xi32>
    "func.return"(%0) : (tensor<2x64xi32>) -> ()
  }) : () -> ()
}) : () -> ()

