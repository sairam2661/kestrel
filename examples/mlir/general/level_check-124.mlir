"builtin.module"() ({
  "func.func"() <{function_type = (tensor<536870912xi32>) -> tensor<536870912xi32>, sym_name = "test_custom_tensor_size_invalid"}> ({
  ^bb0(%arg0: tensor<536870912xi32>):
    %0 = "tosa.custom"(%arg0) <{domain_name = "tosa.mlir_test", implementation_attrs = "", operator_name = "custom_test"}> : (tensor<536870912xi32>) -> tensor<536870912xi32>
    "func.return"(%0) : (tensor<536870912xi32>) -> ()
  }) : () -> ()
}) : () -> ()

