"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<i32>, tensor<i32>) -> tensor<i32>, sym_name = "complex_reduce"}> ({
  ^bb0(%arg0: tensor<i32>, %arg1: tensor<i32>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<i32>, tensor<i32>) -> tensor<i32>
    %1 = "tt.reduce"(%0) <{operation = "add"}> ({
    ^bb1(%arg2: tensor<i32>):
      %2 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %3 = "arith.addi"(%2, %arg2) <{overflowFlags = #arith_overflownone}> : (i32, tensor<i32>) -> i32
      "scf.yield"(%3) : (i32) -> ()
    }) : (tensor<i32>) -> i32
    "tt.return"(%1) : (i32) -> tensor<i32>
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32} : () -> ()