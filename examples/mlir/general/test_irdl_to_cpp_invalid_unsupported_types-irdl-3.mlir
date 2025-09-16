"builtin.module"() ({
  "irdl.dialect"() <{sym_name = "test_irdl_to_cpp"}> ({
    "irdl.operation"() <{sym_name = "test_op"}> ({
      %0 = "irdl.any"() : () -> !irdl.attribute
      "irdl.attributes"(%0) <{attributeValueNames = ["attr"]}> : (!irdl.attribute) -> ()
    }) : () -> ()
  }) : () -> ()
}) : () -> ()

