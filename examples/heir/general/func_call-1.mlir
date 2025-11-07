"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<f32>) -> !secret.secret<f32>, sym_name = "external_secret", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = (!secret.secret<f32>) -> !secret.secret<f32>, sym_name = "call_secret"}> ({
  ^bb0(%arg0: !secret.secret<f32>):
    %0 = "func.call"(%arg0) <{callee = @external_secret}> : (!secret.secret<f32>) -> !secret.secret<f32>
    "func.return"(%0) : (!secret.secret<f32>) -> ()
  }) : () -> ()
}) : () -> ()

