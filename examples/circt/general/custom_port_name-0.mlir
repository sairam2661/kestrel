"builtin.module"() ({
  "func.func"() <{arg_attrs = [{calyx.port_name = "a"}, {calyx.port_name = "b"}], function_type = (i32, i32) -> i1, res_attrs = [{calyx.port_name = "out"}], sym_name = "main"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.cmpi"(%arg0, %arg1) <{predicate = 2 : i64}> : (i32, i32) -> i1
    "func.return"(%0) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

