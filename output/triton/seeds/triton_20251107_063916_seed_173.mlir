"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128x32xi32>, tensor<128x32xi32>) -> tensor<128x32xi32>, sym_name = "tensor_reduce_and_sum"}> ({
    ^bb0(%arg0: tensor<128x32xi32>, %arg1: tensor<128x32xi32>):
      %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<128x32xi32>, tensor<128x32xi32>) -> tensor<128x32xi32>
      %1 = "tt.reduce"() <{reduction_op = #tt_reductionadd, dimensions = [1]}> ({ ^bb1(%arg2: tensor<128xi32>): %2 = "arith.constant"() <{value = 0 : i32}> : () -> i32 } ) : (tensor<128x32xi32>) -> tensor<128xi32>
      "tt.return"(%1) : (tensor<128xi32>) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64x64xi32>, tensor<64x64xi32>) -> tensor<64x64xi32>, sym_name = "tensor_subtract_and_zero_check"}> ({
    ^bb0(%arg0: tensor<64x64xi32>, %arg1: tensor<64x64xi32>):
      %0 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<64x64xi32>, tensor<64x64xi32>) -> tensor<64x64xi32>
      %1 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %2 = "arith.cmpi"(%0, %1) <{predicate = 0 : i64}> : (tensor<64x64xi32>, i32) -> tensor<64x64xi1>
      "tt.return"(%2) : (tensor<64x64xi1>) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32x32xi32>, tensor<32x32xi32>) -> tensor<32x32xi32>, sym_name = "tensor_multiply_and_expand"}> ({
    ^bb0(%arg0: tensor<32x32xi32>, %arg1: tensor<32x32xi32>):
      %0 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<32x32xi32>, tensor<32x32xi32>) -> tensor<32x32xi32>
      %1 = "tt.expand_dims"(%0, %1) <{dimensions = [0, 1]}> : (tensor<32x32xi32>, tensor<32x32xi32>) -> tensor<2x32x32xi32>
      "tt.return"(%1) : (tensor<2x32x32xi32>) -> ()
  }) : () -> ()
}) : () -> ()