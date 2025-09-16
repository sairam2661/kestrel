"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "attrDoesntFitType"}> ({
    %0 = "testd.any"() : () -> !testd.parametric<"foo">
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

