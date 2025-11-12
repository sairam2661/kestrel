"builtin.module"() ({
  "func.func"() <{function_type = (tensor<512xi8>, tensor<512xi8>) -> tensor<512xi8>, sym_name = "xor_with_accumulation"}> ({
  ^bb0(%arg0: tensor<512xi8>, %arg1: tensor<512xi8>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 4 : index}> : () -> index
    %4 = "arith.constant"() <{value = 8 : index}> : () -> index
    %5 = "arith.constant"() <{value = 16 : index}> : () -> index
    %6 = "arith.constant"() <{value = 32 : index}> : () -> index
    %7 = "arith.constant"() <{value = 64 : index}> : () -> index
    %8 = "arith.constant"() <{value = 128 : index}> : () -> index
    %9 = "arith.constant"() <{value = 256 : index}> : () -> index
    %10 = "arith.constant"() <{value = 512 : index}> : () -> index
    %11 = "scf.for"(%0, %10, %1) ({
    ^bb0(%iv: index):
      %12 = "tensor.extract"(%arg0, %iv) : (tensor<512xi8>, index) -> i8
      %13 = "tensor.extract"(%arg1, %iv) : (tensor<512xi8>, index) -> i8
      %14 = "arith.xori"(%12, %13) : (i8, i8) -> i8
      %15 = "tensor.extract"(%arg0, %iv) : (tensor<512xi8>, index) -> i8
      %16 = "arith.addi"(%14, %14) <{overflowFlags = #arith_overflow_mode}> : (i8, i8) -> i8
      %17 = "arith.addi"(%16, %16) <{overflowFlags = #arith_overflow_mode}> : (i8, i8) -> i8
      %18 = "tensor.insert"(%17, %arg0, %iv) : (i8, tensor<512xi8>, index) -> tensor<512xi8>
      "scf.yield"
    (tensor<512xi8>) 
    ({
    }) : () -> ()
  }) : (tensor<512xi8>) -> ()
  "func.return"(%11) : (tensor<512xi8>) -> ()
  }) : () -> ()
}) : () -> ()