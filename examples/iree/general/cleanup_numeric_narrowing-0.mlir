"builtin.module"() ({
  "util.func"() <{function_type = (tensor<5x3xf32>) -> tensor<5x3xf32>, sym_name = "remove_inferences", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: tensor<5x3xf32>):
    %0 = "util.numeric.optional_narrow"(%arg0) <{max_value = 5 : ui3, min_value = 5 : ui3, semantic_type = ui3}> : (tensor<5x3xf32>) -> tensor<5x3xf32>
    "util.return"(%0) : (tensor<5x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

