"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> i32, sym_name = "complex_tensor_sum"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 8 : index}> : () -> index
    %2 = "scf.for"(%0, %1, %0) <{step = 1 : i32}> ({
    ^bb1(%iv: i32, %iv_end: i32, %iv_step: i32):
      %3 = "tensor.extract"(%arg0, %iv) : (tensor<8xi32>, index) -> i32
      %4 = "tensor.extract"(%arg1, %iv) : (tensor<8xi32>, index) -> i32
      %5 = "arith.addi"(%3, %4) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
      "scf.yield"(%5) : (i32) -> ()
    }) : (i32)
    "func.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()