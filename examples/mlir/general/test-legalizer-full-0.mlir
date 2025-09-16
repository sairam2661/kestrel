"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "multi_level_mapping"}> ({
    %2 = "test.type_producer"() : () -> i32
    "test.type_consumer"(%2) : (i32) -> ()
    "test.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "dropped_region_with_illegal_ops"}> ({
    "test.drop_region_op"() ({
      %1 = "test.illegal_op_f"() : () -> i32
      "test.return"() : () -> ()
    }) : () -> ()
    "test.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "replace_non_root_illegal_op"}> ({
    %0 = "test.replace_non_root"() : () -> i32
    "test.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

