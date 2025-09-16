"builtin.module"() ({
  "func.func"() <{function_type = () -> index, sym_name = "emptyCast"}> ({
    %0 = "builtin.unrealized_conversion_cast"() : () -> index
    "func.return"(%0) : (index) -> ()
  }) : () -> ()
}) : () -> ()

