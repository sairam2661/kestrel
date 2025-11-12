"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<32xi32>) -> (tensor<32xi32>), sym_name = "tensor_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<32xi32>):
    %0 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %1 = "arith.cmpi"(%0, %arg0, "eq") : (i32, i32) -> i1
    %2 = "scf.if"(%1) ({
      %3 = "arith.remsi"(%arg1, %arg0) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, i32) -> tensor<32xi32>
      "scf.yield"(%3) : (tensor<32xi32>) -> ()
    }, {
      %4 = "arith.divsi"(%arg1, %arg0) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, i32) -> tensor<32xi32>
      "scf.yield"(%4) : (tensor<32xi32>) -> ()
    }) : (i1) -> (tensor<32xi32>)
    %5 = "tt.expand_dims"(%2, 1) : (tensor<32xi32>, i32) -> tensor<32x1xi32>
    "tt.return"(%5) : (tensor<32x1xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32} : () -> ()