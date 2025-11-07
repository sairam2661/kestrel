"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<1xf16, #zhigh.layout<{dataLayout = "1D"}>>, sym_name = "out_of_range_minimum"}> ({
    %0 = "onnx.Constant"() {value = dense<-3.402820e+38> : tensor<1xf32>} : () -> tensor<1xf32>
    %1 = "zhigh.Stick"(%0) {layout = "1D"} : (tensor<1xf32>) -> tensor<1xf16, #zhigh.layout<{dataLayout = "1D"}>>
    "func.return"(%1) : (tensor<1xf16, #zhigh.layout<{dataLayout = "1D"}>>) -> ()
  }) : () -> ()
}) : () -> ()

