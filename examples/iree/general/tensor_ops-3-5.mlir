"builtin.module"() ({
  "util.func"() <{function_type = (tensor<3xf32>, tensor<4xf32>, !hal.fence) -> (tensor<3xf32>, tensor<4xf32>), sym_name = "tensorBarrier", sym_visibility = "public", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg0: tensor<3xf32>, %arg1: tensor<4xf32>, %arg2: !hal.fence):
    %0:2 = "hal.tensor.barrier"(%arg0, %arg1, %arg2) : (tensor<3xf32>, tensor<4xf32>, !hal.fence) -> (tensor<3xf32>, tensor<4xf32>)
    "util.return"(%0#0, %0#1) : (tensor<3xf32>, tensor<4xf32>) -> ()
  }) : () -> ()
}) : () -> ()

