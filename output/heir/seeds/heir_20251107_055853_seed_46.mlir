"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi16>, tensor<4xi16>) -> tensor<4xi16>, sym_name = "xor_combine"}> ({
  ^bb0(%arg0: tensor<4xi16>, %arg1: tensor<4xi16>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "tensor.empty"() : () -> tensor<4xi16>
    %5 = "tensor.extract"(%arg0, %0) : (tensor<4xi16>, index) -> i16
    %6 = "tensor.extract"(%arg1, %0) : (tensor<4xi16>, index) -> i16
    %7 = "arith.xori"(%5, %6) <{overflowFlags = #arith_overflow_overflow}> : (i16, i16) -> i16
    %8 = "tensor.insert"(%7, %4, %0) : (i16, tensor<4xi16>, index) -> tensor<4xi16>
    %9 = "tensor.extract"(%arg0, %1) : (tensor<4xi16>, index) -> i16
    %10 = "tensor.extract"(%arg1, %1) : (tensor<4xi16>, index) -> i16
    %11 = "arith.xori"(%9, %10) <{overflowFlags = #arith_overflow_overflow}> : (i16, i16) -> i16
    %12 = "tensor.insert"(%11, %8, %1) : (i16, tensor<4xi16>, index) -> tensor<4xi16>
    %13 = "tensor.extract"(%arg0, %2) : (tensor<4xi16>, index) -> i16
    %14 = "tensor.extract"(%arg1, %2) : (tensor<4xi16>, index) -> i16
    %15 = "arith.xori"(%13, %14) <{overflowFlags = #arith_overflow_overflow}> : (i16, i16) -> i16
    %16 = "tensor.insert"(%15, %12, %2) : (i16, tensor<4xi16>, index) -> tensor<4xi16>
    %17 = "tensor.extract"(%arg0, %3) : (tensor<4xi16>, index) -> i16
    %18 = "tensor.extract"(%arg1, %3) : (tensor<4xi16>, index) -> i16
    %19 = "arith.xori"(%17, %18) <{overflowFlags = #arith_overflow_overflow}> : (i16, i16) -> i16
    %20 = "tensor.insert"(%19, %16, %3) : (i16, tensor<4xi16>, index) -> tensor<4xi16>
    "func.return"(%20) : (tensor<4xi16>) -> ()
  }) : () -> ()
}) : () -> ()