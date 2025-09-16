"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "allowed_cases_pass"}> ({
    "test.op_with_bit_enum"() <{value = #test.bit_enum<read, write>}> : () -> ()
    "test.op_with_bit_enum"() <{value = #test.bit_enum<read, execute>}> : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

