"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "complex_tensor_operations"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "tensor_ext.rotate"(%arg0, %0) : (tensor<4xi32>, index) -> tensor<4xi32>
    %2 = "tensor.extract"(%1, %0) : (tensor<4xi32>, index) -> i32
    %3 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %4 = "arith.muli"(%2, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "arith.constant"() <{value = 3 : index}> : () -> index
    %6 = "tensor.extract"(%arg1, %5) : (tensor<4xi32>, index) -> i32
    %7 = "arith.addi"(%4, %6) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %8 = "arith.constant"() <{value = 0 : index}> : () -> index
    %9 = "tensor.extract"(%arg0, %8) : (tensor<4xi32>, index) -> i32
    %10 = "arith.select"(%7, %9, %0) : (i32, i32, i32) -> i32
    %11 = "tensor.insert"(%10, %arg1, %8) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%11) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()