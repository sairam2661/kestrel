"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5xf32>) -> tensor<5xf32>, sym_name = "foo"}> ({
  ^bb0(%arg1: tensor<5xf32>):
    %1 = "func.call"(%arg1) <{callee = @bar}> : (tensor<5xf32>) -> tensor<5xf32>
    "func.return"(%1) : (tensor<5xf32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<5xf32>) -> tensor<5xf32>, sym_name = "bar"}> ({
  ^bb0(%arg0: tensor<5xf32>):
    %0 = "func.call"(%arg0) <{callee = @foo}> : (tensor<5xf32>) -> tensor<5xf32>
    "func.return"(%0) : (tensor<5xf32>) -> ()
  }) : () -> ()
}) : () -> ()

