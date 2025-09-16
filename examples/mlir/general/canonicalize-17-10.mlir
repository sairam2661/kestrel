"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x8xi32>) -> tensor<8x4xi32>, sym_name = "tensor.cast_chain_invalid"}> ({
  ^bb0(%arg0: tensor<4x8xi32>):
    %0 = "tensor.cast"(%arg0) : (tensor<4x8xi32>) -> tensor<?x?xi32>
    %1 = "tensor.cast"(%0) : (tensor<?x?xi32>) -> tensor<8x4xi32>
    "func.return"(%1) : (tensor<8x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()

