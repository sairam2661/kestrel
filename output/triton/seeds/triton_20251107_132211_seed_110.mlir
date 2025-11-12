"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 32 : i32}, {tt.divisibility = 16 : i32}, {}], function_type = (i32, i32, i32) -> (tensor<16xi32>, i32), sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "tt.make_range"() <{end = 16 : i32, start = 0 : i32}> : () -> tensor<16xi32>
    %2 = "arith.constant"() <{value = dense<2> : tensor<16xi32>}> : () -> tensor<16xi32>
    %3 = "arith.addi"(%1, %2) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %4 = "arith.xori"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "scf.for"(%arg2, %4, %arg1) ({
    ^bb0(%arg3: i32):
      %6 = "arith.select"(%arg3, %3, %1) : (i32, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "scf.yield"() : () -> ()
    }) : (i32, i32, i32) -> ()
    %7:2 = "scf.if"(%arg0) ({
      %8 = "arith.muli"(%3, %3) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %9 = "arith.addi"(%4, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%8, %9) : (tensor<16xi32>, i32) -> ()
    }, {
      %10 = "arith.remsi"(%4, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%1, %10) : (tensor<16xi32>, i32) -> ()
    }) : (i32) -> (tensor<16xi32>, i32)
    "tt.return"(%7#0, %7#1) : (tensor<16xi32>, i32) -> ()
  }) : () -> ()
}) : () -> ()