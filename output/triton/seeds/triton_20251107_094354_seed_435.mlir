"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "stress_test"}> ({
    %0 = "ttg.global_scratch_alloc"() <{size = 1024 : i32}> : () -> !ttg scratch_ptr
    .bb0:
      tensor<128x128xf32>
    %1 = "ttg.global_scratch_alloc"() <{size = 2048 : i32}> : () -> !ttg scratch_ptr
    .bb1:
      tensor<64x64xi32>
    %2 = "ttg.global_scratch_alloc"() <{size = 512 : i32}> : () -> !ttg scratch_ptr
    .bb2:
      tensor<32x32xi16>
    %3 = "ttg.global_scratch_alloc"() <{size = 256 : i32}> : () -> !ttg scratch_ptr
    .bb3:
      tensor<16x16xi8>
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()