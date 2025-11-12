"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3xcomplex<f32>>) -> tensor<3xcomplex<f32>>, sym_name = "conj"}> ({
  ^bb0(%arg0: tensor<3xcomplex<f32>>):
    %0 = "chlo.conj"(%arg0) : (tensor<3xcomplex<f32>>) -> tensor<3xcomplex<f32>>
    "func.return"(%0) : (tensor<3xcomplex<f32>>) -> ()
  }) : () -> ()
}) : () -> ()

