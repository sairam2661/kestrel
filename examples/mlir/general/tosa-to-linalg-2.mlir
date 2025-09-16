"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xf32>) -> tensor<5xf32>, sym_name = "test_abs_1d_cast_dynamic_to_static"}> ({
  ^bb0(%arg0: tensor<?xf32>):
    %0 = "tosa.abs"(%arg0) : (tensor<?xf32>) -> tensor<5xf32>
    "func.return"(%0) : (tensor<5xf32>) -> ()
  }) : () -> ()
}) : () -> ()

