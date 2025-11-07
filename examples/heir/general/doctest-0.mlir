"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i1, sym_name = "cmpi_sgt"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.cmpi"(%arg0, %arg1) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "func.return"(%0) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

