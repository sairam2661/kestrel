"builtin.module"() ({
  "func.func"() <{function_type = (tensor<ui8>, tensor<ui8>, tensor<i1>) -> tensor<ui8>, sym_name = "test_regions"}> ({
  ^bb0(%arg0: tensor<ui8>, %arg1: tensor<ui8>, %arg2: tensor<i1>):
    %0 = "tosa.cond_if"(%arg2, %arg0, %arg1) ({
    ^bb0(%arg5: tensor<ui8>, %arg6: tensor<ui8>):
      %2 = "tosa.add"(%arg0, %arg1) : (tensor<ui8>, tensor<ui8>) -> tensor<ui8>
      "tosa.yield"(%2) : (tensor<ui8>) -> ()
    }, {
    ^bb0(%arg3: tensor<ui8>, %arg4: tensor<ui8>):
      %1 = "tosa.sub"(%arg0, %arg1) : (tensor<ui8>, tensor<ui8>) -> tensor<ui8>
      "tosa.yield"(%1) : (tensor<ui8>) -> ()
    }) : (tensor<i1>, tensor<ui8>, tensor<ui8>) -> tensor<ui8>
    "func.return"(%0) : (tensor<ui8>) -> ()
  }) : () -> ()
}) : () -> ()

