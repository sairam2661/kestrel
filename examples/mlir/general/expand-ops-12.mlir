"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> bf16, sym_name = "truncf_f32"}> ({
  ^bb0(%arg0: f32):
    %0 = "arith.truncf"(%arg0) : (f32) -> bf16
    "func.return"(%0) : (bf16) -> ()
  }) : () -> ()
}) : () -> ()

