"builtin.module"() ({
  "func.func"() <{function_type = () -> tuple<i1, i32>, sym_name = "unconverted_op_result"}> ({
    %0 = "test.source"() : () -> tuple<i1, i32>
    "func.return"(%0) : (tuple<i1, i32>) -> ()
  }) : () -> ()
}) : () -> ()

