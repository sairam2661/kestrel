"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> i1, sym_name = "arith_cast_fptosi_i1"}> ({
  ^bb0(%arg0: f32):
    %0 = "arith.fptosi"(%arg0) : (f32) -> i1
    "func.return"(%0) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

