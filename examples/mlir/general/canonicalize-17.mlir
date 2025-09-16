"builtin.module"() ({
  "func.func"() <{function_type = () -> i64, sym_name = "test_materialize_failure"}> ({
    %0 = "index.constant"() <{value = 1234 : index}> : () -> index
    %1 = "index.castu"(%0) : (index) -> i64
    "func.return"(%1) : (i64) -> ()
  }) : () -> ()
}) : () -> ()

