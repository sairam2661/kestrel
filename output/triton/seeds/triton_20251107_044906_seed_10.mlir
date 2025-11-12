"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "tensor_ops"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %0 = "arith.constant"() <{value = dense<2> : tensor<8xi32>}> : () -> tensor<8xi32>
    %1 = "arith.muli"(%arg0, %0) <{overflowFlags = #arith_overflow_overflow}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %2 = "arith.constant"() <{value = dense<3> : tensor<8xi32>}> : () -> tensor<8xi32>
    %3 = "arith.divsi"(%arg1, %2) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %4 = "arith.cmpi"(%3, %0) <{predicate = 1 : i64}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<1xi1>
    %5 = "arith.select"(%4, %1, %3) : (tensor<1xi1>, tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %6 = "arith.remsi"(%arg0, %2) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %7 = "arith.xori"(%1, %6) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %8 = "arith.addi"(%7, %5) <{overflowFlags = #arith_overflow_positive}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    "tt.return"(%8) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()