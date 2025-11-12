"builtin.module"() ({
  "func.func"() <{function_type = (tensor<32xi8>, tensor<32xi8>) -> tensor<32xi8>, sym_name = "xor_combine"}> ({
  ^bb0(%arg0: tensor<32xi8>, %arg1: tensor<32xi8>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "scf.for"() <{lowerBound = 0 : index, upperBound = 32 : index, step = 1 : index}> ({
    ^bb0(%iv: index):
      %4 = "tensor.extract"(%arg0, %iv) : (tensor<32xi8>, index) -> i8
      %5 = "tensor.extract"(%arg1, %iv) : (tensor<32xi8>, index) -> i8
      %6 = "arith.xori"(%4, %5) <{overflowFlags = #arithoverflownone}> : (i8, i8) -> i8
      %7 = "arith.addi"(%iv, %1) <{overflowFlags = #arithoverflownone}> : (index, index) -> index
      %8 = "scf.yield"(%7) : (index) -> ()
    }) : tensor<32xi8>
    "func.return"(%3) : (tensor<32xi8>) -> ()
  }) : () -> ()
}) : () -> ()