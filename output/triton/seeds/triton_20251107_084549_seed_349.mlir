"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %0 = "arith.constant"() <{value = dense<2> : tensor<8xi32>}> : () -> tensor<8xi32>
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflowFlags}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %2 = "arith.muli"(%1, %0) <{overflowFlags = #arith_overflowFlags}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %3 = "arith.divsi"(%2, %0) <{signedness = #arithSignedness}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %4 = "arith.remsi"(%3, %0) <{signedness = #arithSignedness}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %5 = "arith.cmpi"(%arg0, %arg1) <{predicate = 1 : i64}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi1>
    %6 = "arith.select"(%5, %arg0, %arg1) : (tensor<8xi1>, tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %7 = "tt.expand_dims"(%6) <{axis = 1 : i32}> : (tensor<8xi32>) -> tensor<8x1xi32>
    %8 = "tt.reduce"(%7) <{operation = "add", dimensions = [1]}> : (tensor<8x1xi32>) -> tensor<8xi32>
    "tt.return"(%8) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()