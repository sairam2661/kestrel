"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16x32xi32>, tensor<32x48xi32>) -> tensor<16x48xi32>, sym_name = "tensor_op_chain"}> ({
    ^bb0(%arg0: tensor<16x32xi32>, %arg1: tensor<32x48xi32>):
      %0 = "tt.make_range"() <{dim = 0 : i32, start = 0 : i32, end = 16 : i32, step = 1 : i32}> : () -> tensor<16xi32>
      %1 = "tt.expand_dims"(%0) <{axis = 1 : i32}> : (tensor<16xi32>) -> tensor<16x1xi32>
      %2 = "arith.addi"(%arg0, %1) : (tensor<16x32xi32>, tensor<16x1xi32>) -> tensor<16x32xi32>
      %3 = "tt.make_range"() <{dim = 0 : i32, start = 0 : i32, end = 32 : i32, step = 1 : i32}> : () -> tensor<32xi32>
      %4 = "tt.expand_dims"(%3) <{axis = 1 : i32}> : (tensor<32xi32>) -> tensor<32x1xi32>
      %5 = "arith.addi"(%arg1, %4) : (tensor<32x48xi32>, tensor<32x1xi32>) -> tensor<32x48xi32>
      %6 = "tt.gather"(%5) <{indices = dense<[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]> : tensor<16xi32>, axis = 0 : i32}> : (tensor<32x48xi32>, tensor<16xi32>) -> tensor<16x48xi32>
      %7 = "arith.addi"(%2, %6) : (tensor<16x32xi32>, tensor<16x48xi32>) -> tensor<16x48xi32>
      "tt.return"(%7) : (tensor<16x48xi32>) -> ()
  }) : (tensor<16x32xi32>, tensor<32x48xi32>) -> tensor<16x48xi32>
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32} : () -> ()