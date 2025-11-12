"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<i32>, tensor<i32>) -> (), sym_name = "tensor_operations", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<i32>, %arg1: tensor<i32>):
    %0 = "arith.constant"() <{value = dense<2> : tensor<16xi32>}> : () -> tensor<16xi32>
    %1 = "arith.addi"(%arg0, %arg1) : (tensor<i32>, tensor<i32>) -> tensor<i32>
    %2 = "arith.muli"(%1, %0) : (tensor<i32>, tensor<i32>) -> tensor<i32>
    %3 = "arith.xori"(%2, %arg0) : (tensor<i32>, tensor<i32>) -> tensor<i32>
    %4 = "arith.cmpi"(%3, %arg1) <{predicate = 4 : i64}> : (tensor<i32>, tensor<i32>) -> tensor<i1>
    %5 = "arith.select"(%4, %arg0, %arg1) : (tensor<i1>, tensor<i32>, tensor<i32>) -> tensor<i32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32} : () -> ()