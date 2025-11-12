"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 32 : i32}], function_type = (i32, tensor<8x8xi32>) -> tensor<4x4xi32>, sym_name = "tensor_ops"}> ({
    ^bb0(%arg0: i32, %arg1: tensor<8x8xi32>):
      %0 = "arith.constant"() <{value = dense<1 : i32> : tensor<8x8xi32>}> : () -> tensor<8x8xi32>
      %1 = "arith.addi"(%arg1, %0) : (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
      %2 = "tt.expand_dims"(%1, 0) <{dim = 0 : i32}> : (tensor<8x8xi32>) -> tensor<1x8x8xi32>
      %3 = "tt.expand_dims"(%2, 0) <{dim = 0 : i32}> : (tensor<1x8x8xi32>) -> tensor<1x1x8x8xi32>
      %4 = "tt.reduce"(%3) <{axis = 0 : i32}> ({
        ^bb1(%arg2: i32, %arg3: i32):
          %5 = "arith.addi"(%arg2, %arg3) : (i32, i32) -> i32
          "tt.reduce.return"(%5) : (i32) -> ()
      }) : (tensor<1x1x8x8xi32>) -> tensor<1x8x8xi32>
      %6 = "tt.reduce"(%4) <{axis = 1 : i32}> ({
        ^bb2(%arg4: i32, %arg5: i32):
          %7 = "arith.addi"(%arg4, %arg5) : (i32, i32) -> i32
          "tt.reduce.return"(%7) : (i32) -> ()
      }) : (tensor<1x8x8xi32>) -> tensor<8x8xi32>
      %8 = "tt.reduce"(%6) <{axis = 2 : i32}> ({
        ^bb3(%arg6: i32, %arg7: i32):
          %9 = "arith.addi"(%arg6, %arg7) : (i32, i32) -> i32
          "tt.reduce.return"(%9) : (i32) -> ()
      }) : (tensor<8x8xi32>) -> tensor<8x1xi32>
      %10 = "tt.reduce"(%8) <{axis = 1 : i32}> ({
        ^bb4(%arg8: i32, %arg9: i32):
          %11 = "arith.addi"(%arg8, %arg9) : (i32, i32) -> i32
          "tt.reduce.return"(%11) : (i32) -> ()
      }) : (tensor<8x1xi32>) -> tensor<1xi32>
      %12 = "tt.expand_dims"(%10, 0) <{dim = 0 : i32}> : (tensor<1xi32>) -> tensor<1x1xi32>
      %13 = "tt.expand_dims"(%12, 0) <{dim = 0 : i32}> : (tensor<1x1xi32>) -> tensor<1x1x1xi32>
      %14 = "tt.expand_dims"(%13, 0) <{dim = 0 : i32}> : (tensor<1x1x1xi32>) -> tensor<1x1x1x1xi32>
      %15 = "tt.reduce"(%14) <{axis = 0 : i32}> ({
        ^bb5(%arg10: i32, %arg11: i32):
          %16 = "arith.addi"(%arg10, %arg11) : (i32, i32) -> i32
          "tt.reduce.return"(%16) : (i32) -> ()
      }) : (tensor<1x1x1x1xi32>) -> tensor<1x1x1xi32>
      %17 = "tt.reduce"(%15) <{axis = 1 : i32}> ({
        ^bb6(%arg12: i32, %arg13: i32):
          %18 = "arith.addi"(%arg12, %arg13) : (i32, i32) -> i32
          "tt.reduce.return"(%18) : (i32) -> ()
      }) : (tensor<1x1x1xi32>) -> tensor<1x1xi32>
      %19 = "tt.reduce"(%17) <{axis = 1 : i32}> ({
        ^bb7(%arg14: i32, %arg15: i32):
          %20 = "arith.addi"(%arg14, %arg15) : (i32, i32) -> i32
          "tt.reduce.return"(%20) : (i32) -> ()
      }) : (tensor<1x1xi32>) -> tensor<1xi32>
      "tt.return"(%19) : (tensor<1xi32>) -> ()
  }) : (i32, tensor<8x8xi32>) -> tensor<4x4xi32>
}) : () -> ()