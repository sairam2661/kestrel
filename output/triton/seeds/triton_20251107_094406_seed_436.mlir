"builtin.module"() ({
  "tt.func"() <{function_type = () -> tensor<128xi32>, sym_name = "stress_test"}> ({
    %0 = "ttg.global_scratch_alloc"() <{size = 1024 : i32, alignment = 256 : i32}> : () -> !ttg_ptr
    %1 = "ttg.global_scratch_alloc"() <{size = 2048 : i32, alignment = 512 : i32}> : () -> !ttg_ptr
    %2 = "ttg.global_scratch_alloc"() <{size = 4096 : i32, alignment = 1024 : i32}> : () -> !ttg_ptr
    %3 = "ttg.global_scratch_alloc"() <{size = 8192 : i32, alignment = 2048 : i32}> : () -> !ttg_ptr
    %4 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
    %5 = "arith.constant"() <{value = dense<1> : tensor<128xi32>}> : () -> tensor<128xi32>
    %6 = "arith.addi"(%4, %5) <{overflowFlags = #arith_overflow_flags}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %7 = "arith.cmpi"(%6, %5) <{predicate = 4 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    "scf.if"(%7) ({
      %8 = "scf.for"(%6, %6, %4, %7) ({
      ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
        %9 = "arith.mul"(%arg1, %5) <{overflowFlags = #arith_overflow_flags}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
        "scf.yield"(%9) : (tensor<128xi32>) -> ()
      }) : (tensor<128xi32>, tensor<128xi32>, tensor<128xi32>, tensor<128xi1>) -> tensor<128xi32>
      "scf.yield"() : () -> ()
    }, {
    }) : (tensor<128xi1>) -> ()
    "tt.return"(%6) : (tensor<128xi32>) -> ()
  }) : () -> tensor<128xi32>
}) : () -> (tensor<128xi32>)