"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10xi32>) -> tensor<10xi32>, sym_name = "test_custom"}> ({
  ^bb0(%arg0: tensor<10xi32>):
    %0 = "tosa.custom"(%arg0) <{domain_name = "tosa.mlir_test", implementation_attrs = "", operator_name = "custom_test"}> : (tensor<10xi32>) -> tensor<10xi32>
    "func.return"(%0) : (tensor<10xi32>) -> ()
  }) : () -> ()
}) : () -> ()

