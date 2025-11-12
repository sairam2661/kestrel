"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>, sym_name = "xor_operations"}> ({
  ^bb0(%arg0: tensor<4xi8>, %arg1: tensor<4xi8>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "tensor.extract"(%arg0, %0) : (tensor<4xi8>, index) -> i8
    %5 = "tensor.extract"(%arg1, %0) : (tensor<4xi8>, index) -> i8
    %6 = "arith.xori"(%4, %5) <{overflowFlags = #arith_overflow_flags}> : (i8, i8) -> i8
    %7 = "tensor.extract"(%arg0, %1) : (tensor<4xi8>, index) -> i8
    %8 = "tensor.extract"(%arg1, %1) : (tensor<4xi8>, index) -> i8
    %9 = "arith.xori"(%7, %8) <{overflowFlags = #arith_overflow_flags}> : (i8, i8) -> i8
    %10 = "tensor.extract"(%arg0, %2) : (tensor<4xi8>, index) -> i8
    %11 = "tensor.extract"(%arg1, %2) : (tensor<4xi8>, index) -> i8
    %12 = "arith.xori"(%10, %11) <{overflowFlags = #arith_overflow_flags}> : (i8, i8) -> i8
    %13 = "tensor.extract"(%arg0, %3) : (tensor<4xi8>, index) -> i8
    %14 = "tensor.extract"(%arg1, %3) : (tensor<4xi8>, index) -> i8
    %15 = "arith.xori"(%13, %14) <{overflowFlags = #arith_overflow_flags}> : (i8, i8) -> i8
    %16 = "tensor.insert"(%6, %1, %arg0) : (i8, index, tensor<4xi8>) -> tensor<4xi8>
    %17 = "tensor.insert"(%9, %2, %16) : (i8, index, tensor<4xi8>) -> tensor<4xi8>
    %18 = "tensor.insert"(%12, %3, %17) : (i8, index, tensor<4xi8>) -> tensor<4xi8>
    %19 = "tensor.insert"(%15, %0, %18) : (i8, index, tensor<4xi8>) -> tensor<4xi8>
    "func.return"(%19) : (tensor<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()