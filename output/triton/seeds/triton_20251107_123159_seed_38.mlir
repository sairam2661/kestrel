"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> (i32), sym_name = "complex_reduce", sym_visibility = "public"}> ({
    ^bb0(%arg0: i32):
      %0 = "tt.make_range"(%arg0) : (i32) -> !ttgMakeRangeResult
      %1 = "tt.reduce"(%0) <{operation = #ttgReduceOpSum}> : (!ttgMakeRangeResult) -> i32
      "tt.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()