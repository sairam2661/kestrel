"builtin.module"() ({
  "func.func"() <{function_type = (tensor<100x250xi32>) -> tensor<100x250xi32>, sym_name = "map_scatter"}> ({
  ^bb0(%arg0: tensor<100x250xi32>):
    %0 = "tensor.empty"() : () -> tensor<100x250xi32>
    %1 = "iree_linalg_ext.map_scatter"(%arg0, %0) ({
    ^bb0(%arg1: index, %arg2: index):
      %2 = "arith.constant"() <{value = true}> : () -> i1
      "iree_linalg_ext.yield"(%arg1, %arg2, %2) : (index, index, i1) -> ()
    }) : (tensor<100x250xi32>, tensor<100x250xi32>) -> tensor<100x250xi32>
    "func.return"(%1) : (tensor<100x250xi32>) -> ()
  }) : () -> ()
}) : () -> ()

