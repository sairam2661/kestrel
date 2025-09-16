"builtin.module"() ({
  "func.func"() <{function_type = (tuple<i1, i32>) -> tuple<i1, i32>, sym_name = "callee", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = (tuple<i1, i32>) -> tuple<i1, i32>, sym_name = "caller"}> ({
  ^bb0(%arg0: tuple<i1, i32>):
    %0 = "func.call"(%arg0) <{callee = @callee}> : (tuple<i1, i32>) -> tuple<i1, i32>
    "func.return"(%0) : (tuple<i1, i32>) -> ()
  }) : () -> ()
}) : () -> ()

