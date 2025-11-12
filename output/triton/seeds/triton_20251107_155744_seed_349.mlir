"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>, sym_name = "mixed_operations"}> ({
    ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>):
      %0 = "arith.addi"(%arg0, %arg1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %1 = "arith.muli"(%0, %arg0) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %2 = "arith.constant"() <{value = dense<1> : tensor<32xi32>}> : () -> tensor<32xi32>
      %3 = "arith.xori"(%1, %2) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %4 = "tt.make_range"() <{end = 32 : i32, start = 0 : i32}> : () -> tensor<32xi32>
      %5 = "arith.select"(%arg0, %4, %3) : (tensor<32xi32>, tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %6 = "arith.subi"(%5, %2) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "tt.return"(%6) : (tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()