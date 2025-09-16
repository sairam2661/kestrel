"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "complex_f64_tensor_success"}> ({
    %0 = "test.complex_f64_tensor"() : () -> tensor<complex<f64>>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

