"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "test_two_join"}> ({
    "test.foo"() {tag = "a"} : () -> ()
    "test.foo"() {foo = 1 : ui64, tag = "b"} : () -> ()
    "test.foo"() {foo = 1 : ui64, tag = "c"} : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

