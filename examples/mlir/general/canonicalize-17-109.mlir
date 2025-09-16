"builtin.module"() ({
  "func.func"() <{function_type = () -> index, sym_name = "fold_rank"}> ({
    %0 = "arith.constant"() <{value = dense<[[[1, -2, 1, 36]], [[0, 2, -1, 64]]]> : tensor<2x1x4xi32>}> : () -> tensor<2x1x4xi32>
    %1 = "tensor.rank"(%0) : (tensor<2x1x4xi32>) -> index
    "func.return"(%1) : (index) -> ()
  }) : () -> ()
}) : () -> ()

