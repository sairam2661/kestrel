"builtin.module"() ({
  "func.func"() <{function_type = (!secret_secret, !secret_secret, !secret_secret) -> !secret_secret, sym_name = "stress_test"}> ({
  ^bb0(%arg0: !secret_secret, %arg1: !secret_secret, %arg2: !secret_secret):
    %0 = "secret.conceal"(%arg0) : (!secret_secret) -> !secret_secret
    %1 = "secret.conceal"(%arg1) : (!secret_secret) -> !secret_secret
    %2 = "secret.conceal"(%arg2) : (!secret_secret) -> !secret_secret
    %3 = "secret.generic"(%0, %1, %2) ({
    ^bb0(%arg3: !secret_secret, %arg4: !secret_secret, %arg5: !secret_secret):
      %4 = "secret.generic"(%arg3, %arg4) ({
      ^bb0(%arg6: !secret_secret, %arg7: !secret_secret):
        %6 = "secret.generic"(%arg6) ({
        ^bb0(%arg8: !secret_secret):
          %7 = "secret.generic"(%arg8) ({
          ^bb0(%arg9: !secret_secret):
            "secret.yield"(%arg9) : (!secret_secret) -> ()
          }) : (!secret_secret) -> !secret_secret
          "secret.yield"(%7) : (!secret_secret) -> ()
        }) : (!secret_secret) -> !secret_secret
        "secret.yield"(%6) : (!secret_secret) -> ()
      }) : (!secret_secret, !secret_secret) -> !secret_secret
      "secret.yield"(%4) : (!secret_secret) -> ()
    }) : (!secret_secret, !secret_secret, !secret_secret) -> !secret_secret
    "func.return"(%3) : (!secret_secret) -> ()
  }) : () -> ()
}) : () -> ()