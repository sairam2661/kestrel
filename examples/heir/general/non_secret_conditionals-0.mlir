"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<tensor<16xi16>>, i1) -> !secret.secret<tensor<16xi16>>, sym_name = "non_secret_condition_outside_of_secret_generic_with_secret_tensor"}> ({
  ^bb0(%arg3: !secret.secret<tensor<16xi16>>, %arg4: i1):
    %3 = "secret.generic"(%arg3) ({
    ^bb0(%arg5: tensor<16xi16>):
      %4 = "scf.if"(%arg4) ({
        %5 = "arith.addi"(%arg5, %arg5) <{overflowFlags = #arith.overflow<none>}> : (tensor<16xi16>, tensor<16xi16>) -> tensor<16xi16>
        "scf.yield"(%5) : (tensor<16xi16>) -> ()
      }, {
        "scf.yield"(%arg5) : (tensor<16xi16>) -> ()
      }) : (i1) -> tensor<16xi16>
      "secret.yield"(%4) : (tensor<16xi16>) -> ()
    }) : (!secret.secret<tensor<16xi16>>) -> !secret.secret<tensor<16xi16>>
    "func.return"(%3) : (!secret.secret<tensor<16xi16>>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!secret.secret<tensor<16xi16>>, i1) -> !secret.secret<tensor<16xi16>>, sym_name = "non_secret_condition_with_secret_tensor"}> ({
  ^bb0(%arg0: !secret.secret<tensor<16xi16>>, %arg1: i1):
    %0 = "secret.generic"(%arg0) ({
    ^bb0(%arg2: tensor<16xi16>):
      %1 = "scf.if"(%arg1) ({
        %2 = "arith.addi"(%arg2, %arg2) <{overflowFlags = #arith.overflow<none>}> : (tensor<16xi16>, tensor<16xi16>) -> tensor<16xi16>
        "scf.yield"(%2) : (tensor<16xi16>) -> ()
      }, {
        "scf.yield"(%arg2) : (tensor<16xi16>) -> ()
      }) : (i1) -> tensor<16xi16>
      "secret.yield"(%1) : (tensor<16xi16>) -> ()
    }) : (!secret.secret<tensor<16xi16>>) -> !secret.secret<tensor<16xi16>>
    "func.return"(%0) : (!secret.secret<tensor<16xi16>>) -> ()
  }) : () -> ()
}) : () -> ()

