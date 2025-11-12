"builtin.module"() ({
  "tt.func"() <{function_type = () -> tensor<32xi8>, sym_name = "complex_alloc"}> ({
    ^bb0:
      %0 = "ttg.global_scratch_alloc"() <{size = 1024 : i32, alignment = 16 : i32}> : () -> !ttg scratch_ptr
      .loc "file.mlir":(tensor<32xi8>) -> ()
      %1 = "arith.constant"() <{value = dense<0> : tensor<32xi8>}> : () -> tensor<32xi8>
      %2 = "tt.make_range"() <{end = 32 : i32, start = 0 : i32}> : () -> tensor<32xi32>
      %3 = "arith.cmpi"(%2, %1) <{predicate = 4 : i64}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi1>
      %4 = "arith.cmpi"(%2, %1) <{predicate = 5 : i64}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi1>
      %5 = "arith.cmpi"(%1, %2) <{predicate = 4 : i64}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi1>
      %6 = "arith.cmpi"(%1, %2) <{predicate = 5 : i64}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi1>
      %7 = "ttg.global_scratch_alloc"() <{size = 512 : i32, alignment = 16 : i32}> : () -> !ttg scratch_ptr
      .loc "file.mlir":(tensor<32xi8>) -> ()
      %8 = "arith.constant"() <{value = dense<1> : tensor<32xi8>}> : () -> tensor<32xi8>
      %9 = "tt.make_range"() <{end = 32 : i32, start = 0 : i32}> : () -> tensor<32xi32>
      %10 = "arith.cmpi"(%9, %8) <{predicate = 4 : i64}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi1>
      %11 = "arith.cmpi"(%9, %8) <{predicate = 5 : i64}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi1>
      %12 = "arith.cmpi"(%8, %9) <{predicate = 4 : i64}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi1>
      %13 = "arith.cmpi"(%8, %9) <{predicate = 5 : i64}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi1>
      %14 = "ttg.global_scratch_alloc"() <{size = 256 : i32, alignment = 16 : i32}> : () -> !ttg scratch_ptr
      .loc "file.mlir":(tensor<32xi8>) -> ()
      %15 = "arith.constant"() <{value = dense<2> : tensor<32xi8>}> : () -> tensor<32xi8>
      %16 = "tt.make_range"() <{end = 32 : i32, start = 0 : i32}> : () -> tensor<32xi32>
      %17 = "arith.cmpi"(%16, %15) <{predicate = 4 : i64}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi1>
      %18 = "arith.cmpi"(%16, %15) <{predicate = 5 : i64}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi1>
      %19 = "arith.cmpi"(%15, %16) <{predicate = 4 : i64}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi1>
      %20 = "arith.cmpi"(%15, %16) <{predicate = 5 : i64}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi1>
      "tt.return"(%1) : (tensor<32xi8>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, ttg.target = "cuda:90", "ttg.threads-per-warp" = 32 : i32} : () -> ()