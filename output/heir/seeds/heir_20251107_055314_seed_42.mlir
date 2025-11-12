"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi1>, tensor<4xi1>) -> tensor<4xi1>, sym_name = "xor_tensors"}> ({
  ^bb0(%arg0: tensor<4xi1>, %arg1: tensor<4xi1>):
    %1 = "combinatorial.truth_table"(%arg0, %arg1) <{operation = "xor"}> : (tensor<4xi1>, tensor<4xi1>) -> tensor<4xi1>
    "func.return"(%1) : (tensor<4xi1>) -> ()
  }) : () -> ()
}) : () -> ()