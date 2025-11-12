"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "tensor_rotation_and_ops"}> ({
  ^bb0(%arg0: tensor<4x4xi32>):
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "tensor.extract"(%arg0, %1, %2) : (tensor<4x4xi32>, index, index) -> i32
    %5 = "tensor.extract"(%arg0, %2, %3) : (tensor<4x4xi32>, index, index) -> i32
    %6 = "arith.addi"(%4, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %7 = "tensor_ext.rotate"(%arg0, %6, %1, %2) : (tensor<4x4xi32>, i32, index, index) -> tensor<4x4xi32>
    %8 = "arith.constant"() <{value = dense<[[1, 2], [3, 4]]> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %9 = "tensor.extract"(%7, %2, %3) : (tensor<4x4xi32>, index, index) -> i32
    %10 = "tensor.extract"(%8, %1, %1) : (tensor<2x2xi32>, index, index) -> i32
    %11 = "arith.muli"(%9, %10) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %12 = "tensor.insert"(%11, %7, %3) : (i32, tensor<4x4xi32>, index) -> tensor<4x4xi32>
    "func.return"(%12) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "add_and_sub"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %2 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.select"(%arg0, %2, %3) <{pred = "sgt"}> : (i32, i32, i32) -> i32
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()