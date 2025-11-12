"builtin.module"() ({
  "tt.func"() <{function_type = () -> (tensor<16x16xi32>, tensor<16xi32>), sym_name = "complex_scratch_alloc"}> ({
    %0 = "ttg.global_scratch_alloc"() <{size = 4096 : i32}> : () -> tensor<16x16xi32>
    %1 = "ttg.global_scratch_alloc"() <{size = 2048 : i32}> : () -> tensor<16xi32>
    %2 = "ttg.global_scratch_alloc"() <{size = 1024 : i32}> : () -> tensor<16x16xi32>
    %3 = "ttg.global_scratch_alloc"() <{size = 512 : i32}> : () -> tensor<16xi32>
    "tt.return"(%0, %1) : (tensor<16x16xi32>, tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()