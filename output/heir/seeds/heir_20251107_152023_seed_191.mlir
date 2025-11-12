"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi16>) -> tensor<4xi16>, sym_name = "tensor_manipulation"}> ({
  ^bb0(%arg0: tensor<4xi16>):
    %c0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %c1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %c2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %c3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %c4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %c5 = "arith.constant"() <{value = 5 : index}> : () -> index
    %c6 = "arith.constant"() <{value = 6 : index}> : () -> index
    %c7 = "arith.constant"() <{value = 7 : index}> : () -> index
    %c16 = "arith.constant"() <{value = 16 : i16}> : () -> i16
    %c8 = "arith.constant"() <{value = 8 : i16}> : () -> i16
    %0 = "tensor.extract"(%arg0, %c0) : (tensor<4xi16>, index) -> i16
    %1 = "tensor.extract"(%arg0, %c1) : (tensor<4xi16>, index) -> i16
    %2 = "tensor.extract"(%arg0, %c2) : (tensor<4xi16>, index) -> i16
    %3 = "tensor.extract"(%arg0, %c3) : (tensor<4xi16>, index) -> i16
    %4 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
    %5 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
    %6 = "arith.addi"(%4, %c4) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
    %7 = "arith.addi"(%5, %c5) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
    %8 = "tensor.extract"(%arg0, %c6) : (tensor<4xi16>, index) -> i16
    %9 = "tensor.extract"(%arg0, %c7) : (tensor<4xi16>, index) -> i16
    %10 = "arith.addi"(%8, %9) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
    %11 = "arith.addi"(%10, %c6) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
    %12 = "arith.addi"(%7, %c7) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
    %13 = "arith.addi"(%11, %c7) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
    %14 = "arith.addi"(%12, %c8) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
    %15 = "arith.addi"(%13, %c8) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
    %16 = "arith.addi"(%14, %c16) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
    %17 = "tensor.insert"(%15, %arg0, %c0) : (i16, tensor<4xi16>, index) -> tensor<4xi16>
    %18 = "tensor.insert"(%16, %17, %c1) : (i16, tensor<4xi16>, index) -> tensor<4xi16>
    "func.return"(%18) : (tensor<4xi16>) -> ()
  }) : () -> ()
}) : () -> ()