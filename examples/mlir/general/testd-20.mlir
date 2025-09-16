"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "failedDynParamsConstraintParam"}> ({
    %0 = "testd.dynparams"() : () -> !testd.parametric<i1>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

