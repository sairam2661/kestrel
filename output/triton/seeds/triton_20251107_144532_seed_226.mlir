"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %0 = "arith.constant"() <{value = dense<10> : tensor<8xi32>}> : () -> tensor<8xi32>
    %1 = "arith.addi"(%arg0, %arg1) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %2 = "arith.muli"(%1, %0) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %3 = "arith.xori"(%2, %arg0) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %4 = "arith.cmpi"(%3, %arg1) <{predicate = 1 : i64}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi1>
    %5 = "arith.constant"() <{value = dense<0> : tensor<8xi32>}> : () -> tensor<8xi32>
    %6 = "arith.select"(%4, %3, %5) : (tensor<8xi1>, tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %7 = "arith.remsi"(%6, %0) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    "tt.return"(%7) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()