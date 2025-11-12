"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x10xi8>, tensor<10x10xi8>, tensor<i1>) -> tensor<10x10xi8>, sym_name = "tosa_cond_if_complex_tensor"}> ({
  ^bb0(%arg0: tensor<10x10xi8>, %arg1: tensor<10x10xi8>, %arg2: tensor<i1>):
    %0 = "tosa.cond_if"(%arg2, %arg0, %arg1) ({
    ^bb1(%arg3: tensor<10x10xi8>, %arg4: tensor<10x10xi8>):
      %2 = "tosa.add"(%arg3, %arg4) : (tensor<10x10xi8>, tensor<10x10xi8>) -> tensor<10x10xi8>
      "tosa.yield"(%2) : (tensor<10x10xi8>) -> ()
    }, {
    ^bb2(%arg5: tensor<10x10xi8>, %arg6: tensor<10x10xi8>):
      %1 = "tosa.sub"(%arg5, %arg6) : (tensor<10x10xi8>, tensor<10x10xi8>) -> tensor<10x10xi8>
      "tosa.yield"(%1) : (tensor<10x10xi8>) -> ()
    }) : (tensor<i1>, tensor<10x10xi8>, tensor<10x10xi8>) -> tensor<10x10xi8>
    "func.return"(%0) : (tensor<10x10xi8>) -> ()
  }) : () -> ()
}) : () -> ()