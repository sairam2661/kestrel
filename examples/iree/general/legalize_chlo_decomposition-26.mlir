"builtin.module"() ({
  "func.func"() <{function_type = (tensor<f32>) -> tensor<i1>, sym_name = "is_neg_inf_f32"}> ({
  ^bb0(%arg0: tensor<f32>):
    %0 = "chlo.is_neg_inf"(%arg0) : (tensor<f32>) -> tensor<i1>
    "func.return"(%0) : (tensor<i1>) -> ()
  }) : () -> ()
}) : () -> ()

