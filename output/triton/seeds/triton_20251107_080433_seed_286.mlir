"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> (tensor<16xi32>), sym_name = "tensor_op_combinations"}> ({
    ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
      %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %2 = "arith.muli"(%1, %0) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, i32) -> tensor<16xi32>
      %3 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %4 = "arith.constant"() <{value = 16 : i32}> : () -> i32
      %5:2 = "scf.for"(%3, %4, %3, %3, %3) ({
        ^bb0(%arg2: i32, %arg3: i32):
          %6 = "arith.subi"(%arg2, %arg3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
          %7 = "arith.cmpi"(%6, %0) <{predicate = 0 : i64}> : (i32, i32) -> i1
          %8 = "scf.yield"(%arg2, %arg3) : (i32, i32) -> ()
      }) : (i32, i32) -> (i32, i32)
      %9 = "tt.expand_dims"(%2) <{axis = 0 : i32}> : (tensor<16xi32>) -> tensor<1x16xi32>
      "tt.return"(%9) : (tensor<1x16xi32>) -> ()
  }) : () -> ()
}) : () -> ()