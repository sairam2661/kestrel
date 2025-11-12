"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x10xi8>) -> tensor<10x10xi8>, sym_name = "test_tosa_const_with_add"}> ({
  ^bb0(%arg0: tensor<10x10xi8>):
    %0 = "tosa.const"() <{value = dense<10> : tensor<10x10xi8>}> : () -> tensor<10x10xi8>
    %1 = "tosa.add"(%arg0, %0) : (tensor<10x10xi8>, tensor<10x10xi8>) -> tensor<10x10xi8>
    "func.return"(%1) : (tensor<10x10xi8>) -> ()
  }) : () -> ()
}) : () -> ()