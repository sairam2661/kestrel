"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>) -> i32, sym_name = "sum_tensor_elements"}> ({
  ^bb0(%arg0: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "scf.for"() <{lowerBound = 0 : index, upperBound = 4 : index, step = 1 : index}> ({
    ^bb1(%iv: index):
      %2 = "tensor.extract"(%arg0, %iv) : (tensor<4xi32>, index) -> i32
      %3 = "arith.addi"(%0, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      scf.yield %3 : i32
    }) : (i32) -> i32
    "func.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()