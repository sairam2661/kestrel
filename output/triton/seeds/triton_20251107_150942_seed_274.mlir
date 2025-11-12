"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<i32>, tensor<i32>) -> tensor<i32>, sym_name = "complex_reduce", sym_visibility = "public"}> ({
  ^bb0(%arg0: tensor<i32>, %arg1: tensor<i32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<i32>, tensor<i32>) -> tensor<i32>
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "arith.cmpi"(%0, %1, "slt") : (tensor<i32>, tensor<i32>) -> tensor<i1>
    %3 = "arith.select"(%2, %0, %1) : (tensor<i1>, tensor<i32>, tensor<i32>) -> tensor<i32>
    %4 = "tt.reduce"(%3) <{operation = "tt.add"}> : (tensor<i32>) -> tensor<i32>
    "tt.return"(%4) : (tensor<i32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()