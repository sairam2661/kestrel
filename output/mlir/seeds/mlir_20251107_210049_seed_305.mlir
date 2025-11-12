"builtin.module"() ({
  "func.func"() <{function_type = (f32, i8) -> i1, sym_name = "arith_cmpi_unusual_types"}> ({
  ^bb0(%arg0: f32, %arg1: i8):
    %0 = "arith.cmpi"(%arg0, %arg1) <{predicate = 5 : i64}> : (f32, i8) -> i1
    "func.return"(%0) : (i1) -> ()
  }) : () -> ()
}) : () -> ()