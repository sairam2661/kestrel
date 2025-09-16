"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "clone_unregistered_with_attrs"}> ({
    "unregistered.foo"() <{bar = 1 : i64, flag = true, name = "test", value = 3.140000e+00 : f32}> : () -> ()
    "unregistered.bar"() : () -> ()
    "unregistered.empty_dict"() <{}> : () -> ()
    "unregistered.complex"() <{array = [1, 2, 3], dict = {key1 = 42 : i32, key2 = "value"}, nested = {inner = {deep = 100 : i64}}}> : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

