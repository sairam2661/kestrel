"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xcomplex<f32>>) -> tensor<2xcomplex<f32>>, sym_name = "sinh_complex"}> ({
  ^bb0(%arg0: tensor<2xcomplex<f32>>):
    %0 = "chlo.sinh"(%arg0) : (tensor<2xcomplex<f32>>) -> tensor<2xcomplex<f32>>
    "func.return"(%0) : (tensor<2xcomplex<f32>>) -> ()
  }) : () -> ()
}) : () -> ()

