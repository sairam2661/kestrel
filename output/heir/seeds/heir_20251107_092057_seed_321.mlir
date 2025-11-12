"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecretensori16tensor1x8xi16, !secretsecretensori16tensor1x8xi16) -> !secretsecretensori16tensor1x8xi16, sym_name = "complex_op_combination"}> ({
  ^bb0(%arg0: !secretsecretensori16tensor1x8xi16, %arg1: !secretsecretensori16tensor1x8xi16):
    %0 = "arith.constant"() <{value = 0 : i16}> : () -> i16
    %1 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: tensor<1x8xi16>, %arg3: tensor<1x8xi16>):
      %2 = "comb.truth_table"() <{op_code = "and", inputs = ["%arg2", "%arg3"], result_type = tensor<1x8xi16>}> : () -> tensor<1x8xi16>
      %3 = "comb.truth_table"() <{op_code = "or", inputs = ["%arg2", "%arg3"], result_type = tensor<1x8xi16>}> : () -> tensor<1x8xi16>
      %4 = "comb.truth_table"() <{op_code = "xor", inputs = ["%arg2", "%arg3"], result_type = tensor<1x8xi16>}> : () -> tensor<1x8xi16>
      %5 = "comb.truth_table"() <{op_code = "nand", inputs = ["%arg2", "%arg3"], result_type = tensor<1x8xi16>}> : () -> tensor<1x8xi16>
      %6 = "comb.truth_table"() <{op_code = "nor", inputs = ["%arg2", "%arg3"], result_type = tensor<1x8xi16>}> : () -> tensor<1x8xi16>
      %7 = "comb.truth_table"() <{op_code = "xnor", inputs = ["%arg2", "%arg3"], result_type = tensor<1x8xi16>}> : () -> tensor<1x8xi16>
      %8 = "comb.truth_table"() <{op_code = "not", inputs = ["%arg2"], result_type = tensor<1x8xi16>}> : () -> tensor<1x8xi16>
      %9 = "comb.truth_table"() <{op_code = "not", inputs = ["%arg3"], result_type = tensor<1x8xi16>}> : () -> tensor<1x8xi16>
      %10 = "comb.truth_table"() <{op_code = "and", inputs = ["%8", "%9"], result_type = tensor<1x8xi16>}> : () -> tensor<1x8xi16>
      "secret.yield"(%10) : (tensor<1x8xi16>) -> ()
    }) : (!secretsecretensori16tensor1x8xi16, !secretsecretensori16tensor1x8xi16) -> !secretsecretensori16tensor1x8xi16
    "func.return"(%1) : (!secretsecretensori16tensor1x8xi16) -> ()
  }) : () -> ()
}) : () -> ()