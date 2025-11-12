"builtin.module"() ({
  "util.func"() <{function_type = (tensor<?x4xf32>) -> tensor<?x4xf32>, sym_name = "tensorCloneDynamic", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: tensor<?x4xf32>):
    %0 = "arith.constant"() <{value = 4 : index}> : () -> index
    %1 = "flow.tensor.clone"(%arg0, %0) : (tensor<?x4xf32>, index) -> tensor<?x4xf32>
    "util.return"(%1) : (tensor<?x4xf32>) -> ()
  }) : () -> ()
}) : () -> ()

