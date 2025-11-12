"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>) -> tensor<128xi32>, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: tensor<128xi32>):
    %1 = "tt.expand_dims"(%arg0, %c1) <{dimensions = [0]}> : (tensor<128xi32>, i32) -> tensor<1x128xi32>
    %2 = "tt.addptr"(%arg0, %c1, %c32) : (tensor<128xi32>, i32, i32) -> tensor<128xi32>
    %3 = "arith.subi"(%1, %2) <{overflowFlags = #arith_overflownone}> : (tensor<1x128xi32>, tensor<128xi32>) -> tensor<1x128xi32>
    %4 = "tt.reduce"(%3, "add") : (tensor<1x128xi32>, i32) -> tensor<1xi32>
    %5 = "arith.constant"() <{value = dense<42> : tensor<1xi32>}> : () -> tensor<1xi32>
    %6 = "arith.addi"(%4, %5) <{overflowFlags = #arith_overflownone}> : (tensor<1xi32>, tensor<1xi32>) -> tensor<1xi32>
    "tt.return"(%6) : (tensor<1xi32>) -> ()
  }) : (tensor<128xi32>) -> tensor<1xi32>
  "tt.func"() <{function_type = (i1, i32) -> tensor<128xi32>, sym_name = "conditional_add"}> ({
  ^bb0(%arg0: i1, %arg1: i32):
    %2 = "arith.constant"() <{value = dense<64> : tensor<128xi32>}> : () -> tensor<128xi32>
    %3 = "arith.constant"() <{value = dense<1> : tensor<128xi32>}> : () -> tensor<128xi32>
    %4 = "scf.if"(%arg0) ({
      ^bb1:
        %5 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
        "scf.yield"(%5) : (tensor<128xi32>) -> ()
    }, {
      ^bb2:
        "scf.yield"(%2) : (tensor<128xi32>) -> ()
    }) : (i1) -> tensor<128xi32>
    %6 = "tt.call"(%arg1) <{callee = @complex_op_sequence}> : (i32) -> tensor<1xi32>
    %7 = "arith.constant"() <{value = dense<128> : tensor<1xi32>}> : () -> tensor<1xi32>
    %8 = "arith.subi"(%7, %6) <{overflowFlags = #arith_overflownone}> : (tensor<1xi32>, tensor<1xi32>) -> tensor<1xi32>
    "tt.return"(%8) : (tensor<1xi32>) -> ()
  }) : (i1, i32) -> tensor<1xi32>
}) : () -> ()


"ttg.global_scratch_alloc"() ({
  "tt.call"(%c128, %c32) <{callee = @conditional_add}> : (i1, i32) -> tensor<1xi32>
}) : () -> ()