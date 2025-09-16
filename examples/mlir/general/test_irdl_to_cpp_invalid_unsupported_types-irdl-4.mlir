"builtin.module"() ({
  "irdl.dialect"() <{sym_name = "test_irdl_to_cpp"}> ({
    "irdl.type"() <{sym_name = "ty"}> ({
      %0 = "irdl.any"() : () -> !irdl.attribute
      "irdl.parameters"(%0) <{names = ["ty"]}> : (!irdl.attribute) -> ()
    }) : () -> ()
  }) : () -> ()
}) : () -> ()

