"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xf32>) -> tensor<?xf32>, sym_name = "test_abs_1d_dynamic"}> ({
  ^bb0(%arg0: tensor<?xf32>):
    %0 = "tosa.abs"(%arg0) : (tensor<?xf32>) -> tensor<?xf32>
    "func.return"(%0) : (tensor<?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

