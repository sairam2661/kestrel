"builtin.module"() ({
  "func.func"() <{function_type = () -> i64, sym_name = "f"}> ({
    %0 = "torch_c.get_next_seed"() : () -> i64
    "func.return"(%0) : (i64) -> ()
  }) : () -> ()
}) : () -> ()

