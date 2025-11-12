"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "reduce_and_add"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "tt.reduce"(%arg0, %arg1) <{reductionOp = "tt.add"}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %1 = "arith.constant"() <{value = dense<5> : tensor<16xi32>}> : () -> tensor<16xi32>
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "tt.return"(%2) : (tensor<16xi32>) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (i32, i32) -> tensor<16xi32>, sym_name = "compute"}> ({
  ^bb0(%arg2: i32, %arg3: i32):
    %4 = "arith.constant"() <{value = 16 : i32}> : () -> i32
    %5 = "tt.make_range"() <{end = 16 : i32, start = 0 : i32}> : () -> tensor<16xi32>
    %6 = "tt.expand_dims"(%5) <{axis = 0 : i64}> : (tensor<16xi32>) -> tensor<1x16xi32>
    %7 = "tt.call"(%arg2, %arg3) <{callee = @reduce_and_add}> : (i32, i32) -> tensor<16xi32>
    %8 = "tt.addptr"(%7, %6) <{offset = 0 : i32}> : (tensor<16xi32>, tensor<1x16xi32>) -> tensor<16xi32>
    "tt.return"(%8) : (tensor<16xi32>) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (i32) -> (), sym_name = "main"}> ({
  ^bb0(%arg4: i32):
    %9 = "tt.call"(%arg4, %arg4) <{callee = @compute}> : (i32) -> tensor<16xi32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32} : () -> ()