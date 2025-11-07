"builtin.module"() ({
  "func.func"() <{function_type = (tensor<i32>) -> tensor<i64>, sym_name = "cast_lowering_int_wider_int", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<i32>):
    %0 = "onnx.Cast"(%arg0) {saturate = 1 : si64, to = i64} : (tensor<i32>) -> tensor<i64>
    "func.return"(%0) : (tensor<i64>) -> ()
  }) : () -> ()
}) : () -> ()

