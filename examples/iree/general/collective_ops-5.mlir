"builtin.module"() ({
  "util.func"() <{function_type = (!flow.channel, tensor<1024xf32>) -> tensor<1024xf32>, sym_name = "all_to_all", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !flow.channel, %arg1: tensor<1024xf32>):
    %0 = "flow.tensor.empty"() : () -> tensor<1024xf32>
    %1 = "flow.collective.all_to_all"(%0, %arg1, %arg0) <{element_type = 9 : i32, tied_operands = [-1 : index]}> : (tensor<1024xf32>, tensor<1024xf32>, !flow.channel) -> tensor<1024xf32>
    "util.return"(%1) : (tensor<1024xf32>) -> ()
  }) : () -> ()
}) : () -> ()

