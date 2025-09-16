"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x1x1x1x1x64xi16>, tensor<513xi16>) -> tensor<1x1x1x1x1x1x64xi32>, sym_name = "test_table_rank_invalid"}> ({
  ^bb0(%arg0: tensor<1x1x1x1x1x1x64xi16>, %arg1: tensor<513xi16>):
    %0 = "tosa.table"(%arg0, %arg1) : (tensor<1x1x1x1x1x1x64xi16>, tensor<513xi16>) -> tensor<1x1x1x1x1x1x64xi32>
    "func.return"(%0) : (tensor<1x1x1x1x1x1x64xi32>) -> ()
  }) : () -> ()
}) : () -> ()

