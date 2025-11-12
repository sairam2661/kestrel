"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<8x32xi32>, tensor<8x32xi32>) -> tensor<8x32xi32>, sym_name = "reduce_and_expand"}> ({
  ^bb0(%arg0: tensor<8x32xi32>, %arg1: tensor<8x32xi32>):
    %c0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %0 = "tt.reduce"(%arg0, %c0) <{reduce_op = 0 : i32}> : (tensor<8x32xi32>, i32) -> i32
    %1 = "tt.expand_dims"(%0, %c0) : (i32, i32) -> tensor<1x1xi32>
    %2 = "tt.reduce"(%arg1, %c0) <{reduce_op = 0 : i32}> : (tensor<8x32xi32>, i32) -> i32
    %3 = "tt.expand_dims"(%2, %c0) : (i32, i32) -> tensor<1x1xi32>
    %4 = "arith.addi"(%1, %3) : (tensor<1x1xi32>, tensor<1x1xi32>) -> tensor<1x1xi32>
    "tt.return"(%4) : (tensor<1x1xi32>) -> ()
  }) : () -> ()
}) : () -> ()