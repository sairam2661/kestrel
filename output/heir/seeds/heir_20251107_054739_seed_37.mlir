"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi1>, tensor<4xi1>) -> tensor<4xi1>, sym_name = "truth_table_combinations"}> ({
  ^bb0(%arg0: tensor<4xi1>, %arg1: tensor<4xi1>):
    %0 = "comb.truth_table"(%arg0, %arg1) <{function = "xor"}> : (tensor<4xi1>, tensor<4xi1>) -> tensor<4xi1>
    %1 = "comb.truth_table"(%0, %arg0) <{function = "and"}> : (tensor<4xi1>, tensor<4xi1>) -> tensor<4xi1>
    %2 = "comb.truth_table"(%1, %arg1) <{function = "or"}> : (tensor<4xi1>, tensor<4xi1>) -> tensor<4xi1>
    %3 = "comb.truth_table"(%2, %arg0) <{function = "xor"}> : (tensor<4xi1>, tensor<4xi1>) -> tensor<4xi1>
    %4 = "comb.truth_table"(%3, %arg1) <{function = "and"}> : (tensor<4xi1>, tensor<4xi1>) -> tensor<4xi1>
    %5 = "comb.truth_table"(%4, %arg0) <{function = "or"}> : (tensor<4xi1>, tensor<4xi1>) -> tensor<4xi1>
    %6 = "comb.truth_table"(%5, %arg1) <{function = "xor"}> : (tensor<4xi1>, tensor<4xi1>) -> tensor<4xi1>
    %7 = "comb.truth_table"(%6, %arg0) <{function = "and"}> : (tensor<4xi1>, tensor<4xi1>) -> tensor<4xi1>
    %8 = "comb.truth_table"(%7, %arg1) <{function = "or"}> : (tensor<4xi1>, tensor<4xi1>) -> tensor<4xi1>
    "func.return"(%8) : (tensor<4xi1>) -> ()
  }) : () -> ()
}) : () -> ()