"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, !tensor_ext, !tensor) -> (!secretsecret, !tensor_ext), sym_name = "nested_secret_operations"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: !tensor_ext, %arg2: !tensor):
    %0 = "secret.generic"(%arg0, %arg1, %arg2) ({
    ^bb0(%arg3: !secretsecret, %arg4: !tensor_ext, %arg5: !tensor):
      %1:2 = "tensor_ext.rotate"(%arg4) <{angle = 90}> : (!tensor_ext) -> (!tensor_ext, !tensor_ext)
      %2 = "tensor.insert"(%1#0, %arg5, %arg4) <{indices = [0, 0]}> : (!tensor_ext, !tensor, !tensor_ext) -> !tensor_ext
      %3 = "secret.conceal"(%arg3) : (!secretsecret) -> !secretsecret
      "secret.yield"(%3, %2) : (!secretsecret, !tensor_ext) -> ()
    }) : (!secretsecret, !tensor_ext, !tensor) -> (!secretsecret, !tensor_ext)
    "func.return"(%0#0, %0#1) : (!secretsecret, !tensor_ext) -> ()
  }) : () -> ()
}) : () -> ()