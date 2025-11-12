"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi16>) -> tensor<4xi16>, sym_name = "tensor_manipulation"}> ({
  ^bb0(%arg0: tensor<4xi16>):
    %0 = "arith.constant"() <{value = 7 : i16}> : () -> i16
    %1 = "arith.constant"() <{value = 10 : i16}> : () -> i16
    %2 = "arith.constant"() <{value = 15 : i16}> : () -> i16
    %3 = "arith.constant"() <{value = 20 : i16}> : () -> i16
    %4 = "arith.constant"() <{value = 30 : i16}> : () -> i16
    %5 = "arith.constant"() <{value = 40 : i16}> : () -> i16
    %6 = "arith.constant"() <{value = 50 : i16}> : () -> i16
    %7 = "arith.constant"() <{value = 60 : i16}> : () -> i16
    %8 = "tensor.extract"(%arg0, %0) : (tensor<4xi16>, i16) -> i16
    %9 = "tensor.extract"(%arg0, %1) : (tensor<4xi16>, i16) -> i16
    %10 = "tensor.extract"(%arg0, %2) : (tensor<4xi16>, i16) -> i16
    %11 = "tensor.extract"(%arg0, %3) : (tensor<4xi16>, i16) -> i16
    %12 = "arith.addi"(%8, %9) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
    %13 = "arith.addi"(%10, %11) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
    %14 = "arith.addi"(%12, %13) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
    %15 = "tensor.insert"(%14, %arg0, %4) : (i16, tensor<4xi16>, i16) -> tensor<4xi16>
    %16 = "tensor.insert"(%15, %arg0, %5) : (i16, tensor<4xi16>, i16) -> tensor<4xi16>
    %17 = "tensor.insert"(%16, %arg0, %6) : (i16, tensor<4xi16>, i16) -> tensor<4xi16>
    %18 = "tensor.insert"(%17, %arg0, %7) : (i16, tensor<4xi16>, i16) -> tensor<4xi16>
    "func.return"(%18) : (tensor<4xi16>) -> ()
  }) : () -> ()
}) : () -> ()