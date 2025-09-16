"builtin.module"() ({
  "func.func"() <{function_type = () -> !quant.any<i8>, sym_name = "parseOnlyStorageType"}> ({
    %0 = "foo"() : () -> !quant.any<i8>
    "func.return"(%0) : (!quant.any<i8>) -> ()
  }) : () -> ()
}) : () -> ()

