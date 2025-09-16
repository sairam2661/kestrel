"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "testMultResultsWrongSegmentType"}> ({
    %0:3 = "testvar.var_and_opt_result"() {result_segment_sizes = i32} : () -> (i16, i16, i64)
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

