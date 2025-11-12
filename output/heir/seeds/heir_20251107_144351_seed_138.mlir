"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi32>) -> tensor<8xi32>, sym_name = "custom_tensor_ops"}> ({
  ^bb0(%arg0: tensor<8xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %5 = "arith.constant"() <{value = 5 : index}> : () -> index
    %6 = "arith.constant"() <{value = 6 : index}> : () -> index
    %7 = "arith.constant"() <{value = 7 : index}> : () -> index
    %8 = "tensor.extract"(%arg0, %0) : (tensor<8xi32>, index) -> i32
    %9 = "tensor.extract"(%arg0, %1) : (tensor<8xi32>, index) -> i32
    %10 = "arith.addi"(%8, %9) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %11 = "tensor.insert"(%10, %arg0, %2) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    %12 = "tensor.extract"(%arg0, %3) : (tensor<8xi32>, index) -> i32
    %13 = "tensor.extract"(%arg0, %4) : (tensor<8xi32>, index) -> i32
    %14 = "arith.muli"(%12, %13) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %15 = "tensor.insert"(%14, %arg0, %5) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    %16 = "tensor.extract"(%arg0, %6) : (tensor<8xi32>, index) -> i32
    %17 = "tensor.extract"(%arg0, %7) : (tensor<8xi32>, index) -> i32
    %18 = "arith.subi"(%16, %17) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %19 = "tensor.insert"(%18, %arg0, %7) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    "func.return"(%19) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()