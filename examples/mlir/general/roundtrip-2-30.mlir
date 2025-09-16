"builtin.module"() ({
  "func.func"() <{function_type = (f64) -> i64, sym_name = "sparse_unary"}> ({
  ^bb0(%arg0: f64):
    %0 = "sparse_tensor.unary"(%arg0) ({
    ^bb0(%arg1: f64):
      %1 = "arith.fptosi"(%arg1) : (f64) -> i64
      "sparse_tensor.yield"(%1) : (i64) -> ()
    }, {
    }) : (f64) -> i64
    "func.return"(%0) : (i64) -> ()
  }) : () -> ()
}) : () -> ()

