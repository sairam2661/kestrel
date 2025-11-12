"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16x16xf64>) -> (), sym_name = "erf_inv_wide"}> ({
  ^bb0(%arg0: tensor<16x16xf64>):
    %0 = "chlo.erf_inv"(%arg0) : (tensor<16x16xf64>) -> tensor<16x16xf64>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

