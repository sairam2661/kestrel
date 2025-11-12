"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "complex_pattern"}> ({
    %0 = "arith.constant"() <{value = dense<0> : tensor<64x32xi32>}> : () -> tensor<64x32xi32>
    %1 = "arith.constant"() <{value = dense<1> : tensor<64x32xi32>}> : () -> tensor<64x32xi32>
    %2 = "arith.constant"() <{value = dense<2> : tensor<64x32xi32>}> : () -> tensor<64x32xi32>
    %3 = "arith.constant"() <{value = 64 : i32}> : () -> i32
    %4 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %5 = "arith.constant"() <{value = 8 : i32}> : () -> i32
    %6:3 = "scf.for"(%4, %3, %5, %0, %1, %2) ({
    ^bb0(%arg0: i32, %arg1: tensor<64x32xi32>, %arg2: tensor<64x32xi32>, %arg3: tensor<64x32xi32>):
      %7 = "arith.addi"(%arg0, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %8:3 = "scf.for"(%7, %3, %5, %arg1, %arg2, %arg3) ({
      ^bb1(%arg4: i32, %arg5: tensor<64x32xi32>, %arg6: tensor<64x32xi32>, %arg7: tensor<64x32xi32>):
        %9 = "arith.muli"(%arg4, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        %10 = "arith.addi"(%arg5, %arg6) <{overflowFlags = #arith_overflownone}> : (tensor<64x32xi32>, tensor<64x32xi32>) -> tensor<64x32xi32>
        "scf.yield"(%arg7, %10, %arg5) : (tensor<64x32xi32>, tensor<64x32xi32>, tensor<64x32xi32>) -> ()
      }) : (i32, tensor<64x32xi32>, tensor<64x32xi32>, tensor<64x32xi32>) -> (tensor<64x32xi32>, tensor<64x32xi32>, tensor<64x32xi32>)
      "scf.yield"(%arg2, %arg1, %arg3) : (tensor<64x32xi32>, tensor<64x32xi32>, tensor<64x32xi32>) -> ()
    }) : (i32, i32, i32, tensor<64x32xi32>, tensor<64x32xi32>, tensor<64x32xi32>) -> (tensor<64x32xi32>, tensor<64x32xi32>, tensor<64x32xi32>)
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()