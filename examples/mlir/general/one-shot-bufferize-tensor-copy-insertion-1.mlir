"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xf32>, tensor<?xf32>, index, index, index) -> (tensor<?xf32>, tensor<?xf32>), sym_name = "scf_for_swapping_yields"}> ({
  ^bb0(%arg0: tensor<?xf32>, %arg1: tensor<?xf32>, %arg2: index, %arg3: index, %arg4: index):
    %0:2 = "scf.for"(%arg2, %arg3, %arg4, %arg0, %arg1) ({
    ^bb0(%arg5: index, %arg6: tensor<?xf32>, %arg7: tensor<?xf32>):
      "scf.yield"(%arg7, %arg6) : (tensor<?xf32>, tensor<?xf32>) -> ()
    }) : (index, index, index, tensor<?xf32>, tensor<?xf32>) -> (tensor<?xf32>, tensor<?xf32>)
    "func.return"(%0#0, %0#1) : (tensor<?xf32>, tensor<?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

