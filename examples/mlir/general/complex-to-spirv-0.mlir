"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32) -> complex<f32>, sym_name = "create_complex"}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %0 = "complex.create"(%arg0, %arg1) : (f32, f32) -> complex<f32>
    "func.return"(%0) : (complex<f32>) -> ()
  }) : () -> ()
}) : () -> ()

