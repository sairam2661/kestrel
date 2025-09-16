"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xf32>) -> tensor<?xf32>, sym_name = "foo"}> ({
  ^bb0(%arg1: tensor<?xf32>):
    "func.return"(%arg1) : (tensor<?xf32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<?xf32>) -> tensor<?xf32>, sym_name = "bar"}> ({
  ^bb0(%arg0: tensor<?xf32>):
    %0 = "func.call"(%arg0) <{callee = @foo}> : (tensor<?xf32>) -> tensor<?xf32>
    "func.return"(%0) : (tensor<?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

