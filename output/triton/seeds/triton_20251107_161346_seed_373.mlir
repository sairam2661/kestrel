"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xf32>) -> (tensor<64xi32>, tensor<64xf32>), sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xf32>):
    %0 = "arith.constant"() <{value = dense<8> : tensor<64xi32>}> : () -> tensor<64xi32>
    %1 = "arith.constant"() <{value = dense<3.14> : tensor<64xf32>}> : () -> tensor<64xf32>
    %2 = "tt.expand_dims"(%arg0) <{axis = 1 : i32}> : (tensor<64xi32>) -> tensor<64x1xi32>
    %3 = "tt.expand_dims"(%arg1) <{axis = 1 : i32}> : (tensor<64xf32>) -> tensor<64x1xf32>
    %4 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %5 = "arith.muli"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %6 = "arith.addf"(%arg1, %1) : (tensor<64xf32>, tensor<64xf32>) -> tensor<64xf32>
    %7 = "arith.mulf"(%arg1, %1) : (tensor<64xf32>, tensor<64xf32>) -> tensor<64xf32>
    %8 = "arith.cmpi"(%4, %5) <{predicate = 0 : i64}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi1>
    %9 = "arith.cmpi"(%6, %7) <{predicate = 0 : i64}> : (tensor<64xf32>, tensor<64xf32>) -> tensor<64xi1>
    "tt.return"(%4, %6) : (tensor<64xi32>, tensor<64xf32>) -> ()
  }) : () -> ()
}) : () -> ()