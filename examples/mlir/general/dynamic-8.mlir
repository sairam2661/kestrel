"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> (), sym_name = "succeededDynamicOpVerifier"}> ({
  ^bb0(%arg0: f32):
    "test.dynamic_generic"() : () -> ()
    %0 = "test.dynamic_generic"(%arg0) : (f32) -> f64
    %1:2 = "test.dynamic_one_operand_two_results"(%arg0) : (f32) -> (f64, f64)
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

