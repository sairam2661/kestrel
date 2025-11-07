"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<*xi64>, sym_name = "compute_slice_all_dyn"}> ({
  ^bb0(%arg0: tensor<2xi64>, %arg1: tensor<2xi64>, %arg2: tensor<2xi64>):
    %0 = "onnx.Constant"() {value = dense<[[[0, 1, 2, 3, 4], [10, 11, 12, 13, 14], [20, 21, 22, 23, 24], [30, 31, 32, 33, 34]], [[100, 101, 102, 103, 104], [110, 111, 112, 113, 114], [120, 121, 122, 123, 124], [130, 131, 132, 133, 134]], [[200, 201, 202, 203, 204], [210, 211, 212, 213, 214], [220, 221, 222, 223, 224], [230, 231, 232, 233, 234]]]> : tensor<3x4x5xi64>} : () -> tensor<3x4x5xi64>
    %1 = "onnx.Constant"() {value = dense<[2, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %2 = "onnx.Slice"(%0, %arg0, %arg1, %1, %arg2) : (tensor<3x4x5xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<*xi64>
    "func.return"(%2) : (tensor<*xi64>) -> ()
  }) : () -> ()
}) : () -> ()

