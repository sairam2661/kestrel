"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x3xi8>, tensor<3x3xi8>) -> tensor<3x3xi8>, sym_name = "tosa_and_llvm_combo"}> ({
  ^bb0(%arg0: tensor<3x3xi8>, %arg1: tensor<3x3xi8>):
    %0 = "arith.cmpi"(%arg0, %arg1) <{predicate = "ne"}> : (tensor<3x3xi8>, tensor<3x3xi8>) -> tensor<3x3xi1>
    %1 = "arith.constant"() <{value = 1 : i8}> : () -> i8
    %2 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %3 = "scf.if"(%0) ({
    ^bb1(%arg2: tensor<3x3xi1>):
      %4 = "tosa.const"() <{value = dense<0> : tensor<3x3xi8>}> : () -> tensor<3x3xi8>
      "scf.yield"(%4) : (tensor<3x3xi8>) -> ()
    ^bb2:
      %5 = "tosa.const"() <{value = dense<1> : tensor<3x3xi8>}> : () -> tensor<3x3xi8>
      "scf.yield"(%5) : (tensor<3x3xi8>) -> ()
    }) : (tensor<3x3xi8>)
    "func.return"(%3) : (tensor<3x3xi8>) -> ()
  }) : () -> ()
}) : () -> ()