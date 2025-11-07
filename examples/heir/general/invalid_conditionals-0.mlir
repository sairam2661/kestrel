"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16xi16>) -> (), sym_name = "printer", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = (!secret.secret<tensor<16xi16>>, !secret.secret<i1>) -> !secret.secret<tensor<16xi16>>, sym_name = "impure_operation"}> ({
  ^bb0(%arg0: !secret.secret<tensor<16xi16>>, %arg1: !secret.secret<i1>):
    %0 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: tensor<16xi16>, %arg3: i1):
      %1 = "scf.if"(%arg3) ({
        %2 = "arith.addi"(%arg2, %arg2) <{overflowFlags = #arith.overflow<none>}> : (tensor<16xi16>, tensor<16xi16>) -> tensor<16xi16>
        "func.call"(%2) <{callee = @printer}> : (tensor<16xi16>) -> ()
        "scf.yield"(%2) : (tensor<16xi16>) -> ()
      }, {
        "scf.yield"(%arg2) : (tensor<16xi16>) -> ()
      }) : (i1) -> tensor<16xi16>
      "secret.yield"(%1) : (tensor<16xi16>) -> ()
    }) : (!secret.secret<tensor<16xi16>>, !secret.secret<i1>) -> !secret.secret<tensor<16xi16>>
    "func.return"(%0) : (!secret.secret<tensor<16xi16>>) -> ()
  }) : () -> ()
}) : () -> ()

