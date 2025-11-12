"builtin.module"() ({
  "util.func"() <{function_type = () -> index, sym_name = "FoldConstantBufferSizeOp", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %0 = "util.buffer.constant"() <{value = dense<[1, 2, 3]> : tensor<3xi32>}> : () -> !util.buffer
    %1 = "util.buffer.size"(%0) : (!util.buffer) -> index
    "util.return"(%1) : (index) -> ()
  }) : () -> ()
}) : () -> ()

