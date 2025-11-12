"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16x32xi32>, i32) -> tensor<16x32xi32>, sym_name = "complex_reduce"}> ({
  ^bb0(%arg0: tensor<16x32xi32>, %arg1: i32):
    %0 = "tt.make_range"() <{end = 32 : i32, start = 0 : i32}> : () -> tensor<32xi32>
    %1 = "arith.constant"() <{value = dense<2> : tensor<32xi32>}> : () -> tensor<32xi32>
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflow_none}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %3 = "tt.expand_dims"(%2) <{axis = 0 : i32}> : (tensor<32xi32>) -> tensor<1x32xi32>
    %4 = "arith.addi"(%arg0, %3) <{overflowFlags = #arith_overflow_none}> : (tensor<16x32xi32>, tensor<1x32xi32>) -> tensor<16x32xi32>
    %5 = "arith.cmpi"(%4, %arg1) <{predicate = "slt"}> : (tensor<16x32xi32>, i32) -> tensor<16x32xi1>
    %6 = "arith.select"(%5, %4, %0) : (tensor<16x32xi1>, tensor<16x32xi32>, tensor<32xi32>) -> tensor<16x32xi32>
    "tt.return"(%6) : (tensor<16x32xi32>) -> ()
  }) : () -> ()
}) : () -> ()