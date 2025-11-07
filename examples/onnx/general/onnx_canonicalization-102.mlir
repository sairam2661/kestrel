"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<1xi32>, sym_name = "test_not_replace_sub_by_expand_rank0"}> ({
    %0 = "onnx.Constant"() {value = dense<1> : tensor<1xi32>} : () -> tensor<1xi32>
    %1 = "onnx.Constant"() {value = dense<2> : tensor<i32>} : () -> tensor<i32>
    %2 = "onnx.Constant"() {value = dense<> : tensor<0xi64>} : () -> tensor<0xi64>
    %3 = "onnx.Expand"(%1, %2) : (tensor<i32>, tensor<0xi64>) -> tensor<i32>
    %4 = "onnx.Sub"(%0, %3) : (tensor<1xi32>, tensor<i32>) -> tensor<1xi32>
    "func.return"(%4) : (tensor<1xi32>) -> ()
  }) : () -> ()
}) : () -> ()

