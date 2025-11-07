"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2x2xi64>) -> tensor<2x2x2x!onnx.String>, sym_name = "test_rank3_category_mapper_int64_to_string", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<2x2x2xi64>):
    %0 = "onnx.CategoryMapper"(%arg0) {cats_int64s = [1, 2, 3], cats_strings = ["cat", "dog", "cow"], default_int64 = -1 : si64, default_string = "none"} : (tensor<2x2x2xi64>) -> tensor<2x2x2x!onnx.String>
    "func.return"(%0) : (tensor<2x2x2x!onnx.String>) -> ()
  }) : () -> ()
}) : () -> ()

