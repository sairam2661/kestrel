"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x16x64xf32>, tensor<4x16x64xf32>) -> tensor<4x16x64xf32>, sym_name = "map_scatter"}> ({
  ^bb0(%arg0: tensor<4x16x64xf32>, %arg1: tensor<4x16x64xf32>):
    %0 = "iree_linalg_ext.map_scatter"(%arg0, %arg1) ({
    ^bb0(%arg2: index, %arg3: index, %arg4: index):
      %1 = "arith.constant"() <{value = true}> : () -> i1
      "iree_linalg_ext.yield"(%arg2, %arg3, %arg4, %1) : (index, index, index, i1) -> ()
    }) : (tensor<4x16x64xf32>, tensor<4x16x64xf32>) -> tensor<4x16x64xf32>
    "func.return"(%0) : (tensor<4x16x64xf32>) -> ()
  }) : () -> ()
}) : () -> ()

