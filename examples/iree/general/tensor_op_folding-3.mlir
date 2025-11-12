"builtin.module"() ({
  "util.func"() <{function_type = (tensor<5xi32>, tensor<6xi32>, !hal.fence) -> (tensor<5xi32>, tensor<6xi32>, tensor<5xi32>), sym_name = "DeduplicateTensorBarrierSources", sym_visibility = "public", tied_operands = [-1 : index, -1 : index, -1 : index]}> ({
  ^bb0(%arg0: tensor<5xi32>, %arg1: tensor<6xi32>, %arg2: !hal.fence):
    %0:3 = "hal.tensor.barrier"(%arg0, %arg1, %arg0, %arg2) : (tensor<5xi32>, tensor<6xi32>, tensor<5xi32>, !hal.fence) -> (tensor<5xi32>, tensor<6xi32>, tensor<5xi32>)
    "util.return"(%0#0, %0#1, %0#2) : (tensor<5xi32>, tensor<6xi32>, tensor<5xi32>) -> ()
  }) : () -> ()
}) : () -> ()

