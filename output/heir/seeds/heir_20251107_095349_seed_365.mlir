"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> i32, sym_name = "complex_tensor_operations"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "tensor_ext.rotate"(%arg0, %0) : (tensor<4xi32>, index) -> tensor<4xi32>
    %3 = "tensor_ext.rotate"(%arg1, %1) : (tensor<4xi32>, index) -> tensor<4xi32>
    %4 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %5 = "tensor_ext.rotate"(%4, %1) : (tensor<4xi32>, index) -> tensor<4xi32>
    %6 = "tensor.extract"(%5, %1) : (tensor<4xi32>, index) -> i32
    %7 = "arith.constant"() <{value = 100 : i32}> : () -> i32
    %8 = "arith.addi"(%6, %7) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %9 = "scf.for"(%0, %1, %8) ({
    ^bb0(%arg2: index, %arg3: i32):
      %10 = "tensor.extract"(%5, %arg2) : (tensor<4xi32>, index) -> i32
      %11 = "arith.addi"(%arg3, %10) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%11) : (i32) -> ()
    }) : (i32) -> i32
    "func.return"(%9) : (i32) -> ()
  }) : () -> ()
}) : () -> ()