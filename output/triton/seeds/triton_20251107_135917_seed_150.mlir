"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32, i32) -> (tensor<16xi32>, tensor<16xi32>), sym_name = "complex_if_for"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "arith.constant"() <{value = dense<2> : tensor<16xi32>}> : () -> tensor<16xi32>
    %1 = "arith.constant"() <{value = dense<3> : tensor<16xi32>}> : () -> tensor<16xi32>
    %2 = "arith.cmpi"(%arg0, %arg1, "slt") : (i32, i32) -> i1
    %3:2 = "scf.if"(%2) ({
      %4 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %5 = "tt.make_range"(%4, %4, %arg2) : (i32, i32, i32) -> tensor<16xi32>
      "scf.yield"(%5, %1) : (tensor<16xi32>, tensor<16xi32>) -> ()
    }, {
      %6 = "arith.addi"(%arg0, %arg2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %7 = "tt.make_range"(%6, %6, %arg1) : (i32, i32, i32) -> tensor<16xi32>
      "scf.yield"(%0, %7) : (tensor<16xi32>, tensor<16xi32>) -> ()
    }) : (i1) -> (tensor<16xi32>, tensor<16xi32>)
    "tt.return"(%3#0, %3#1) : (tensor<16xi32>, tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()