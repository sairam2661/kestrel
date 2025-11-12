"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<8x8xi32>, tensor<8x8xi32>) -> (tensor<4x4xi32>, tensor<4x4xi32>), sym_name = "matrix_add_reduce"}> ({
    ^bb0(%arg0: i32, %arg1: tensor<8x8xi32>, %arg2: tensor<8x8xi32>):
      %0 = "tt.make_range"() <{end = 4 : i32, start = 0 : i32}> : () -> tensor<1xi32>
      %1 = "tt.expand_dims"(%0) <{axis = 1 : i32}> : (tensor<1xi32>) -> tensor<1x1xi32>
      %2 = "tt.broadcast"(%1) : (tensor<1x1xi32>) -> tensor<4x4xi32>
      %3 = "arith.addi"(%arg1, %arg2) : (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
      %4 = "tt.reduce"(%3, %2) <{tt.redop = "add", tt.axis = 1 : i32}> : (tensor<8x8xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
      %5 = "arith.subi"(%arg0, %4) : (i32, tensor<4x4xi32>) -> tensor<4x4xi32>
      "tt.return"(%4, %5) : (tensor<4x4xi32>, tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()