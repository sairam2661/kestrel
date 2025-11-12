"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>) -> i32, sym_name = "complex_tensor_sum"}> ({
  ^bb0(%arg0: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %3 = "scf.for"(%0, %1, %2) <{upperBound = 4 : index, step = 1 : index}> ({
    ^bb1(%iv: index, %acc: i32):
      %4 = "tensor.extract"(%arg0, %iv) : (tensor<4xi32>, index) -> i32
      %5 = "arith.addi"(%acc, %4) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
      "scf.yield"(%5) : (i32) -> ()
    }) : (i32) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()