"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32) -> f32, sym_name = "pretty_printed_region_op"}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %0 = "test.pretty_printed_region"(%arg1, %arg0) ({
    ^bb0(%arg2: f32, %arg3: f32):
      %1 = "test.special.op"(%arg2, %arg3) : (f32, f32) -> f32
      "test.return"(%1) : (f32) -> ()
    }) : (f32, f32) -> f32
    "func.return"(%0) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

