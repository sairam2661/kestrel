"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "complex_nested_loops"}> ({
    ^bb0:
      %0 = "arith.constant"() <{value = dense<0> : tensor<64x64xi32>}> : () -> tensor<64x64xi32>
      %1 = "arith.constant"() <{value = dense<4> : tensor<64x64xi32>}> : () -> tensor<64x64xi32>
      %2 = "arith.constant"() <{value = 64 : i32}> : () -> i32
      %3 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %4 = "arith.constant"() <{value = 4 : i32}> : () -> i32
      %5:2 = "scf.for"(%3, %2, %4, %0, %1) ({
      ^bb1(%arg0: i32, %arg1: tensor<64x64xi32>, %arg2: tensor<64x64xi32>):
        %6 = "arith.addi"(%arg0, %3) <{overflowFlags = #arith_overflow_flag}> : (i32, i32) -> i32
        %7 = "arith.constant"() <{value = dense<1> : tensor<64x64xi32>}> : () -> tensor<64x64xi32>
        %8:5 = "scf.for"(%3, %2, %4, %arg1, %arg2, %7) ({
        ^bb2(%arg3: i32, %arg4: tensor<64x64xi32>, %arg5: tensor<64x64xi32>, %arg6: tensor<64x64xi32>):
          %9 = "arith.addi"(%arg3, %3) <{overflowFlags = #arith_overflow_flag}> : (i32, i32) -> i32
          %10 = "arith.subi"(%arg4, %7) <{overflowFlags = #arith_overflow_flag}> : (tensor<64x64xi32>, tensor<64x64xi32>) -> tensor<64x64xi32>
          "scf.yield"(%arg5, %arg4, %arg6, %7) : (tensor<64x64xi32>, tensor<64x64xi32>, tensor<64x64xi32>, tensor<64x64xi32>) -> ()
        }) : (i32, i32, i32, tensor<64x64xi32>, tensor<64x64xi32>, tensor<64x64xi32>) -> (tensor<64x64xi32>, tensor<64x64xi32>, tensor<64x64xi32>)
        "scf.yield"(%arg2, %arg1, %7) : (tensor<64x64xi32>, tensor<64x64xi32>, tensor<64x64xi32>) -> ()
      }) : (i32, i32, i32, tensor<64x64xi32>, tensor<64x64xi32>, tensor<64x64xi32>) -> (tensor<64x64xi32>, tensor<64x64xi32>, tensor<64x64xi32>)
      "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()