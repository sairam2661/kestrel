"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {secret.secret}], function_type = (!secret_secret, !secret_secret) -> !secret_secret, sym_name = "complex_secret_op"}> ({
  ^bb0(%arg0: !secret_secret, %arg1: !secret_secret):
    %0 = "secret.generic"(%arg0, %arg1) ({
    ^bb1(%arg2: !secret_secret, %arg3: !secret_secret):
      %1 = "secret.generic"(%arg2, %arg3) ({
      ^bb2(%arg4: !secret_secret, %arg5: !secret_secret):
        %6 = "secret.generic"(%arg4, %arg5) ({
        ^bb3(%arg6: !secret_secret, %arg7: !secret_secret):
          %8 = "secret.generic"(%arg6, %arg7) ({
          ^bb4(%arg8: !secret_secret, %arg9: !secret_secret):
            %10 = "secret.generic"(%arg8, %arg9) ({
            ^bb5(%arg10: !secret_secret, %arg11: !secret_secret):
              %12 = "secret.generic"(%arg10, %arg11) ({
              ^bb6(%arg12: !secret_secret, %arg13: !secret_secret):
                "secret.yield"(%arg12) : (!secret_secret) -> ()
              }) : (!secret_secret, !secret_secret) -> !secret_secret
              "secret.yield"(%12) : (!secret_secret) -> ()
            }) : (!secret_secret, !secret_secret) -> !secret_secret
            "secret.yield"(%10) : (!secret_secret) -> ()
          }) : (!secret_secret, !secret_secret) -> !secret_secret
          "secret.yield"(%8) : (!secret_secret) -> ()
        }) : (!secret_secret, !secret_secret) -> !secret_secret
        "secret.yield"(%6) : (!secret_secret) -> ()
      }) : (!secret_secret, !secret_secret) -> !secret_secret
      "secret.yield"(%4) : (!secret_secret) -> ()
    }) : (!secret_secret, !secret_secret) -> !secret_secret
    "secret.yield"(%2) : (!secret_secret) -> ()
  }) : (!secret_secret, !secret_secret) -> !secret_secret
  "func.return"(%0) : (!secret_secret) -> ()
}) : () -> ()