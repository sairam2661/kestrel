"builtin.module"() ({
  "util.func"() <{function_type = (i1, tensor<1xf32>, tensor<1xf32>) -> tensor<1xf32>, sym_name = "scfIfExpansion", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: i1, %arg1: tensor<1xf32>, %arg2: tensor<1xf32>):
    %0 = "scf.if"(%arg0) ({
      "scf.yield"(%arg1) : (tensor<1xf32>) -> ()
    }, {
      "scf.yield"(%arg2) : (tensor<1xf32>) -> ()
    }) : (i1) -> tensor<1xf32>
    "util.return"(%0) : (tensor<1xf32>) -> ()
  }) : () -> ()
}) : () -> ()

