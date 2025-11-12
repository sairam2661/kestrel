"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 8 : i32}], function_type = () -> (tensor<64x1xi32>, tensor<32x1xi32>), sym_name = "complex_alloc_and_compute"}> ({
    %0 = "ttg.global_scratch_alloc"() <{size = 1024 : i32}> : () -> tensor<64x1xi32>
    %1 = "ttg.global_scratch_alloc"() <{size = 512 : i32}> : () -> tensor<32x1xi32>
    %2 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
    %3 = "tt.make_range"() <{end = 32 : i32, start = 0 : i32}> : () -> tensor<32xi32>
    %4 = "arith.constant"() <{value = dense<2> : tensor<64xi32>}> : () -> tensor<64xi32>
    %5 = "arith.constant"() <{value = dense<4> : tensor<32xi32>}> : () -> tensor<32xi32>
    %6 = "arith.shli"(%2, %4) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %7 = "arith.shli"(%3, %5) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    "tt.return"(%0, %1) : (tensor<64x1xi32>, tensor<32x1xi32>) -> ()
  }) : () -> ()
}) : () -> ()