"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<10xi32>, sym_name = "reverse_splat"}> ({
    %0 = "tosa.const"() <{values = dense<42> : tensor<10xi32>}> : () -> tensor<10xi32>
    %1 = "tosa.reverse"(%0) <{axis = 0 : i32}> : (tensor<10xi32>) -> tensor<10xi32>
    "func.return"(%1) : (tensor<10xi32>) -> ()
  }) : () -> ()
}) : () -> ()

