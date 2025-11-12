"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10xi32>, tensor<10xi32>) -> i32, sym_name = "tensor_sum_with_controls"}> ({
    ^bb0(%arg0: tensor<10xi32>, %arg1: tensor<10xi32>):
      %0 = "arith.constant"() <{value = 0 : index}> : () -> index
      %1 = "arith.constant"() <{value = 10 : index}> : () -> index
      %2 = "arith.constant"() <{value = 1 : index}> : () -> index
      %3 = "scf.for"(%0, %1, %2) ({
        ^bb0(%iv: index, %sum: i32):
          %4 = "tensor.extract"(%arg0, %iv) : (tensor<10xi32>, index) -> i32
          %5 = "tensor.extract"(%arg1, %iv) : (tensor<10xi32>, index) -> i32
          %6 = "arith.addi"(%4, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
          %7 = "arith.addi"(%sum, %6) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
          scf.yield %iv, %7 : index, i32
      }) : (index, tensor<10xi32>) -> (index, i32)
      %8 = "scf.extract_value"(%3) : (tuple<index, i32>) -> i32
      "func.return"(%8) : (i32) -> ()
  }) : () -> ()
}) : () -> ()