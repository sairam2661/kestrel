"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "complex_op_sequence"}> ({
    ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
      %0 = "arith.addi"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %1 = "arith.subi"(%0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %2 = "ttg.global_scratch_alloc"() <{size = 64 : i32}> : () -> !ttgpointer
      %3 = "tt.store"(%1, %2) <{is_volatile = false}> : (tensor<16xi32>, !ttgpointer) -> ()
      %4 = "tt.load"(%2) <{is_volatile = false}> : (!ttgpointer) -> tensor<16xi32>
      %5 = "arith.muli"(%4, %arg0) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %6 = "arith.divi"(%5, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "tt.return"(%6) : (tensor<16xi32>) -> ()
  }) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
}) : () -> ()