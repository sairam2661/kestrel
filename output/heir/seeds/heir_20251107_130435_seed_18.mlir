"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi16>, tensor<4xi16>) -> tensor<4xi32>, sym_name = "tensor_add_mul"}> ({
  ^bb0(%arg0: tensor<4xi16>, %arg1: tensor<4xi16>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "tensor.extract"(%arg0, %0) : (tensor<4xi16>, index) -> i16
    %5 = "tensor.extract"(%arg0, %1) : (tensor<4xi16>, index) -> i16
    %6 = "tensor.extract"(%arg0, %2) : (tensor<4xi16>, index) -> i16
    %7 = "tensor.extract"(%arg0, %3) : (tensor<4xi16>, index) -> i16
    %8 = "tensor.extract"(%arg1, %0) : (tensor<4xi16>, index) -> i16
    %9 = "tensor.extract"(%arg1, %1) : (tensor<4xi16>, index) -> i16
    %10 = "tensor.extract"(%arg1, %2) : (tensor<4xi16>, index) -> i16
    %11 = "tensor.extract"(%arg1, %3) : (tensor<4xi16>, index) -> i16
    %12 = "arith.muli"(%4, %8) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i32
    %13 = "arith.muli"(%5, %9) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i32
    %14 = "arith.muli"(%6, %10) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i32
    %15 = "arith.muli"(%7, %11) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i32
    %16 = "arith.addi"(%12, %13) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %17 = "arith.addi"(%16, %14) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %18 = "arith.addi"(%17, %15) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %19 = "tensor.empty"() <{shape = [4], elementType = i32}> : () -> tensor<4xi32>
    %20 = "tensor.insert"(%18, %19, %0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%20) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()