"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "scratch_alloc_test"}> ({
    ^bb0():
      %0 = "ttg.global_scratch_alloc"() : () -> !memref
      %1 = "ttg.global_scratch_alloc"() : () -> !memref
      %2 = "ttg.global_scratch_alloc"() : () -> !memref
      %3 = "ttg.global_scratch_alloc"() : () -> !memref
      %4 = "arith.constant"() <{value = dense<10> : tensor<128xi32>}> : () -> tensor<128xi32>
      %5 = "arith.constant"() <{value = dense<20> : tensor<128xi32>}> : () -> tensor<128xi32>
      %6 = "arith.addi"(%4, %5) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %7 = "arith.constant"() <{value = dense<30> : tensor<128xi32>}> : () -> tensor<128xi32>
      %8 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
      %9 = "arith.cmpi"(%6, %7) <{predicate = 4 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
      "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()