"builtin.module"() ({
  "util.func"() <{function_type = (!flow.channel, tensor<2304xf32>) -> tensor<2304xf32>, sym_name = "all_reduce_sum", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !flow.channel, %arg1: tensor<2304xf32>):
    %0 = "flow.tensor.empty"() : () -> tensor<2304xf32>
    %1 = "flow.collective.all_reduce"(%0, %arg1, %arg0) <{element_type = 9 : i32, reduction_op = 1 : i32, tied_operands = [-1 : index]}> : (tensor<2304xf32>, tensor<2304xf32>, !flow.channel) -> tensor<2304xf32>
    "util.return"(%1) : (tensor<2304xf32>) -> ()
  }) : () -> ()
}) : () -> ()

