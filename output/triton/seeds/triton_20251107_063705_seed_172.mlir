"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "matrix_square"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<4x4xi32>):
    %0 = "ttg.global_scratch_alloc"() <{size = 64 : i32}> : () -> tensor<4x4xi32>
    %1 = "ttg.global_scratch_alloc"() <{size = 64 : i32}> : () -> tensor<4x4xi32>
    %2 = "ttg.global_scratch_alloc"() <{size = 64 : i32}> : () -> tensor<4x4xi32>
    %3 = "ttg.global_scratch_alloc"() <{size = 64 : i32}> : () -> tensor<4x4xi32>
    %4 = "arith.constant"() <{value = dense<0> : tensor<4x4xi32>}> : () -> tensor<4x4xi32>
    %5 = "arith.constant"() <{value = dense<1> : tensor<4x4xi32>}> : () -> tensor<4x4xi32>
    %6 = "scf.for"(%arg0) <{lower_bound = 0 : i32, upper_bound = 4 : i32, step = 1 : i32}> ({
    ^bb1(%iv: i32):
      "scf.for"(%iv) <{lower_bound = 0 : i32, upper_bound = 4 : i32, step = 1 : i32}> ({
      ^bb2(%jv: i32):
        "scf.for"(%iv) <{lower_bound = 0 : i32, upper_bound = 4 : i32, step = 1 : i32}> ({
        ^bb3(%kv: i32):
          %7 = "arith.mulii"(%arg1, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
          %8 = "arith.addi"(%4, %7) <{overflowFlags = #arith_overflownone}> : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
          "tt.store"(%8, %0) <{indices = [0, 0]}> : (tensor<4x4xi32>, tensor<4x4xi32>) -> ()
        }) : () -> ()
      }) : () -> ()
    }) : () -> ()
    %9 = "tt.load"(%0) <{indices = [0, 0]}> : (tensor<4x4xi32>) -> tensor<4x4xi32>
    "tt.return"(%9) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()