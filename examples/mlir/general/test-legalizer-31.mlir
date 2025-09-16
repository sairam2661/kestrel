"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "circular_mapping"}> ({
    %0 = "test.erase_op"() ({
      "test.dummy_op_lvl_1"() ({
        "test.dummy_op_lvl_2"() : () -> ()
      }) : () -> ()
    }) : () -> i64
    "test.drop_operands_and_replace_with_valid"(%0) : (i64) -> ()
  }) : () -> ()
}) : () -> ()

