"builtin.module"() ({
  "util.func"() <{function_type = (!flow.channel, tensor<1024xf32>, index, index) -> tensor<1024xf32>, sym_name = "send_recv", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !flow.channel, %arg1: tensor<1024xf32>, %arg2: index, %arg3: index):
    %0 = "flow.tensor.empty"() : () -> tensor<1024xf32>
    %1 = "flow.collective.send_recv"(%0, %arg1, %arg0, %arg2, %arg3) <{element_type = 9 : i32, tied_operands = [-1 : index]}> : (tensor<1024xf32>, tensor<1024xf32>, !flow.channel, index, index) -> tensor<1024xf32>
    "util.return"(%1) : (tensor<1024xf32>) -> ()
  }) : () -> ()
}) : () -> ()

