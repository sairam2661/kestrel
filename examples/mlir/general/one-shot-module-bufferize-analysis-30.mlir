"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xf32>) -> tensor<?xf32>, sym_name = "inner_func"}> ({
  ^bb0(%arg6: tensor<?xf32>):
    "func.return"(%arg6) : (tensor<?xf32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (index, index, index, tensor<?xf32>) -> tensor<?xf32>, sym_name = "equivalent_func_arg"}> ({
  ^bb0(%arg0: index, %arg1: index, %arg2: index, %arg3: tensor<?xf32>):
    %0 = "scf.for"(%arg0, %arg1, %arg2, %arg3) ({
    ^bb0(%arg4: index, %arg5: tensor<?xf32>):
      %1 = "func.call"(%arg5) <{callee = @inner_func}> : (tensor<?xf32>) -> tensor<?xf32>
      "scf.yield"(%1) : (tensor<?xf32>) -> ()
    }) : (index, index, index, tensor<?xf32>) -> tensor<?xf32>
    "func.return"(%0) : (tensor<?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

