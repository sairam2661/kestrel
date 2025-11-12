"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<i32>, tensor<i32>) -> tensor<i32>, sym_name = "fuzz_kernel"}> ({
  ^bb0(%arg0: tensor<i32>, %arg1: tensor<i32>):
    %0 = "tt.make_range"() <{start = 0 : i32, end = 16 : i32}> : () -> tensor<16xi32>
    %1 = "arith.xori"(%arg0, %arg1) : (tensor<i32>, tensor<i32>) -> tensor<i32>
    %2 = "arith.addi"(%0, %1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %3 = "arith.constant"() <{value = dense<1> : tensor<16xi32>}> : () -> tensor<16xi32>
    %4 = "arith.cmpi"(%2, %3, "slt") : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
    %5 = "arith.select"(%4, %1, %0) : (tensor<16xi1>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %6 = "scf.for"() <{lb = 0 : i32, ub = 16 : i32, step = 1 : i32}> ({
      ^bb1(%iv: i32):
        %7 = "arith.addi"(%iv, %5) : (i32, tensor<16xi32>) -> tensor<16xi32>
        "scf.yield"() : () -> ()
    }) : (tensor<16xi32>) -> ()
    "tt.return"(%6) : (tensor<16xi32>) -> ()
  }) : (tensor<i32>, tensor<i32>) -> tensor<i32>
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 8 : i32} : () -> ()