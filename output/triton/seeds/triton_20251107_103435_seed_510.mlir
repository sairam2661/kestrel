"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, tensor<128xi32>) -> (tensor<128xi32>), sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
    %0 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
    %1 = "arith.cmpi"(%arg0, %arg1) <{predicate = 0 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %2 = "arith.select"(%1, %arg0, %arg1) : (tensor<128xi1>, tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %3 = "arith.muli"(%2, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %4 = "arith.subi"(%3, %0) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %5 = "tt.reduce"(%4) ({
      %6 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      "tt.yield"(%6) : (tensor<128xi32>) -> ()
    }) : (tensor<128xi32>) -> tensor<128xi32>
    "tt.return"(%5) : (tensor<128xi32>) -> ()
  }) : () -> ()
}) : () -> ()