"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "reduce_and_select"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "tt.reduce"(%arg0, %arg1, "arith.addi") : (tensor<16xi32>, tensor<16xi32>, !ttg_reduction_op) -> tensor<16xi32>
    %1 = "arith.constant"() <{value = dense<5 : i32> : tensor<16xi32>}> : () -> tensor<16xi32>
    %2 = "arith.cmpi"(%0, %1, "slt") : (tensor<16xi32>, tensor<16xi32>) -> tensor<i1>
    %3 = "arith.select"(%2, %arg0, %arg1) : (tensor<i1>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "tt.return"(%3) : (tensor<16xi32>) -> ()
  }) : () -> (tensor<16xi32>)
}) : () -> ()