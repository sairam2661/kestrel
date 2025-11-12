"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>, sym_name = "complex_op_sequence"}> ({
    ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>):
      %0 = "ttg.global_scratch_alloc"() <{size = 1024 : i32}> : () -> !ttg_global_scratch
      %1 = "tt.make_range"() <{end = 32 : i32, start = 0 : i32}> : () -> tensor<32xi32>
      %2 = "arith.addi"(%arg0, %arg1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %3 = "arith.muli"(%2, %1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %4 = "arith.subi"(%3, %arg0) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %5 = "arith.cmpi"(%4, %arg1) <{predicate = 4 : i64}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi1>
      %6 = "arith.select"(%5, %3, %arg0) : (tensor<32xi1>, tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %7 = "tt.return"(%6) : (tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()