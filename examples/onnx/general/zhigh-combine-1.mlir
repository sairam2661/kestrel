"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x10xf32>) -> tensor<10x10xf32>, sym_name = "remove_stick_only"}> ({
  ^bb0(%arg0: tensor<10x10xf32>):
    %0 = "zhigh.Stick"(%arg0) : (tensor<10x10xf32>) -> tensor<10x10xf16, #zhigh.layout<{ dataLayout = "2D"}>>
    %1 = "zhigh.Relu"(%0) : (tensor<10x10xf16, #zhigh.layout<{ dataLayout = "2D"}>>) -> tensor<10x10xf16, #zhigh.layout<{ dataLayout = "2D"}>>
    %2 = "zhigh.Unstick"(%1) : (tensor<10x10xf16, #zhigh.layout<{ dataLayout = "2D"}>>) -> tensor<10x10xf32>
    %3 = "zhigh.Stick"(%2) : (tensor<10x10xf32>) -> tensor<10x10xf16, #zhigh.layout<{ dataLayout = "2D"}>>
    %4 = "zhigh.Relu"(%3) : (tensor<10x10xf16, #zhigh.layout<{ dataLayout = "2D"}>>) -> tensor<10x10xf16, #zhigh.layout<{ dataLayout = "2D"}>>
    %5 = "zhigh.Unstick"(%4) : (tensor<10x10xf16, #zhigh.layout<{ dataLayout = "2D"}>>) -> tensor<10x10xf32>
    %6 = "onnx.Add"(%2, %5) : (tensor<10x10xf32>, tensor<10x10xf32>) -> tensor<10x10xf32>
    "func.return"(%6) : (tensor<10x10xf32>) -> ()
  }) : () -> ()
}) : () -> ()

