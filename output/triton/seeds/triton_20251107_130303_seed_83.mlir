"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32, tensor<10xi32>) -> (tensor<10xi32>, tensor<10xi32>), sym_name = "complex_control_flow", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: tensor<10xi32>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %1 = "tt.make_range"(%arg0, %0, %arg1) : (i32, i32, i32) -> tensor<10xi32>
    %2 = "tt.reduce"(%1, %arg2) ({
      ^bb1(%arg3: tensor<10xi32>, %arg4: tensor<10xi32>):
        %5 = "arith.addi"(%arg3, %arg4) <{overflowFlags = #arith_overflownone}> : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
        "scf.yield"(%5) : (tensor<10xi32>) -> ()
      ^bb2(%arg5: tensor<10xi32>, %arg6: tensor<10xi32>):
        %7 = "arith.subi"(%arg5, %arg6) <{overflowFlags = #arith_overflownone}> : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
        "scf.yield"(%7) : (tensor<10xi32>) -> ()
    }) : (i32, i32, tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
    "tt.return"(%1, %2) : (tensor<10xi32>, tensor<10xi32>) -> ()
  }) : () -> ()
}) {"ttg.num_ctas" = 1 : i32, "ttg.num_warps" = 4 : i32} : () -> ()