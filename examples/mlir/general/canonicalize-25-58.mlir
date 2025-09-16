"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x1xf32>) -> tensor<?x1xf32>, sym_name = "reduce_product_fold"}> ({
  ^bb0(%arg0: tensor<?x1xf32>):
    %0 = "tosa.reduce_product"(%arg0) <{axis = 1 : i32}> : (tensor<?x1xf32>) -> tensor<?x1xf32>
    "func.return"(%0) : (tensor<?x1xf32>) -> ()
  }) : () -> ()
}) : () -> ()

