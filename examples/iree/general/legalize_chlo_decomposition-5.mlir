"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xcomplex<f64>>) -> tensor<?xcomplex<f64>>, sym_name = "asin_complex_f64_dynamic"}> ({
  ^bb0(%arg0: tensor<?xcomplex<f64>>):
    %0 = "chlo.asin"(%arg0) : (tensor<?xcomplex<f64>>) -> tensor<?xcomplex<f64>>
    "func.return"(%0) : (tensor<?xcomplex<f64>>) -> ()
  }) : () -> ()
}) : () -> ()

