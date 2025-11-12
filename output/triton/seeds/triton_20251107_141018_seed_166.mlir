"builtin.module"() ({
  "tt.func"() <{function_type = () -> i32, sym_name = "complex_reduce", sym_visibility = "public"}> ({
    %0 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
    %1 = "arith.constant"() <{value = dense<10> : tensor<64xi32>}> : () -> tensor<64xi32>
    %2 = "arith.remsi"(%0, %1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %3 = "arith.addi"(%0, %1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %4 = "arith.xori"(%2, %3) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %5 = "arith.select"(%4, %2, %3) : (tensor<64xi32>, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %6 = "tt.reduce"() <{operation = "add", neutral = dense<0> : tensor<64xi32>}> ({
      ^bb0(%arg0: tensor<64xi32>):
        %7 = "arith.addi"(%arg0, %5) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
        "scf.yield"(%7) : (tensor<64xi32>) -> ()
    }) : (tensor<64xi32>) -> tensor<64xi32>
    "tt.return"(%6) : (tensor<64xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 4 : i32, "ttg.num-warps" = 8 : i32, ttg.target = "cuda:90", "ttg.threads-per-warp" = 32 : i32} : () -> ()