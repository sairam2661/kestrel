"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>, sym_name = "xor_encrypt"}> ({
  ^bb0(%arg0: tensor<4xi8>, %arg1: tensor<4xi8>):
    %0 = "arith.constant"() <{value = 4 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "scf.for"() <{lowerBound = 0 : index, upperBound = 4 : index, step = 1 : index}> ({
    ^bb1(%iv: index):
      %3 = "arith.muli"(%iv, %1) <{overflowFlags = #arithOverflowFlag}> : (index, index) -> index
      %4 = "tensor.extract"(%arg0, %3) : (tensor<4xi8>, index) -> i8
      %5 = "tensor.extract"(%arg1, %3) : (tensor<4xi8>, index) -> i8
      %6 = "arith.xori"(%4, %5) <{overflowFlags = #arithOverflowFlag}> : (i8, i8) -> i8
      %7 = "tensor.insert"(%6, %arg0, %3) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
      "scf.yield"() : () -> ()
    }) : tensor<4xi8>
    "func.return"(%2) : (tensor<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()