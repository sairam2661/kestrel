"builtin.module"() ({
  "util.func"() <{function_type = (tensor<1xf32>, i1, tensor<1xf32>) -> tensor<1xf32>, sym_name = "selectExpansion", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: tensor<1xf32>, %arg1: i1, %arg2: tensor<1xf32>):
    %0 = "arith.select"(%arg1, %arg0, %arg2) : (i1, tensor<1xf32>, tensor<1xf32>) -> tensor<1xf32>
    "util.return"(%0) : (tensor<1xf32>) -> ()
  }) : () -> ()
}) : () -> ()

