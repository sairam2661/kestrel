"builtin.module"() ({
  "util.func"() <{function_type = (tensor<?xi32>) -> (), sym_name = "invalidTensorDim", sym_visibility = "public"}> ({
  ^bb0(%arg0: tensor<?xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "tensor.dim"(%arg0, %0) : (tensor<?xi32>, index) -> index
    %2 = "util.optimization_barrier"(%1) : (index) -> index
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

