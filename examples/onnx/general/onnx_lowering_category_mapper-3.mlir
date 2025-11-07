"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2x2x!onnx.String>) -> tensor<2x2x2xi64>, sym_name = "test_rank3_category_mapper_string_to_int64", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<2x2x2x!onnx.String>):
    %0 = "onnx.CategoryMapper"(%arg0) {cats_int64s = [1, 2, 3], cats_strings = ["cat", "dog", "cow"], default_int64 = -1 : si64, default_string = "_Unused"} : (tensor<2x2x2x!onnx.String>) -> tensor<2x2x2xi64>
    "func.return"(%0) : (tensor<2x2x2xi64>) -> ()
  }) : () -> ()
}) : () -> ()

