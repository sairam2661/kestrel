"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16x16xf32>, tensor<16x16xf32>) -> tensor<16x16xf32>, sym_name = "multi_reduce_add"}> ({
  ^bb0(%arg0: tensor<16x16xf32>, %arg1: tensor<16x16xf32>):
    %0 = "ttg.global_scratch_alloc"() <{size = 16384 : i32}> : () -> tensor<16x16xf32>
    %1 = "ttg.global_scratch_alloc"() <{size = 16384 : i32}> : () -> tensor<16x16xf32>
    %2 = "ttg.global_scratch_alloc"() <{size = 16384 : i32}> : () -> tensor<16x16xf32>
    %3 = "arith.addf"(%arg0, %arg1) : (tensor<16x16xf32>, tensor<16x16xf32>) -> tensor<16x16xf32>
    %4 = "scf.for"(%c0_i32 : i32, %c16_i32 : i32, %c1_i32 : i32) ({
    ^bb0(%iv: i32):
      %5 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %6 = "arith.constant"() <{value = 15 : i32}> : () -> i32
      "scf.for"(%5, %6, %c1_i32) ({
      ^bb1(%jv: i32):
        %7 = "arith.addf"(%3, %0) : (tensor<16x16xf32>, tensor<16x16xf32>) -> tensor<16x16xf32>
        %8 = "arith.addf"(%7, %1) : (tensor<16x16xf32>, tensor<16x16xf32>) -> tensor<16x16xf32>
        %9 = "arith.addf"(%8, %2) : (tensor<16x16xf32>, tensor<16x16xf32>) -> tensor<16x16xf32>
        "scf.yield"() : () -> ()
      }) {tt.num_stages = 4 : i32} : (i32, i32, i32) -> ()
      "scf.yield"() : () -> ()
    }) {tt.num_stages = 2 : i32} : (i32, i32, i32) -> ()
    "tt.return"(%3) : (tensor<16x16xf32>) -> ()
  }) : () -> ()
}) : () -> ()