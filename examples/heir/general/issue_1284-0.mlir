"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<tensor<1024xi16>>, !secret.secret<tensor<1024xi16>>, i16) -> !secret.secret<tensor<1024xi16>>, sym_name = "repro"}> ({
  ^bb0(%arg5: !secret.secret<tensor<1024xi16>>, %arg6: !secret.secret<tensor<1024xi16>>, %arg7: i16):
    %7 = "tensor.splat"(%arg7) : (i16) -> tensor<1024xi16>
    %8 = "secret.generic"(%arg5, %arg6) ({
    ^bb0(%arg8: tensor<1024xi16>, %arg9: tensor<1024xi16>):
      %9 = "arith.muli"(%arg8, %arg8) <{overflowFlags = #arith.overflow<none>}> : (tensor<1024xi16>, tensor<1024xi16>) -> tensor<1024xi16>
      %10 = "arith.muli"(%arg9, %arg9) <{overflowFlags = #arith.overflow<none>}> : (tensor<1024xi16>, tensor<1024xi16>) -> tensor<1024xi16>
      %11 = "arith.muli"(%arg8, %7) <{overflowFlags = #arith.overflow<none>}> : (tensor<1024xi16>, tensor<1024xi16>) -> tensor<1024xi16>
      %12 = "arith.addi"(%11, %9) <{overflowFlags = #arith.overflow<none>}> : (tensor<1024xi16>, tensor<1024xi16>) -> tensor<1024xi16>
      %13 = "arith.addi"(%12, %10) <{overflowFlags = #arith.overflow<none>}> : (tensor<1024xi16>, tensor<1024xi16>) -> tensor<1024xi16>
      "secret.yield"(%13) : (tensor<1024xi16>) -> ()
    }) : (!secret.secret<tensor<1024xi16>>, !secret.secret<tensor<1024xi16>>) -> !secret.secret<tensor<1024xi16>>
    "func.return"(%8) : (!secret.secret<tensor<1024xi16>>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!secret.secret<tensor<1024xi16>>, !secret.secret<tensor<1024xi16>>, i16) -> !secret.secret<tensor<1024xi16>>, sym_name = "repro2"}> ({
  ^bb0(%arg0: !secret.secret<tensor<1024xi16>>, %arg1: !secret.secret<tensor<1024xi16>>, %arg2: i16):
    %0 = "tensor.splat"(%arg2) : (i16) -> tensor<1024xi16>
    %1 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg3: tensor<1024xi16>, %arg4: tensor<1024xi16>):
      %2 = "arith.muli"(%arg3, %arg3) <{overflowFlags = #arith.overflow<none>}> : (tensor<1024xi16>, tensor<1024xi16>) -> tensor<1024xi16>
      %3 = "arith.muli"(%arg4, %arg4) <{overflowFlags = #arith.overflow<none>}> : (tensor<1024xi16>, tensor<1024xi16>) -> tensor<1024xi16>
      %4 = "arith.muli"(%arg3, %0) <{overflowFlags = #arith.overflow<none>}> : (tensor<1024xi16>, tensor<1024xi16>) -> tensor<1024xi16>
      %5 = "arith.addi"(%2, %3) <{overflowFlags = #arith.overflow<none>}> : (tensor<1024xi16>, tensor<1024xi16>) -> tensor<1024xi16>
      %6 = "arith.addi"(%5, %4) <{overflowFlags = #arith.overflow<none>}> : (tensor<1024xi16>, tensor<1024xi16>) -> tensor<1024xi16>
      "secret.yield"(%6) : (tensor<1024xi16>) -> ()
    }) : (!secret.secret<tensor<1024xi16>>, !secret.secret<tensor<1024xi16>>) -> !secret.secret<tensor<1024xi16>>
    "func.return"(%1) : (!secret.secret<tensor<1024xi16>>) -> ()
  }) : () -> ()
}) : () -> ()

