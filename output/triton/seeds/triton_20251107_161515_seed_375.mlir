"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 16 : i32}], function_type = (i64) -> (tensor<64xi32>, tensor<64xf32>), sym_name = "complex_op"}> ({
  ^bb0(%arg0: i64):
    %0 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
    %1 = "arith.constant"() <{value = dense<2> : tensor<64xi32>}> : () -> tensor<64xi32>
    %2 = "arith.muli"(%0, %1) <{overflowFlags = #arith_overflow_none}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %3 = "arith.constant"() <{value = dense<1.0> : tensor<64xf32>}> : () -> tensor<64xf32>
    %4 = "arith.addi"(%2, %0) <{overflowFlags = #arith_overflow_none}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %5 = "arith.xori"(%4, %0) <{overflowFlags = #arith_overflow_none}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %6 = "arith.remsi"(%5, %1) <{overflowFlags = #arith_overflow_none}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %7 = "arith.select"(%arg0, %6, %2) <{overflowFlags = #arith_overflow_none}> : (i64, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %8 = "arith.subi"(%2, %0) <{overflowFlags = #arith_overflow_none}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %9 = "tt.reduce"(%8) <{operation = "sum", type = tensor<64xi32>}> : (tensor<64xi32>) -> tensor<64xi32>
    "tt.return"(%7, %3) : (tensor<64xi32>, tensor<64xf32>) -> ()
  }) : () -> ()
}) : () -> ()