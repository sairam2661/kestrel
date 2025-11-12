"builtin.module"() ({
  "util.func"() <{function_type = (index, index) -> (tensor<?x?x42xi32>, tensor<?x42x?xf32>), sym_name = "return_zero_init", sym_visibility = "public", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "tensor.empty"(%arg0, %arg1) : (index, index) -> tensor<?x?x42xi32>
    %1 = "tensor.empty"(%arg1, %arg0) : (index, index) -> tensor<?x42x?xf32>
    "util.return"(%0, %1) : (tensor<?x?x42xi32>, tensor<?x42x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

