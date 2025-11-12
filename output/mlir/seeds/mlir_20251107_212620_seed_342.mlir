"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi8>, tensor<2x2xi8>) -> tensor<2x2xi8>, sym_name = "mix_dialect_ops"}> ({
  ^bb0(%arg0: tensor<2x2xi8>, %arg1: tensor<2x2xi8>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<2x2xi8>, tensor<2x2xi8>) -> tensor<2x2xi8>
    %1 = "scf.if"(%arg0) <{result_type = tensor<2x2xi8>}> ({
    ^bb1(%arg2: tensor<2x2xi8>):
      %2 = "tosa.const"() <{value = dense<42> : tensor<2x2xi8>}> : () -> tensor<2x2xi8>
      "scf.yield"(%2) : (tensor<2x2xi8>) -> tensor<2x2xi8>
    }, {
    ^bb2(%arg3: tensor<2x2xi8>):
      %3 = "arith.cmpi"("eq", %arg0, %arg1) : (tensor<2x2xi8>, tensor<2x2xi8>) -> tensor<2x2xi1>
      "scf.yield"(%3) : (tensor<2x2xi1>) -> tensor<2x2xi1>
    }) : (tensor<2x2xi8>, tensor<2x2xi8>) -> tensor<2x2xi8>
    "func.return"(%1) : (tensor<2x2xi8>) -> ()
  }) : () -> ()
}) : () -> ()