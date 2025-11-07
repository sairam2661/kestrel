"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> f32, sym_name = "extract_plaintext", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = (!secret.secret<f32>) -> !secret.secret<f32>, sym_name = "call_plaintext"}> ({
  ^bb0(%arg0: !secret.secret<f32>):
    %0 = "secret.generic"(%arg0) ({
    ^bb0(%arg1: f32):
      %1 = "func.call"(%arg1) <{callee = @extract_plaintext}> : (f32) -> f32
      "secret.yield"(%1) : (f32) -> ()
    }) : (!secret.secret<f32>) -> !secret.secret<f32>
    "func.return"(%0) : (!secret.secret<f32>) -> ()
  }) : () -> ()
}) : () -> ()

