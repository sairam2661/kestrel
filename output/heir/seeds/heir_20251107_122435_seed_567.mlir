"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi32>) -> tensor<8xi32>, sym_name = "complex_tensor_rotation_and_control_flow"}> ({
  ^bb0(%arg0: tensor<8xi32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %4 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %5 = "arith.constant"() <{value = 6 : i32}> : () -> i32
    %6 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %7 = "arith.constant"() <{value = 8 : i32}> : () -> i32
    %8 = "arith.constant"() <{value = 0 : index}> : () -> index
    %9 = "tensor_ext.rotate"(%arg0, %0) : (tensor<8xi32>, i32) -> tensor<8xi32>
    %10 = "tensor_ext.rotate"(%arg0, %1) : (tensor<8xi32>, i32) -> tensor<8xi32>
    %11 = "arith.addi"(%9, %10) <{overflowFlags = #arithoverflownone}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %12 = "scf.for"(%8, %8, %7) ({
    ^bb1(%iv: index):
      %13 = "arith.select"(%iv, %arg0, %11) : (index, tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
      %14 = "tensor.extract"(%13, %iv) : (tensor<8xi32>, index) -> i32
      %15 = "arith.addi"(%14, %2) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      "scf.yield"(%15) : (i32) -> ()
    }) : (index, tensor<8xi32>) -> tensor<8xi32>
    "func.return"(%12) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()