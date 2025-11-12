"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5xi32>, tensor<5xi32>) -> tensor<5xi32>, sym_name = "complex_insert_extract"}> ({
  ^bb0(%arg0: tensor<5xi32>, %arg1: tensor<5xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %5 = "tensor.extract"(%arg0, %0) : (tensor<5xi32>, index) -> i32
    %6 = "tensor.extract"(%arg0, %1) : (tensor<5xi32>, index) -> i32
    %7 = "arith.addi"(%5, %6) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %8 = "tensor.insert"(%7, %arg1, %2) : (i32, tensor<5xi32>, index) -> tensor<5xi32>
    %9 = "tensor.extract"(%arg0, %2) : (tensor<5xi32>, index) -> i32
    %10 = "arith.muli"(%9, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %11 = "tensor.insert"(%10, %8, %3) : (i32, tensor<5xi32>, index) -> tensor<5xi32>
    %12 = "tensor.extract"(%arg0, %3) : (tensor<5xi32>, index) -> i32
    %13 = "arith.addi"(%12, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %14 = "tensor.insert"(%13, %11, %4) : (i32, tensor<5xi32>, index) -> tensor<5xi32>
    "func.return"(%14) : (tensor<5xi32>) -> ()
  }) : () -> ()
}) : () -> ()