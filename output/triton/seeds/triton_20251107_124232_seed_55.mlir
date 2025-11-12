"builtin.module"() ({
  "tt.func"() <{function_type = (!ttgPtr16x8f32, !ttgPtr16x8f32, !ttgPtr16x8f32, i1) -> (), sym_name = "mixed_operations"}> ({
  ^bb0(%arg0: !ttgPtr16x8f32, %arg1: !ttgPtr16x8f32, %arg2: !ttgPtr16x8f32, %arg3: i1):
    %0 = "arith.constant"() <{value = dense<0.5> : tensor<16x8xf32>}> : () -> tensor<16x8xf32>
    %1 = "arith.constant"() <{value = dense<1> : tensor<16x8xi32>}> : () -> tensor<16x8xi32>
    %2 = "arith.subi"(%1, %1) <{overflowFlags = #arith_overflownone}> : (tensor<16x8xi32>, tensor<16x8xi32>) -> tensor<16x8xi32>
    %3 = "arith.addi"(%1, %2) <{overflowFlags = #arith_overflownone}> : (tensor<16x8xi32>, tensor<16x8xi32>) -> tensor<16x8xi32>
    %4 = "arith.xori"(%1, %2) : (tensor<16x8xi32>, tensor<16x8xi32>) -> tensor<16x8xi32>
    %5 = "arith.select"(%arg3, %0, %1) : (i1, tensor<16x8xf32>, tensor<16x8xf32>) -> tensor<16x8xf32>
    %6 = "scf.if"(%arg3) ({
      %7 = "arith.divsi"(%1, %2) <{overflowFlags = #arith_overflownone}> : (tensor<16x8xi32>, tensor<16x8xi32>) -> tensor<16x8xi32>
      "scf.yield"(%7) : (tensor<16x8xi32>) -> ()
    }, {
      %8 = "arith.remsi"(%1, %2) : (tensor<16x8xi32>, tensor<16x8xi32>) -> tensor<16x8xi32>
      "scf.yield"(%8) : (tensor<16x8xi32>) -> ()
    }) : (i1) -> tensor<16x8xi32>
    %9 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
    %10 = "ttg.global_scratch_alloc"() <{size = 1024 : i32}> : () -> !ttgPtr1024xi32
    "tt.return"() : () -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32} : () -> ()