"builtin.module"() ({
  "func.func"() <{function_type = (tensor<ui64>) -> tensor<ui32>, sym_name = "cast_lowering_uint_narrow_uint", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<ui64>):
    %0 = "onnx.Cast"(%arg0) {saturate = 1 : si64, to = ui32} : (tensor<ui64>) -> tensor<ui32>
    "func.return"(%0) : (tensor<ui32>) -> ()
  }) : () -> ()
}) : () -> ()

