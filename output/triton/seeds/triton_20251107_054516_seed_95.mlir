"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 32 : i32}], function_type = (i64) -> (), sym_name = "complex_scratch_alloc"}> ({
  ^bb0(%arg0: i64):
    %0 = "ttg.global_scratch_alloc"() <{size = 1024 : i32}> : () -> memref<1024xi32>
    %1 = "ttg.global_scratch_alloc"() <{size = 512 : i32}> : () -> memref<512xi32>
    %2 = "ttg.global_scratch_alloc"() <{size = 256 : i32}> : () -> memref<256xi32>
    %3 = "ttg.global_scratch_alloc"() <{size = 128 : i32}> : () -> memref<128xi32>
    %4 = "arith.constant"() <{value = dense<1> : tensor<1024xi32>}> : () -> tensor<1024xi32>
    %5 = "arith.constant"() <{value = dense<2> : tensor<512xi32>}> : () -> tensor<512xi32>
    %6 = "arith.constant"() <{value = dense<3> : tensor<256xi32>}> : () -> tensor<256xi32>
    %7 = "arith.constant"() <{value = dense<4> : tensor<128xi32>}> : () -> tensor<128xi32>
    %8 = "arith.muli"(%4, %7) <{overflowFlags = #arith_overflownone}> : (tensor<1024xi32>, tensor<128xi32>) -> tensor<1024xi32>
    %9 = "arith.muli"(%5, %6) <{overflowFlags = #arith_overflownone}> : (tensor<512xi32>, tensor<256xi32>) -> tensor<512xi32>
    %10 = "arith.addi"(%8, %9) <{overflowFlags = #arith_overflownone}> : (tensor<1024xi32>, tensor<512xi32>) -> tensor<1024xi32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()