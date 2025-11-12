"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16x16xf32>) -> (), sym_name = "erf_inv"}> ({
  ^bb0(%arg0: tensor<16x16xf32>):
    %0 = "chlo.erf_inv"(%arg0) : (tensor<16x16xf32>) -> tensor<16x16xf32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

