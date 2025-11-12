"builtin.module"() ({
  "func.func"() <{function_type = (tensor<512xi8>, tensor<512xi8>) -> tensor<512xi8>, sym_name = "tensor_xor"}> ({
  ^bb0(%arg0: tensor<512xi8>, %arg1: tensor<512xi8>):
    %0 = "scf.for"() <{lowerBound = 0 : index, upperBound = 512 : index, step = 1 : index}> ({
    ^bb1(%iv: index):
      %1 = "arith.constant"() <{value = -1 : i8}> : () -> i8
      %2 = "arith.xori"(%arg0, %arg1) <{overflowFlags = #arith_OVERFLOW_NONE}> : (tensor<512xi8>, tensor<512xi8>) -> tensor<512xi8>
      "scf.yield"() : () -> ()
    }) : (index) -> ()
    %3 = "arith.xori"(%arg0, %arg1) <{overflowFlags = #arith_OVERFLOW_NONE}> : (tensor<512xi8>, tensor<512xi8>) -> tensor<512xi8>
    "func.return"(%3) : (tensor<512xi8>) -> ()
  }) : () -> ()
}) : () -> ()