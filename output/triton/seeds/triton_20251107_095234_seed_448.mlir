"builtin.module"() ({
  "tt.func"() <{function_type = (!ttptr, i64) -> !ttptr, sym_name = "stressful_kernel"}> ({
    ^bb0(%arg0: !ttptr, %arg1: i64):
      %0 = "tt.make_range"() <{start = 0 : i64, end = 1024 : i64, step = 1 : i64}> : () -> !tttensor
      %1 = "tt.expand_dims"(%0, %arg1) : (!tttensor, i64) -> !tttensor
      %2 = "tt.reduce"(%1) <{operation = "sum", axis = 0 : i64}> : (!tttensor) -> !tttensor
      %3 = "tt.addptr"(%arg0, %2) : (!ttptr, !tttensor) -> !ttptr
      "tt.return"(%3) : (!ttptr) -> ()
  }) : () -> ()
}) : () -> ()