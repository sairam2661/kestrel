"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> (tensor<16xi32>), sym_name = "unusual_sequence"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.cmpi"(%arg0, %arg1) <{predicate = 1 : i64}> : (tensor<16xi32>, tensor<16xi32>) -> i1
    %1 = "tt.make_range"() <{end = 16 : i32, start = 0 : i32}> : () -> tensor<16xi32>
    %2 = "arith.xori"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %3 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflow_none}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %4 = "arith.divsi"(%arg0, %arg1) <{signedness = 1 : i1, overflowFlags = #arith_overflow_none}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %5 = "arith.remsi"(%arg0, %arg1) <{signedness = 1 : i1}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %6 = "arith.select"(%0, %arg0, %arg1) : (i1, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "tt.return"(%6) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()