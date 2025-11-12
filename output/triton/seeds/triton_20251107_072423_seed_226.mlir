"builtin.module"() ({
  "tt.func"() <{function_type = (i64) -> (), sym_name = "complex_func"}> ({
    ^bb0(%arg0: i64):
      %0 = "tt.global_scratch_alloc"() <{size = 256 : i64}> : () -> memref<256xi32>
      %1 = "arith.constant"() <{value = dense<100> : tensor<256xi32>}> : () -> tensor<256xi32>
      %2 = "arith.constant"() <{value = dense<200> : tensor<256xi32>}> : () -> tensor<256xi32>
      %3 = "arith.addi"(%1, %2) : (tensor<256xi32>, tensor<256xi32>) -> tensor<256xi32>
      %4 = "tt.global_scratch_alloc"() <{size = 256 : i64}> : () -> memref<256xi32>
      %5 = "arith.constant"() <{value = dense<300> : tensor<256xi32>}> : () -> tensor<256xi32>
      %6 = "arith.constant"() <{value = dense<400> : tensor<256xi32>}> : () -> tensor<256xi32>
      %7 = "arith.muli"(%5, %6) : (tensor<256xi32>, tensor<256xi32>) -> tensor<256xi32>
      %8 = "scf.if"(%arg0) ({
        %9 = "arith.addi"(%4, %7) : (memref<256xi32>, tensor<256xi32>) -> memref<256xi32>
        "scf.yield"(%9) : (memref<256xi32>) -> ()
      }, {
        %10 = "arith.subi"(%4, %7) : (memref<256xi32>, tensor<256xi32>) -> memref<256xi32>
        "scf.yield"(%10) : (memref<256xi32>) -> ()
      }) : (i64) -> memref<256xi32>
      "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()