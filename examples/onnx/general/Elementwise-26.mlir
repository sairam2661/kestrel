"builtin.module"() ({
  "func.func"() <{function_type = (tensor<i64>) -> tensor<i32>, sym_name = "cast_lowering_int_narrow_int", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<i64>):
    %0 = "onnx.Cast"(%arg0) {saturate = 1 : si64, to = i32} : (tensor<i64>) -> tensor<i32>
    "func.return"(%0) : (tensor<i32>) -> ()
  }) : () -> ()
}) : () -> ()

