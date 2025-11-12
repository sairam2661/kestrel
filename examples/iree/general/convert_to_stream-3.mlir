"builtin.module"() ({
  "util.func"() <{function_type = (i1, tensor<1024xf32>, tensor<1024xf32>) -> tensor<1024xf32>, sym_name = "unrealizedCastCleanup", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: i1, %arg1: tensor<1024xf32>, %arg2: tensor<1024xf32>):
    %0 = "arith.select"(%arg0, %arg1, %arg2) : (i1, tensor<1024xf32>, tensor<1024xf32>) -> tensor<1024xf32>
    "util.return"(%0) : (tensor<1024xf32>) -> ()
  }) : () -> ()
}) : () -> ()

