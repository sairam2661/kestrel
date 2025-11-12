"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x3xi8>, tensor<3x3xi8>) -> tensor<3x3xi8>, sym_name = "matrix_add"}> ({
  ^bb0(%arg0: tensor<3x3xi8>, %arg1: tensor<3x3xi8>):
    %0 = "scf.for"(%arg0, %arg1) <{bounds = (tensor<3x3xi8>, tensor<3x3xi8>)->(tensor<3x3xi8>, tensor<3x3xi8>),"indvars = (index, index)"  ="#"}>
    ({
      ^bb1(%arg2: index, %arg3: index, %arg4: tensor<3x3xi8>, %arg5: tensor<3x3xi8>, %arg6: tensor<3x3xi8>):
        %7 = "arith.addi"(%arg4, %arg5) : (tensor<3x3xi8>, tensor<3x3xi8>) -> tensor<3x3xi8>
        "scf.yield"(%arg2, %arg3, %7) : (index, index, tensor<3x3xi8>) -> ()
    }) : (index, index, tensor<3x3xi8>) -> ()
    "func.return"(%0) : (tensor<3x3xi8>) -> ()
  }) : () -> ()
}) : () -> ()