"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>, sym_name = "mixed_op_kernel"}> ({
  ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
    %0 = "arith.constant"() <{value = dense<2> : tensor<128xi32>}> : () -> tensor<128xi32>
    %1 = "arith.divsi"(%arg0, %0) <{overflowFlags = #arith_overflow} > : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %2 = "arith.addi"(%1, %arg1) <{overflowFlags = #arith_overflow} > : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %3 = "arith.cmpi"(%arg0, %arg1, "slt") <{overflowFlags = #arith_overflow} > : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %4 = "arith.select"(%3, %arg0, %arg1) <{overflowFlags = #arith_overflow} > : (tensor<128xi1>, tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %5 = "tt.make_range"() <{start = 0 : i32, end = 128 : i32}> : () -> tensor<128xi32>
    %6 = "arith.subi"(%4, %5) <{overflowFlags = #arith_overflow} > : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    "tt.return"(%6) : (tensor<128xi32>) -> ()
  }) : () -> ()
}) : () -> ()