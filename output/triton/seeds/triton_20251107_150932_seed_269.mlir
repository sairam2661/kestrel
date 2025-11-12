"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>, sym_name = "complex_op_sequence"}> ({
    ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>):
      %0 = "arith.cmpi"(%arg0, %arg1, "eq") : (tensor<32xi32>, tensor<32xi32>) -> tensor<i1>
      %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %2 = "arith.select"(%0, %1, %arg0) : (tensor<i1>, i32, tensor<32xi32>) -> tensor<32xi32>
      %3 = "arith.addi"(%arg0, %arg1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %4 = "arith.divsi"(%3, %1) : (tensor<32xi32>, i32) -> tensor<32xi32>
      %5 = "arith.xori"(%arg0, %arg1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "tt.return"(%5) : (tensor<32xi32>) -> ()
  }) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
}) : () -> ()