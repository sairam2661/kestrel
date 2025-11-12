"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x32xf32>, tensor<64x256xf32>) -> tensor<64x256xf32>, sym_name = "map_scatter"}> ({
  ^bb0(%arg0: tensor<2x32xf32>, %arg1: tensor<64x256xf32>):
    %0 = "arith.constant"() <{value = true}> : () -> i1
    %1 = "iree_linalg_ext.map_scatter"(%arg0, %arg1) ({
    ^bb0(%arg2: index, %arg3: index):
      "iree_linalg_ext.yield"(%arg2, %arg3, %0) : (index, index, i1) -> ()
    }) : (tensor<2x32xf32>, tensor<64x256xf32>) -> tensor<64x256xf32>
    "func.return"(%1) : (tensor<64x256xf32>) -> ()
  }) : () -> ()
}) : () -> ()

