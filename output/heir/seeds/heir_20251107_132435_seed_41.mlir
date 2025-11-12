"builtin.module"() ({
  "func.func"() <{arg_attrs = [{}, {}, {secret.secret}], function_type = (tensor<4xi8>, tensor<4xi8>, i1) -> tensor<4xi8>, sym_name = "tensor_mux"}> ({
  ^bb0(%arg0: tensor<4xi8>, %arg1: tensor<4xi8>, %arg2: i1):
    %0 = "scf.if"(%arg2) ({
      "scf.yield"(%arg0) : (tensor<4xi8>) -> ()
    }, {
      "scf.yield"(%arg1) : (tensor<4xi8>) -> ()
    }) : (i1) -> tensor<4xi8>
    "func.return"(%0) : (tensor<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()