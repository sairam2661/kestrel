"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x256xi8>, tensor<1x256xi8>) -> tensor<1x256xi8>, sym_name = "xor_byte_arrays"}> ({
  ^bb0(%arg0: tensor<1x256xi8>, %arg1: tensor<1x256xi8>):
    %0 = "tensor.empty"() : () -> tensor<1x256xi8>
    %1 = "linalg.map"(%arg0, %arg1, %0) ({
    ^bb0(%arg2: i8, %arg3: i8):
      %2 = "arith.xori"(%arg2, %arg3) <{fastmath = #arith_fastmathattrs}> : (i8, i8) -> i8
      "linalg.yield"(%2) : (i8) -> ()
    }) : (tensor<1x256xi8>, tensor<1x256xi8>, tensor<1x256xi8>) -> tensor<1x256xi8>
    "func.return"(%1) : (tensor<1x256xi8>) -> ()
  }) : () -> ()
}) : () -> ()