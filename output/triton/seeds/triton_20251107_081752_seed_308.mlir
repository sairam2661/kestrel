"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<4xi32>) -> (i32, tensor<4xi32>), sym_name = "complex_reduce", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<4xi32>):
    %cst = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %cst1 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %cst2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %cst3 = "arith.constant"() <{value = dense<0> : tensor<4xi32>}> : () -> tensor<4xi32>
    %0 = "tt.reduce"(%arg1, %cst3) ({
      ^bb0(%arg2: i32, %arg3: tensor<4xi32>, %arg4: tensor<4xi32>):
        %1 = "arith.addi"(%arg3, %arg4) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
        "scf.yield"(%arg2, %1) : (i32, tensor<4xi32>) -> ()
    }) : (i32, tensor<4xi32>) -> (i32, tensor<4xi32>)
    %1 = "tt.reduce"(%arg1, %cst3) ({
      ^bb0(%arg5: i32, %arg6: tensor<4xi32>, %arg7: tensor<4xi32>):
        %2 = "arith.muli"(%arg6, %arg7) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
        "scf.yield"(%arg5, %2) : (i32, tensor<4xi32>) -> ()
    }) : (i32, tensor<4xi32>) -> (i32, tensor<4xi32>)
    %2 = "arith.addi"(%arg0, %0#0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.addi"(%0#0, %1#0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "arith.addi"(%0#1, %1#1) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "tt.return"(%4, %5) : (i32, tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()