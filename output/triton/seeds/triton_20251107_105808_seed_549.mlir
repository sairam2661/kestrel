"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "complex_reduction"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "tt.make_range"() <{end = 8 : i32, start = 0 : i32}> : () -> tensor<8xi32>
    %2:2 = "tt.reduce"(%arg1, %0, %1) ({
      ^bb1(%arg2: i32, %arg3: i32):
        %4 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%4) : (i32) -> ()
    }) : (tensor<8xi32>, i32, tensor<8xi32>) -> (i32)
    %5 = "arith.select"(%arg0, %arg1, %2#0) : (tensor<8xi32>, tensor<8xi32>, i32) -> tensor<8xi32>
    "tt.return"(%5) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 2 : i32} : () -> ()