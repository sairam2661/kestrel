"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi8>, tensor<32xi32>) -> tensor<32xi32>, sym_name = "mixed_types"}> ({
    ^bb0(%arg0: tensor<32xi8>, %arg1: tensor<32xi32>):
      %0 = "arith.constant"() <{value = dense<10> : tensor<32xi32>}> : () -> tensor<32xi32>
      %1 = "arith.addi"(%arg1, %0) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %2 = "arith.constant"() <{value = dense<5> : tensor<32xi8>}> : () -> tensor<32xi8>
      %3 = "arith.xori"(%arg0, %2) : (tensor<32xi8>, tensor<32xi8>) -> tensor<32xi8>
      %4 = "arith.constant"() <{value = dense<255> : tensor<32xi8>}> : () -> tensor<32xi8>
      %5 = "arith.cmpi"(%3, %4) <{predicate = 1 : i64}> : (tensor<32xi8>, tensor<32xi8>) -> tensor<32xi1>
      %6 = "arith.constant"() <{value = dense<0> : tensor<32xi32>}> : () -> tensor<32xi32>
      %7 = "arith.select"(%5, %6, %1) : (tensor<32xi1>, tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "tt.return"(%7) : (tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()