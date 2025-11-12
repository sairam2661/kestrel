"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<128xi32>, !ttgptr) -> (tensor<256xi32>, !ttgptr), sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<128xi32>, %arg2: !ttgptr):
    %0 = "arith.constant"() <{value = 256 : i32}> : () -> i32
    %1 = "tt.expand_dims"(%arg1, %0) : (tensor<128xi32>, i32) -> tensor<128x1x32xi32>
    %2 = "tt.addptr"(%arg2, %arg0) : (!ttgptr, i32) -> !ttgptr
    %3 = "tt.reduce"(%1) <{reductionOp = "arith.addi", identity = dense<0> : tensor<128x1x32xi32>}> : (tensor<128x1x32xi32>) -> tensor<128xi32>
    %4 = "arith.subi"(%3, %0) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, i32) -> tensor<128xi32>
    %5 = "scf.if"(%arg0) ({
      %6 = "arith.addi"(%4, %4) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      "scf.yield"(%6) : (tensor<128xi32>) -> ()
    }, {
      "scf.yield"(%4) : (tensor<128xi32>) -> ()
    }) : (i32) -> tensor<128xi32>
    "tt.return"(%5, %2) : (tensor<128xi32>, !ttgptr) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32, ttg.target = "cuda:90", "ttg.threads-per-warp" = 32 : i32} : () -> ()