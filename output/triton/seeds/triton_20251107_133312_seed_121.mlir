"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>) -> (tensor<64xi32>), sym_name = "complex_op_seq"}> ({
    ^bb0(%arg0: tensor<64xi32>):
      %0 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
      %1 = "arith.constant"() <{value = dense<2> : tensor<64xi32>}> : () -> tensor<64xi32>
      %2 = "arith.muli"(%0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %3 = "tt.addptr"(%2, %arg0) <{alignment = 16}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %4 = "tt.expand_dims"(%3, 1) : (tensor<64xi32>) -> tensor<64x1xi32>
      %5 = "tt.reduce"(%4, "arith.addi", %1) : (tensor<64x1xi32>, !ttg_reduction_func, tensor<64x1xi32>) -> tensor<64x1xi32>
      "tt.return"(%5) : (tensor<64x1xi32>) -> ()
  }) : () -> ()
}) : () -> ()