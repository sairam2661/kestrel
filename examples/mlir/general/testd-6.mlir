"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "succeededAnyOfConstraint"}> ({
    %0 = "testd.anyof"() : () -> i32
    %1 = "testd.anyof"() : () -> i64
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

