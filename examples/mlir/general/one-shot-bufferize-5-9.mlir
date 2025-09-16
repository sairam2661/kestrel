"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xf32>, index, index, index) -> tensor<?xf32>, sym_name = "scf_for_yield_non_equivalent"}> ({
  ^bb0(%arg0: tensor<?xf32>, %arg1: index, %arg2: index, %arg3: index):
    %0 = "scf.for"(%arg1, %arg2, %arg3, %arg0) ({
    ^bb0(%arg4: index, %arg5: tensor<?xf32>):
      "scf.yield"(%arg0) : (tensor<?xf32>) -> ()
    }) : (index, index, index, tensor<?xf32>) -> tensor<?xf32>
    "func.return"(%0) : (tensor<?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

