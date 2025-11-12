"builtin.module"() ({
  "tt.func"() <{function_type = () -> (tensor<4x3xi8>, tensor<3x2xi16>), sym_name = "complex_allocs"}> ({
    %0 = "ttg.global_scratch_alloc"() <{size = 1024 : i32}> : () -> tensor<32xi32>
    %1 = "ttg.global_scratch_alloc"() <{size = 512 : i32}> : () -> tensor<16xi32>
    %2 = "arith.constant"() <{value = dense<0> : tensor<4x3xi8>}> : () -> tensor<4x3xi8>
    %3 = "arith.constant"() <{value = dense<1> : tensor<3x2xi16>}> : () -> tensor<3x2xi16>
    "tt.return"(%2, %3) : (tensor<4x3xi8>, tensor<3x2xi16>) -> ()
  }) : () -> ()
}) : () -> ()