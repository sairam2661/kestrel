"builtin.module"() ({
  "util.func"() <{function_type = () -> !util.buffer, sym_name = "buffer_constant", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %0 = "util.buffer.constant"() <{value = dense<[1, 2, 3]> : tensor<3xi32>}> : () -> !util.buffer
    "util.return"(%0) : (!util.buffer) -> ()
  }) : () -> ()
}) : () -> ()

