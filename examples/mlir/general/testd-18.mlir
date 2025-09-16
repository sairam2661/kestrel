"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "succeededDynParamsConstraint"}> ({
    %0 = "testd.dynparams"() : () -> !testd.parametric<i32>
    %1 = "testd.dynparams"() : () -> !testd.parametric<i64>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

