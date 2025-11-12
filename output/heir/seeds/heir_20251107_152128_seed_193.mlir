"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_interleave"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    
    %4 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, index) -> i32
    %5 = "tensor.extract"(%arg1, %0) : (tensor<4xi32>, index) -> i32
    %6 = "arith.addi"(%4, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    
    %7 = "tensor.extract"(%arg0, %1) : (tensor<4xi32>, index) -> i32
    %8 = "tensor.extract"(%arg1, %1) : (tensor<4xi32>, index) -> i32
    %9 = "arith.muli"(%7, %8) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    
    %10 = "tensor.extract"(%arg0, %2) : (tensor<4xi32>, index) -> i32
    %11 = "tensor.extract"(%arg1, %2) : (tensor<4xi32>, index) -> i32
    %12 = "arith.subi"(%10, %11) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    
    %13 = "tensor.extract"(%arg0, %3) : (tensor<4xi32>, index) -> i32
    %14 = "tensor.extract"(%arg1, %3) : (tensor<4xi32>, index) -> i32
    %15 = "arith.addi"(%13, %14) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    
    %16 = "tensor.insert"(%6, %arg0, %0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %17 = "tensor.insert"(%9, %16, %1) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %18 = "tensor.insert"(%12, %17, %2) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %19 = "tensor.insert"(%15, %18, %3) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    
    "func.return"(%19) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()