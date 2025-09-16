"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x1x1x1x1x10xi32>) -> tensor<1x1x1x1x1x1x10xi32>, sym_name = "test_custom_rank_valid"}> ({
  ^bb0(%arg0: tensor<1x1x1x1x1x1x10xi32>):
    %0 = "tosa.custom"(%arg0) <{domain_name = "tosa_mlir_test", implementation_attrs = "", operator_name = "custom_test"}> : (tensor<1x1x1x1x1x1x10xi32>) -> tensor<1x1x1x1x1x1x10xi32>
    "func.return"(%0) : (tensor<1x1x1x1x1x1x10xi32>) -> ()
  }) : () -> ()
}) : () -> ()

