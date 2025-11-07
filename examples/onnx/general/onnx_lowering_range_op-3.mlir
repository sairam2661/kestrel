"builtin.module"() ({
  "func.func"() <{function_type = (tensor<i16>, tensor<i16>, tensor<i16>) -> tensor<*xi16>, sym_name = "test_range_dynamic_i16"}> ({
  ^bb0(%arg0: tensor<i16>, %arg1: tensor<i16>, %arg2: tensor<i16>):
    %0 = "onnx.Range"(%arg0, %arg1, %arg2) : (tensor<i16>, tensor<i16>, tensor<i16>) -> tensor<*xi16>
    "func.return"(%0) : (tensor<*xi16>) -> ()
  }) : () -> ()
}) : () -> ()

