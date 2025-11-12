"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {secret.secret}], function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "complex_mixed_operations"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.constant"() <{value = 4 : index}> : () -> index
    %3 = "arith.constant"() <{value = 6 : index}> : () -> index
    %4 = "arith.constant"() <{value = 3 : index}> : () -> index
    %5 = "tensor.extract"(%arg0, %0) : (tensor<8xi32>, index) -> i32
    %6 = "tensor.extract"(%arg0, %1) : (tensor<8xi32>, index) -> i32
    %7 = "tensor.extract"(%arg0, %2) : (tensor<8xi32>, index) -> i32
    %8 = "tensor.extract"(%arg0, %3) : (tensor<8xi32>, index) -> i32
    %9 = "arith.muli"(%5, %6) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %10 = "arith.addi"(%7, %8) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %11 = "arith.addi"(%9, %10) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %12 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %13 = "tensor.extract"(%12, %4) : (tensor<8xi32>, index) -> i32
    %14 = "arith.muli"(%11, %13) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %15 = "arith.constant"() <{value = 1 : index}> : () -> index
    %16 = "tensor.insert"(%14, %arg1, %15) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    "func.return"(%16) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()