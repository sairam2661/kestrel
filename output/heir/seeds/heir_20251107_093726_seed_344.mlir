"builtin.module"() ({
  "func.func"() <{function_type = (tensor<32xi8>, index) -> tensor<32xi8>, sym_name = "complex_extract_and_add"}> ({
  ^bb0(%arg0: tensor<32xi8>, %arg1: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "scf.for"(%0, %arg1, %1) ({
    ^bb0(%arg2: index, %arg3: tensor<32xi8>):
      %4 = "tensor.extract"(%arg3, %arg2) : (tensor<32xi8>, index) -> i8
      %5 = "arith.constant"() <{value = 5 : i8}> : () -> i8
      %6 = "arith.addi"(%4, %5) <{overflowFlags = #arith_overflow_flags} > : (i8, i8) -> i8
      %7 = "tensor.insert"(%6, %arg3, %arg2) : (i8, tensor<32xi8>, index) -> tensor<32xi8>
      "scf.yield"(%7) : (tensor<32xi8>) -> ()
    }) : (index, index, index, tensor<32xi8>) -> tensor<32xi8>
    "func.return"(%2) : (tensor<32xi8>) -> ()
  }) : () -> ()
}) : () -> ()