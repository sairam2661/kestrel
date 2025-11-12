"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %0 = "arith.constant"() <{value = dense<5> : tensor<8xi32>}> : () -> tensor<8xi32>
    %1 = "arith.addi"(%arg0, %arg1) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %2 = "arith.subi"(%1, %0) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %3 = "arith.muli"(%2, %0) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %4 = "arith.cmpi"(%3, %arg1) <{predicate = 1 : i64}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi1>
    %5 = "arith.select"(%4, %3, %arg0) : (tensor<8xi1>, tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %6 = "arith.divsi"(%5, %0) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %7 = "arith.remsi"(%6, %0) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    "tt.return"(%7) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()