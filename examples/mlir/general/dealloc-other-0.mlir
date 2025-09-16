"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x?xf16>) -> memref<?x?x?xf16>, sym_name = "no_interface_no_operands", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<?x?x?xf16>):
    %0 = "bufferization.to_buffer"(%arg0) : (tensor<?x?x?xf16>) -> memref<?x?x?xf16>
    "func.return"(%0) : (memref<?x?x?xf16>) -> ()
  }) : () -> ()
}) : () -> ()

