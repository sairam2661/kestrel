"builtin.module"() ({
  "tt.func"() <{function_type = () -> (tensor<32x32xi32>, tensor<32xi32>), sym_name = "complex_tensor_operations"}> ({
    %0 = "tt.make_range"() <{end = 32 : i32, start = 0 : i32}> : () -> tensor<32xi32>
    %1 = "tt.expand_dims"(%0) <{axis = 1 : i32}> : (tensor<32xi32>) -> tensor<32x1xi32>
    %2 = "tt.broadcast"(%1) : (tensor<32x1xi32>) -> tensor<32x32xi32>
    %3 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %4 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %5 = "arith.addi"(%3, %4) : (i32, i32) -> i32
    %6 = "arith.constant"() <{value = dense<false> : tensor<32xi1>}> : () -> tensor<32xi1>
    %7 = "arith.constant"() <{value = dense<true> : tensor<32xi1>}> : () -> tensor<32xi1>
    %8 = "arith.select"(%6, %5, %4) : (tensor<32xi1>, i32, i32) -> i32
    %9 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %10 = "arith.cmpi"(%5, %9, "eq") : (i32, i32) -> tensor<1xi1>
    %11 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %12 = "tt.make_range"() <{end = 32 : i32, start = 1 : i32}> : () -> tensor<32xi32>
    %13 = "arith.addi"(%2, %12) : (tensor<32x32xi32>, tensor<32xi32>) -> tensor<32x32xi32>
    "tt.return"(%13, %10) : (tensor<32x32xi32>, tensor<1xi1>) -> ()
  }) : () -> ()
}) : () -> ()