"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3xi8>, tensor<3xi8>) -> tensor<3xi8>, sym_name = "complex_tensor_operations"}> ({
    ^bb0(%arg0: tensor<3xi8>, %arg1: tensor<3xi8>):
      %0 = "arith.add"(%arg0, %arg1) : (tensor<3xi8>, tensor<3xi8>) -> tensor<3xi8>
      %1 = "arith.sub"(%arg0, %arg1) : (tensor<3xi8>, tensor<3xi8>) -> tensor<3xi8>
      %2 = "arith.mux"(%0, %1) : (tensor<3xi8>, tensor<3xi8>) -> tensor<3xi8>
      "func.return"(%2) : (tensor<3xi8>) -> ()
  }) : () -> ()
}) : () -> ()