"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x6x16x32xi8>) -> memref<?x?x16x32xi8>, sym_name = "tensor_cast_to_buffer"}> ({
  ^bb0(%arg0: tensor<4x6x16x32xi8>):
    %0 = "tensor.cast"(%arg0) : (tensor<4x6x16x32xi8>) -> tensor<?x?x16x32xi8>
    %1 = "bufferization.to_buffer"(%0) : (tensor<?x?x16x32xi8>) -> memref<?x?x16x32xi8>
    "func.return"(%1) : (memref<?x?x16x32xi8>) -> ()
  }) : () -> ()
}) : () -> ()

