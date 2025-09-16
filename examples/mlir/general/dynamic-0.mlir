"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "succeededDynamicTypeVerifier"}> ({
    %0 = "unregistered_op"() : () -> !test.dynamic_singleton
    %1 = "unregistered_op"() : () -> !test.dynamic_pair<i32, f64>
    %2 = "unregistered_op"() : () -> !test.dynamic_pair<!test.dynamic_pair<i32, f64>, !test.dynamic_singleton>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

