"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16x16xi8>, tensor<16x16xi8>, tensor<16x16xi8>) -> tensor<16x16xi32>, sym_name = "tensor_operations"}> ({
    ^bb0(%arg0: tensor<16x16xi8>, %arg1: tensor<16x16xi8>, %arg2: tensor<16x16xi8>):
      %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_mode}>: (tensor<16x16xi8>, tensor<16x16xi8>) -> tensor<16x16xi8>
      %1 = "arith.xori"(%0, %arg2) <{overflowFlags = #arith_overflow_mode}>: (tensor<16x16xi8>, tensor<16x16xi8>) -> tensor<16x16xi8>
      %2 = "arith.remsi"(%1, %arg0) <{overflowFlags = #arith_overflow_mode}>: (tensor<16x16xi8>, tensor<16x16xi8>) -> tensor<16x16xi8>
      %3 = "arith.mul

i"(%2, %arg1) <{overflowFlags = #arith_overflow_mode}>: (tensor<16x16xi8>, tensor<16x16xi8>) -> tensor<16x16xi8>
      %4 = "arith.divsi"(%3, %arg2) <{overflowFlags = #arith_overflow_mode}>: (tensor<16x16xi8>, tensor<16x16xi8>) -> tensor<16x16xi8>
      %5 = "arith.cmpi"(%4, %arg0) <{predicate = 5 : i64}>: (tensor<16x16xi8>, tensor<16x16xi8>) -> tensor<16x16xi1>
      %6 = "arith.select"(%5, %4, %arg0) <{predicate = 5 : i64}>: (tensor<16x16xi1>, tensor<16x16xi8>, tensor<16x16xi8>) -> tensor<16x16xi8>
      "tt.return"(%6) : (tensor<16x16xi8>) -> ()
  }) : () -> ()
}) : () -> ()