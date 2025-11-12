"builtin.module"() ({
  "util.func"() <{function_type = (tensor<1x1xf16>) -> tensor<2x2xf16>, sym_name = "map_scatter_all_unit", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: tensor<1x1xf16>):
    %0 = "tensor.empty"() : () -> tensor<2x2xf16>
    %1 = "iree_linalg_ext.map_scatter"(%arg0, %0) ({
    ^bb0(%arg1: index, %arg2: index):
      %2 = "arith.constant"() <{value = true}> : () -> i1
      "iree_linalg_ext.yield"(%arg1, %arg2, %2) : (index, index, i1) -> ()
    }) : (tensor<1x1xf16>, tensor<2x2xf16>) -> tensor<2x2xf16>
    "util.return"(%1) : (tensor<2x2xf16>) -> ()
  }) : () -> ()
}) : () -> ()

