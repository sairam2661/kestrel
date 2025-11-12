"builtin.module"() ({
  "util.func"() <{function_type = (tensor<?x?xf32>) -> tensor<?x?xi32>, sym_name = "dynamic_tensor_bitcast", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: tensor<?x?xf32>):
    %0 = "tensor.bitcast"(%arg0) : (tensor<?x?xf32>) -> tensor<?x?xi32>
    "util.return"(%0) : (tensor<?x?xi32>) -> ()
  }) : () -> ()
}) : () -> ()

