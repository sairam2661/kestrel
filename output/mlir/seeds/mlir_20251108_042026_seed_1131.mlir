"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>, tensor<8xi8>) -> tensor<4xi8>, sym_name = "tensor_xor_mismatch"}> ({
  ^bb0(%arg0: tensor<4xi8>, %arg1: tensor<8xi8>):
    %0 = "tosa.extract_slice"(%arg1, %c0_i64, %c4_i64, %c1_i64, %c1_i64) : (tensor<8xi8>, index, index, index, index) -> tensor<4xi8>
    %1 = "tosa.xor"(%arg0, %0) : (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>
    "func.return"(%1) : (tensor<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()