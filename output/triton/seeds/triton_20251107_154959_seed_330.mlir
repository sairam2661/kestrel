"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>, sym_name = "reduce_and_expand"}> ({
  ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>):
    %c0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %c3 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %0 = "tt.reduce"() ({
      ^bb1(%arg2: tensor<32xi32>, %arg3: tensor<32xi32>, %arg4: i32):
        %1 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflowed_values}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
        "scf.yield"(%1) : (tensor<32xi32>) -> ()
    }) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %2 = "tt.expand_dims"(%0) <{axes = [0 : i32]}> : (tensor<32xi32>) -> tensor<1x32xi32>
    "tt.return"(%2) : (tensor<1x32xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()