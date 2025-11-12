"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi8>, tensor<2x3xi8>) -> (i1, tensor<2x3xi8>), sym_name = "complex_nested_function"}> ({
  ^bb0(%arg0: tensor<2x3xi8>, %arg1: tensor<2x3xi8>):
    %0 = "arith.cmpi"("eq", %arg0, %arg1) : (tensor<2x3xi8>, tensor<2x3xi8>) -> i1
    %1:2 = "scf.if"(%0) ({
    ^bb0:
      %2 = "arith.addi"(%arg0, %arg1) : (tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<2x3xi8>
      "scf.yield"(%2) : (tensor<2x3xi8>) -> ()
    }, {
    ^bb0:
      %2 = "arith.subi"(%arg0, %arg1) : (tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<2x3xi8>
      "scf.yield"(%2) : (tensor<2x3xi8>) -> ()
    }) : (tensor<2x3xi8>) -> (tensor<2x3xi8>)
    "func.return"(%0, %1) : (i1, tensor<2x3xi8>) -> ()
  }) : () -> ()
}) : () -> ()