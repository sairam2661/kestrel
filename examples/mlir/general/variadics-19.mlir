"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "testSingleResultFail"}> ({
    %0:2 = "testvar.single_result"() : () -> (i32, i32)
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

