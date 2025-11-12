"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>, sym_name = "complex_tensor_op"}> ({
  ^bb0(%arg0: tensor<1024xi32>, %arg1: tensor<1024xi32>):
    %0 = "arith.constant"() <{value = dense<3> : tensor<1024xi32>}> : () -> tensor<1024xi32>
    %1 = "tensor.empty"() : () -> tensor<1024xi32>
    %2 = "linalg.map"(%0, %arg0, %1) ({
    ^bb0(%arg2: i32, %arg3: i32, %arg4: i32):
      %5 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
      "linalg.yield"(%5) : (i32) -> ()
    }) : (tensor<1024xi32>, tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
    %3 = "linalg.map"(%arg1, %2, %1) ({
    ^bb0(%arg5: i32, %arg6: i32, %arg7: i32):
      %8 = "arith.muli"(%arg5, %arg6) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
      "linalg.yield"(%8) : (i32) -> ()
    }) : (tensor<1024xi32>, tensor<1024xi32>, tensor<1024xi32>) -> tensor<1024xi32>
    %4 = "scf.for"(%c0_i32) <{lower_bound = 0 : index, upper_bound = 256 : index, step = 1 : index}> ({
    ^bb0(%iv: index, %iv_inv: index):
      %9 = "arith.addi"(%iv, %iv_inv) <{overflowFlags = #arith_overflow_flags}> : (index, index) -> index
      %10 = "arith.extui"(%9) <{sourceType = i32, resultType = i64}> : (i32) -> i64
      "scf.yield"(%10) : (i64) -> ()
    }) : (index, index) -> i64
    "func.return"(%3) : (tensor<1024xi32>) -> ()
  }) : () -> ()
}) : () -> ()