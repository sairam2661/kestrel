"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> (), sym_name = "remap_input_1_to_N_remaining_use"}> ({
  ^bb0(%arg1: f32):
    "work"(%arg1) : (f32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i42) -> (), sym_name = "remap_materialize_1_to_1"}> ({
  ^bb0(%arg0: i42):
    "test.return"(%arg0) : (i42) -> ()
  }) : () -> ()
}) : () -> ()

