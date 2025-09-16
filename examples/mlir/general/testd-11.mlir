"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "succeededAnyConstraint"}> ({
    %0 = "testd.any"() : () -> i32
    %1 = "testd.any"() : () -> i64
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

