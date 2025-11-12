"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>, sym_name = "tensor_cmp"}> ({
  ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
    %0 = "arith.constant"() <{value = dense<0> : tensor<128xi32>}> : () -> tensor<128xi32>
    %1 = "arith.cmpi"(%arg0, %arg1) <{predicate = 4 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %2 = "tt.expand_dims"(%1) <{axis = 0 : i32}> : (tensor<128xi1>) -> tensor<1x128xi1>
    %3 = "arith.cmpi"(%arg1, %arg0) <{predicate = 4 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %4 = "tt.expand_dims"(%3) <{axis = 0 : i32}> : (tensor<128xi1>) -> tensor<1x128xi1>
    %5 = "arith.xori"(%2, %4) : (tensor<1x128xi1>, tensor<1x128xi1>) -> tensor<1x128xi1>
    "tt.return"(%5) : (tensor<1x128xi1>) -> ()
  }) : () -> ()
}) : () -> ()