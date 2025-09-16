"builtin.module"() ({
  "func.func"() <{function_type = (tuple<i1, tuple<i32>>) -> tuple<i1, tuple<i32>>, sym_name = "nested_unconverted_op_result"}> ({
  ^bb0(%arg0: tuple<i1, tuple<i32>>):
    %0 = "test.op"(%arg0) : (tuple<i1, tuple<i32>>) -> tuple<i1, tuple<i32>>
    "func.return"(%0) : (tuple<i1, tuple<i32>>) -> ()
  }) : () -> ()
}) : () -> ()

