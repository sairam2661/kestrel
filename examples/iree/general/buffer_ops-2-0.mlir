"builtin.module"() ({
  "func.func"() <{function_type = () -> !util.buffer, sym_name = "buffer_constant"}> ({
    %0 = "util.buffer.constant"() <{alignment = 64 : index, mime_type = "text/plain", name = "name", value = dense<[1, 2, 3]> : tensor<3xi32>}> : () -> !util.buffer
    "func.return"(%0) : (!util.buffer) -> ()
  }) : () -> ()
}) : () -> ()

