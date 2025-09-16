"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x?x4xf32>) -> (), sym_name = "reduce_float_dyn_nonzero_batch"}> ({
  ^bb0(%arg0: tensor<5x?x4xf32>):
    %0 = "tosa.reduce_product"(%arg0) <{axis = 2 : i32}> : (tensor<5x?x4xf32>) -> tensor<5x?x1xf32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

