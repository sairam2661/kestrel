"builtin.module"() ({
  "func.func"() <{function_type = (tensor<ui32>) -> tensor<ui64>, sym_name = "cast_lowering_uint_wider_uint", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<ui32>):
    %0 = "onnx.Cast"(%arg0) {saturate = 1 : si64, to = ui64} : (tensor<ui32>) -> tensor<ui64>
    "func.return"(%0) : (tensor<ui64>) -> ()
  }) : () -> ()
}) : () -> ()

