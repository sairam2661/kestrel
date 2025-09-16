"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1xf32>) -> tensor<1xi64>, sym_name = "test_cast_fp32_i64"}> ({
  ^bb0(%arg0: tensor<1xf32>):
    %0 = "tosa.cast"(%arg0) : (tensor<1xf32>) -> tensor<1xi64>
    "func.return"(%0) : (tensor<1xi64>) -> ()
  }) : () -> ()
}) : () -> ()

