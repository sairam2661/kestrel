"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x2x32x64xi8>, tensor<5x2x6x7xi8>, tensor<i8>, tensor<i8>) -> tensor<*xi32>, sym_name = "test_convinteger_7"}> ({
  ^bb0(%arg0: tensor<1x2x32x64xi8>, %arg1: tensor<5x2x6x7xi8>, %arg2: tensor<i8>, %arg3: tensor<i8>):
    %0 = "onnx.ConvInteger"(%arg0, %arg1, %arg2, %arg3) {auto_pad = "NOTSET", group = 1 : si64, strides = [2, 3]} : (tensor<1x2x32x64xi8>, tensor<5x2x6x7xi8>, tensor<i8>, tensor<i8>) -> tensor<*xi32>
    "onnx.Return"(%0) : (tensor<*xi32>) -> ()
  }) : () -> ()
}) : () -> ()

