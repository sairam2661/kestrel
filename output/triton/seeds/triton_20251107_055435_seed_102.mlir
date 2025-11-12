"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, tensor<128xi32>) -> (tensor<128xi32>, tensor<128xi32>), sym_name = "complex_alloc"}> ({
    ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
      %0 = "ttg.global_scratch_alloc"() <{alignment = 16 : i32, size = 256 : i32}> : () -> tensor<128xi32>
      %1 = "ttg.global_scratch_alloc"() <{alignment = 16 : i32, size = 256 : i32}> : () -> tensor<128xi32>
      %2 = "ttg.global_scratch_alloc"() <{alignment = 16 : i32, size = 256 : i32}> : () -> tensor<128xi32>
      %3 = "ttg.global_scratch_alloc"() <{alignment = 16 : i32, size = 256 : i32}> : () -> tensor<128xi32>
      %4 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      "tt.return"(%4, %0) : (tensor<128xi32>, tensor<128xi32>) -> ()
  }) : () -> ()
}) : () -> ()