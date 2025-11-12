"builtin.module"() ({
  "util.func"() <{function_type = (tensor<?x8x8x3xf32>, tensor<?x8x8x3xf32>) -> (tensor<?x8x8x3xf32>, tensor<?x8x8x3xf32>), sym_name = "dynamicEntryWithoutIdentifiers", sym_visibility = "public", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg0: tensor<?x8x8x3xf32>, %arg1: tensor<?x8x8x3xf32>):
    %0 = "arith.addf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (tensor<?x8x8x3xf32>, tensor<?x8x8x3xf32>) -> tensor<?x8x8x3xf32>
    %1 = "arith.addf"(%0, %arg0) <{fastmath = #arith.fastmath<none>}> : (tensor<?x8x8x3xf32>, tensor<?x8x8x3xf32>) -> tensor<?x8x8x3xf32>
    "util.return"(%0, %1) : (tensor<?x8x8x3xf32>, tensor<?x8x8x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

