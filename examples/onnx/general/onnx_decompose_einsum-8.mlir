"builtin.module"() ({
  "func.func"() <{function_type = (tensor<128x1x1024xf16>, tensor<1024x16x64xf16>) -> tensor<128x1x16x64xf16>, sym_name = "test_einsum_ibh_hnd"}> ({
  ^bb0(%arg0: tensor<128x1x1024xf16>, %arg1: tensor<1024x16x64xf16>):
    %0 = "onnx.Einsum"(%arg0, %arg1) {equation = "ibh,hnd->ibnd"} : (tensor<128x1x1024xf16>, tensor<1024x16x64xf16>) -> tensor<128x1x16x64xf16>
    "onnx.Return"(%0) : (tensor<128x1x16x64xf16>) -> ()
  }) : () -> ()
}) : () -> ()

