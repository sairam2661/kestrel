"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<16xi32>, tensor<16xi32>) -> (i32, tensor<16xi32>), sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<16xi32>, %arg2: tensor<16xi32>):
    %0 = "arith.addi"(%arg1, %arg2) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %1 = "arith.muli"(%arg1, %arg2) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %2 = "arith.subi"(%arg1, %arg2) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %3 = "arith.xori"(%arg1, %arg2) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %4 = "arith.cmpi"(%arg1, %arg2) <{predicate = 0 : i64}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
    %5 = "arith.cmpi"(%arg1, %arg2) <{predicate = 1 : i64}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
    %6 = "tt.expand_dims"(%4) <{axis = 1 : i32}> : (tensor<16xi1>) -> tensor<16x1xi1>
    %7 = "tt.make_range"() <{end = 16 : i32, start = 0 : i32}> : () -> tensor<16xi32>
    %8 = "arith.addi"(%arg0, %7) <{overflowFlags = #arith_overflownone}> : (i32, tensor<16xi32>) -> tensor<16xi32>
    "tt.return"(%arg0, %8) : (i32, tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()