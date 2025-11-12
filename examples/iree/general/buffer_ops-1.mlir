"builtin.module"() ({
  "util.func"() <{function_type = () -> !util.buffer, sym_name = "buffer_constant_string", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %0 = "util.buffer.constant"() <{value = "hello"}> : () -> !util.buffer
    "util.return"(%0) : (!util.buffer) -> ()
  }) : () -> ()
}) : () -> ()

