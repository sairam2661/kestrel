"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, i32) -> tensor<16xi32>, sym_name = "select_and_reduce"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: i32):
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %cmp = "arith.cmpi"(%arg1, %c0_i32, "ne") : (i32, i32) -> i1
    %select = "arith.select"(%cmp, %arg0, %c0_i32) : (i1, tensor<16xi32>, i32) -> tensor<16xi32>
    %reduce = "tt.reduce"(%select) <{op = "add"}> : (tensor<16xi32>) -> i32
    %result = "arith.addi"(%reduce, %c1_i32) : (i32, i32) -> i32
    %broadcast = "arith.constant"() <{value = dense<64 : i32> : tensor<16xi32>}> : () -> tensor<16xi32>
    %final = "arith.addi"(%broadcast, %result) : (tensor<16xi32>, i32) -> tensor<16xi32>
    "tt.return"(%final) : (tensor<16xi32>) -> ()
  }) : (tensor<16xi32>, i32) -> tensor<16xi32>
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()