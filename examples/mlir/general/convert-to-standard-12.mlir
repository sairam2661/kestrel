"builtin.module"() ({
  "func.func"() <{function_type = (complex<f32>, complex<f32>) -> i1, sym_name = "complex_neq"}> ({
  ^bb0(%arg0: complex<f32>, %arg1: complex<f32>):
    %0 = "complex.neq"(%arg0, %arg1) : (complex<f32>, complex<f32>) -> i1
    "func.return"(%0) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

