"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>, sym_name = "xor_and_shift"}> ({
  ^bb0(%arg0: tensor<4xi8>, %arg1: tensor<4xi8>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "tensor_ext.rotate"(%arg0, %0) : (tensor<4xi8>, index) -> tensor<4xi8>
    %2 = "arith.xori"(%1, %arg1) <{overflowFlags = #arith_overflow_none}> : (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>
    %3 = "arith.constant"() <{value = 2 : index}> : () -> index
    %4 = "tensor_ext.rotate"(%2, %3) : (tensor<4xi8>, index) -> tensor<4xi8>
    "func.return"(%4) : (tensor<4xi8>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>, sym_name = "and_shift_xor"}> ({
  ^bb0(%arg0: tensor<4xi8>, %arg1: tensor<4xi8>):
    %0 = "arith.constant"() <{value = 3 : index}> : () -> index
    %1 = "tensor_ext.rotate"(%arg0, %0) : (tensor<4xi8>, index) -> tensor<4xi8>
    %2 = "arith.andi"(%1, %arg1) <{overflowFlags = #arith_overflow_none}> : (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>
    %3 = "arith.constant"() <{value = 1 : index}> : () -> index
    %4 = "tensor_ext.rotate"(%2, %3) : (tensor<4xi8>, index) -> tensor<4xi8>
    %5 = "arith.xori"(%4, %arg0) <{overflowFlags = #arith_overflow_none}> : (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>
    "func.return"(%5) : (tensor<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()