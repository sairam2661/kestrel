"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "complex_op"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.constant"() <{value = dense<10> : tensor<16xi32>}> : () -> tensor<16xi32>
    %1 = "arith.addi"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %2 = "arith.mulsi"(%1, %0) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %3 = "arith.remsi"(%2, %arg0) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %4 = "tt.make_range"() <{end = 16 : i32, start = 0 : i32}> : () -> tensor<16xi32>
    %5 = "arith.cmpi"(%4, %arg1) <{predicate = 0 : i64}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
    %6 = "arith.select"(%5, %arg0, %arg1) : (tensor<16xi1>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %7 = "tt.expand_dims"(%6) <{axis = 1 : i32}> : (tensor<16xi32>) -> tensor<16x1xi32>
    %8 = "arith.constant"() <{value = dense<2> : tensor<16xi32>}> : () -> tensor<16xi32>
    %9 = "arith.addi"(%8, %6) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "tt.return"(%9) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()