"builtin.module"() ({
  "func.func"() <{function_type = (tensor<20x1xi64>) -> tensor<*x!onnx.String>, sym_name = "test_category_mapper_int64"}> ({
  ^bb0(%arg0: tensor<20x1xi64>):
    %0 = "onnx.CategoryMapper"(%arg0) {cats_int64s = [1, 2, 3], cats_strings = ["cat", "dog", "human"], default_int64 = -1 : si64, default_string = "unclassified" : !onnx.String} : (tensor<20x1xi64>) -> tensor<*x!onnx.String>
    "onnx.Return"(%0) : (tensor<*x!onnx.String>) -> ()
  }) : () -> ()
}) : () -> ()

