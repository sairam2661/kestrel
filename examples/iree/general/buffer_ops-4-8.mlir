"builtin.module"() ({
  "util.func"() <{function_type = () -> i32, sym_name = "buffer_usage", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %0 = "hal.buffer_usage"() <{usage = 3 : i32}> : () -> i32
    "util.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

