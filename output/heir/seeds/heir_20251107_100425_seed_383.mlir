"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi16>, tensor<2x2xi16>) -> tensor<2x2xi16>, sym_name = "tensor_operations"}> ({
  ^bb0(%arg0: tensor<2x2xi16>, %arg1: tensor<2x2xi16>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "tensor.extract"(%arg0, %0) : (tensor<2x2xi16>, index) -> i16
    %5 = "tensor.extract"(%arg0, %1) : (tensor<2x2xi16>, index) -> i16
    %6 = "tensor.extract"(%arg0, %2) : (tensor<2x2xi16>, index) -> i16
    %7 = "tensor.extract"(%arg0, %3) : (tensor<2x2xi16>, index) -> i16
    %8 = "tensor.extract"(%arg1, %0) : (tensor<2x2xi16>, index) -> i16
    %9 = "tensor.extract"(%arg1, %1) : (tensor<2x2xi16>, index) -> i16
    %10 = "tensor.extract"(%arg1, %2) : (tensor<2x2xi16>, index) -> i16
    %11 = "tensor.extract"(%arg1, %3) : (tensor<2x2xi16>, index) -> i16
    %12 = "arith.addi"(%4, %8) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
    %13 = "arith.addi"(%5, %9) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
    %14 = "arith.addi"(%6, %10) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
    %15 = "arith.addi"(%7, %11) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
    %16 = "tensor.insert"(%12, %arg0, %0) : (i16, tensor<2x2xi16>, index) -> tensor<2x2xi16>
    %17 = "tensor.insert"(%13, %16, %1) : (i16, tensor<2x2xi16>, index) -> tensor<2x2xi16>
    %18 = "tensor.insert"(%14, %17, %2) : (i16, tensor<2x2xi16>, index) -> tensor<2x2xi16>
    %19 = "tensor.insert"(%15, %18, %3) : (i16, tensor<2x2xi16>, index) -> tensor<2x2xi16>
    "func.return"(%19) : (tensor<2x2xi16>) -> ()
  }) : () -> ()
}) : () -> ()