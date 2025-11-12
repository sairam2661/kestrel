"builtin.module"() ({
  "func.func"() <{function_type = (tensor<64xf32>, tensor<63xf32>) -> tensor<63xf32>, sym_name = "map_scatter_output_sliced"}> ({
  ^bb0(%arg0: tensor<64xf32>, %arg1: tensor<63xf32>):
    %0 = "iree_linalg_ext.map_scatter"(%arg0, %arg1) ({
    ^bb0(%arg2: index):
      %1 = "arith.constant"() <{value = 63 : index}> : () -> index
      %2 = "arith.cmpi"(%arg2, %1) <{predicate = 9 : i64}> : (index, index) -> i1
      "iree_linalg_ext.yield"(%arg2, %2) : (index, i1) -> ()
    }) : (tensor<64xf32>, tensor<63xf32>) -> tensor<63xf32>
    "func.return"(%0) : (tensor<63xf32>) -> ()
  }) : () -> ()
}) : () -> ()

