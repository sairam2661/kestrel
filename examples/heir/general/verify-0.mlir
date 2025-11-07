"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x512xf32>) -> tensor<1x512xf32>, sym_name = "main"}> ({
  ^bb0(%arg0: tensor<1x512xf32>):
    %0 = "func.call"(%arg0) <{callee = @relu}> : (tensor<1x512xf32>) -> tensor<1x512xf32>
    "func.return"(%0) : (tensor<1x512xf32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<1x512xf32>) -> tensor<1x512xf32>, sym_name = "relu", sym_visibility = "private"}> ({
  }) : () -> ()
}) : () -> ()

