"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x20x1x!onnx.String>) -> tensor<*xi64>, sym_name = "test_rank3_category_mapper_string"}> ({
  ^bb0(%arg0: tensor<2x20x1x!onnx.String>):
    %0 = "onnx.CategoryMapper"(%arg0) {cats_int64s = [1, 2, 3], cats_strings = ["cat", "dog", "human"], default_int64 = 0 : si64, default_string = "_Unused"} : (tensor<2x20x1x!onnx.String>) -> tensor<*xi64>
    "func.return"(%0) : (tensor<*xi64>) -> ()
  }) : () -> ()
}) : () -> ()

