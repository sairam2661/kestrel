"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "stress_test"}> ({
    %0 = "ttg.global_scratch_alloc"() <{size = 1024 : i32}> : () -> i64
    %1 = "ttg.global_scratch_alloc"() <{size = 2048 : i32}> : () -> i64
    %2 = "ttg.global_scratch_alloc"() <{size = 512 : i32}> : () -> i64
    %3 = "ttg.global_scratch_alloc"() <{size = 256 : i32}> : () -> i64

    %4 = "arith.constant"() <{value = dense<1.0> : tensor<1024xf32>}> : () -> tensor<1024xf32>
    %5 = "arith.constant"() <{value = dense<2.0> : tensor<2048xf32>}> : () -> tensor<2048xf32>
    %6 = "arith.constant"() <{value = dense<3.0> : tensor<512xf32>}> : () -> tensor<512xf32>
    %7 = "arith.constant"() <{value = dense<4.0> : tensor<256xf32>}> : () -> tensor<256xf32>

    "scf.for"(%0, %0, %2) ({
    ^bb0(%arg0: i64):
      %8 = "arith.addf"(%4, %6) : (tensor<1024xf32>, tensor<512xf32>) -> tensor<1024xf32>
      "scf.yield"() : () -> ()
    }) : (i64, i64, i64) -> ()

    "scf.for"(%1, %1, %3) ({
    ^bb0(%arg0: i64):
      %9 = "arith.addf"(%5, %7) : (tensor<2048xf32>, tensor<256xf32>) -> tensor<2048xf32>
      "scf.yield"() : () -> ()
    }) : (i64, i64, i64) -> ()

    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()