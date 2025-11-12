"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xi32>) -> (tensor<64xi32>), sym_name = "complex_reduce_and_add"}> ({
  ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>):
    %0 = "arith.constant"() <{value = dense<1> : tensor<64xi32>}> : () -> tensor<64xi32>
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %2 = "tt.reduce"(%1) ({
      ^bb1(%arg2: tensor<64xi32>, %arg3: tensor<64xi32>):
        %4 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
        "scf.yield"(%4) : (tensor<64xi32>) -> ()
    }) : (tensor<64xi32>) -> tensor<64xi32>
    "tt.return"(%2) : (tensor<64xi32>) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (i32) -> (tensor<64xi32>), sym_name = "expand_and_reduce"}> ({
  ^bb2(%arg4: i32):
    %5 = "arith.constant"() <{value = dense<128> : tensor<64xi32>}> : () -> tensor<64xi32>
    %6 = "tt.expand_dims"(%5) <{axis = 0 : i32}> : (tensor<64xi32>) -> tensor<1x64xi32>
    %7 = "tt.reduce"(%6) ({
      ^bb3(%arg5: tensor<1x64xi32>, %arg6: tensor<1x64xi32>):
        %8 = "arith.addi"(%arg5, %arg6) <{overflowFlags = #arith_overflownone}> : (tensor<1x64xi32>, tensor<1x64xi32>) -> tensor<1x64xi32>
        "scf.yield"(%8) : (tensor<1x64xi32>) -> ()
    }) : (tensor<1x64xi32>) -> tensor<64xi32>
    "tt.return"(%7) : (tensor<64xi32>) -> ()
  }) : () -> ()
}) : () -> ()