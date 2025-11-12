"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16x16xi32>) -> tensor<16xi32>, sym_name = "reduce_and_expand"}> ({
    ^bb0(%arg0: tensor<16x16xi32>):
      %0 = "tt.reduce"(%arg0) <{axis = 1 : i32}> ({
        ^bb1(%arg1: i32, %arg2: i32):
          %3 = "arith.addi"(%arg1, %arg2) : (i32, i32) -> i32
          "tt.reduce.return"(%3) : (i32) -> ()
      }) : (tensor<16x16xi32>) -> tensor<16xi32>
      %1 = "tt.expand_dims"(%0) <{axis = 0 : i32}> : (tensor<16xi32>) -> tensor<1x16xi32>
      %2 = "tt.call"() <{callee = @other_func}> : () -> tensor<1x16xi32>
      %3 = "arith.subi"(%1, %2) : (tensor<1x16xi32>, tensor<1x16xi32>) -> tensor<1x16xi32>
      "tt.return"(%3) : (tensor<1x16xi32>) -> ()
  }) : (tensor<16x16xi32>) -> tensor<1x16xi32>
  "tt.func"() <{function_type = () -> (), sym_name = "other_func"}> ({
    ^bb0():
      %0 = "tt.global_scratch_alloc"() <{size = 256 : i32}> : () -> tensor<1x16xi32>
      %1 = "arith.constant"() <{value = dense<5> : tensor<1x16xi32>}> : () -> tensor<1x16xi32>
      %2 = "arith.addi"(%0, %1) : (tensor<1x16xi32>, tensor<1x16xi32>) -> tensor<1x16xi32>
      "tt.return"(%2) : (tensor<1x16xi32>) -> ()
  }) : () -> tensor<1x16xi32>
}) : () -> ()