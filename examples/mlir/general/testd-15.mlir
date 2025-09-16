"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "succeededNamedBaseConstraint"}> ({
    %0 = "testd.named_type_base"() : () -> i32
    %1 = "testd.named_type_base"() : () -> i64
    "testd.named_attr_base"() {attr1 = 0 : i32} : () -> ()
    "testd.named_attr_base"() {attr1 = 0 : i64} : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

