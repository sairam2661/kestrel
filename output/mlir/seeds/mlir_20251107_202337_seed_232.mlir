"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x10xi16>) -> tensor<5x10xi16>, sym_name = "complex_tensor_manipulation"}> ({
    ^bb0(%arg0: tensor<5x10xi16>):
      %0 = "arith.constant"() <{value = 3 : i64}> : () -> i64
      %1 = "arith.constant"() <{value = 7 : i64}> : () -> i64
      %2 = "arith.addi"(%0, %1) : (i64, i64) -> i64
      %3 = "arith.constant"() <{value = 0 : index}> : () -> index
      %4 = "arith.constant"() <{value = 1 : index}> : () -> index
      %5 = "arith.constant"() <{value = 2 : index}> : () -> index
      %6 = "arith.constant"() <{value = 3 : index}> : () -> index
      %7 = "tensor.insert"(%2, %arg0, %3, %4) : (i64, tensor<5x10xi16>, index, index) -> tensor<5x10xi16>
      %8 = "tensor.insert"(%2, %7, %5, %6) : (i64, tensor<5x10xi16>, index, index) -> tensor<5x10xi16>
      %9 = "tosa.const"() <{values = dense<1> : tensor<5x10xi1>}  > : () -> tensor<5x10xi1>
      %10 = "tosa.mul"(%8, %9) : (tensor<5x10xi16>, tensor<5x10xi1>) -> tensor<5x10xi16>
      "func.return"(%10) : (tensor<5x10xi16>) -> ()
  }) : () -> ()
}) : () -> ()