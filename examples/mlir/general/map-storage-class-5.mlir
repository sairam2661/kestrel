"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> f32, sym_name = "non_memref_types"}> ({
  ^bb0(%arg0: f32):
    %0 = "dialect.op"(%arg0) {attr = 16 : i64} : (f32) -> f32
    "func.return"(%0) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

