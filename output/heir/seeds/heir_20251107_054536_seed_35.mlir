"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_mix"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, index) -> i32
    %3 = "tensor.extract"(%arg0, %1) : (tensor<4xi32>, index) -> i32
    %4 = "arith.constant"() <{value = 2 : index}> : () -> index
    %5 = "tensor.extract"(%arg1, %4) : (tensor<4xi32>, index) -> i32
    %6 = "arith.addi"(%2, %5) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %7 = "tensor.insert"(%6, %arg0, %0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %8 = "arith.addi"(%3, %5) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %9 = "tensor.insert"(%8, %7, %1) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%9) : (tensor<4xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_mix2"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "tensor.extract"(%arg0, %1) : (tensor<4xi32>, index) -> i32
    %3 = "tensor.extract"(%arg1, %0) : (tensor<4xi32>, index) -> i32
    %4 = "arith.constant"() <{value = 2 : index}> : () -> index
    %5 = "tensor.extract"(%arg1, %4) : (tensor<4xi32>, index) -> i32
    %6 = "arith.addi"(%2, %5) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %7 = "tensor.insert"(%6, %arg0, %1) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %8 = "arith.addi"(%3, %5) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %9 = "tensor.insert"(%8, %7, %0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%9) : (tensor<4xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_mix3"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, index) -> i32
    %3 = "tensor.extract"(%arg1, %0) : (tensor<4xi32>, index) -> i32
    %4 = "arith.addi"(%2, %3) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %5 = "tensor.insert"(%4, %arg0, %0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %6 = "arith.constant"() <{value = 2 : index}> : () -> index
    %7 = "tensor.extract"(%arg0, %6) : (tensor<4xi32>, index) -> i32
    %8 = "tensor.extract"(%arg1, %6) : (tensor<4xi32>, index) -> i32
    %9 = "arith.addi"(%7, %8) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %10 = "tensor.insert"(%9, %5, %6) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%10) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()