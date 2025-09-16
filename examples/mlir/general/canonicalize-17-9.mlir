"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?xi32>) -> tensor<?x8xi32>, sym_name = "tensor.cast_chain_keep"}> ({
  ^bb0(%arg0: tensor<?x?xi32>):
    %0 = "tensor.cast"(%arg0) : (tensor<?x?xi32>) -> tensor<4x?xi32>
    %1 = "tensor.cast"(%0) : (tensor<4x?xi32>) -> tensor<?x8xi32>
    "func.return"(%1) : (tensor<?x8xi32>) -> ()
  }) : () -> ()
}) : () -> ()

