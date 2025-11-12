"builtin.module"() ({
  "func.func"() <{function_type = () -> !util.buffer, sym_name = "buffer_constant_string"}> ({
    %0 = "util.buffer.constant"() <{value = "hello"}> : () -> !util.buffer
    "func.return"(%0) : (!util.buffer) -> ()
  }) : () -> ()
}) : () -> ()

