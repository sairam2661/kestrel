"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> i32, sym_name = "tensor_sum_with_control_flow"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 8 : index}> : () -> index
    %3 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %4 = "tensor.extract"(%arg0, %0) : (tensor<8xi32>, index) -> i32
    %5 = "tensor.extract"(%arg1, %0) : (tensor<8xi32>, index) -> i32
    %6 = "arith.addi"(%4, %5) <{overflowFlags = #arith_overflow_mode}> : (i32, i32) -> i32
    %7 = "scf.for"(%0, %2, %1) ({
    ^bb1(%iv: index):
      %8 = "tensor.extract"(%arg0, %iv) : (tensor<8xi32>, index) -> i32
      %9 = "tensor.extract"(%arg1, %iv) : (tensor<8xi32>, index) -> i32
      %10 = "arith.addi"(%6, %8) <{overflowFlags = #arith_overflow_mode}> : (i32, i32) -> i32
      %11 = "arith.addi"(%10, %9) <{overflowFlags = #arith_overflow_mode}> : (i32, i32) -> i32
      "scf.yield"(%11) : (i32) -> ()
    }) : (index, index, index) -> i32
    "func.return"(%7) : (i32) -> ()
  }) : () -> ()
}) : () -> ()