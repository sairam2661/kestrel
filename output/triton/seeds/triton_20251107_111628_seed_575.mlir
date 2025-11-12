"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "fuzzing_seed"}> ({
    %0 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
    %1 = "arith.constant"() <{value = dense<2> : tensor<64xi32>}> : () -> tensor<64xi32>
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflow_flags}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %3 = "tt.make_range"() <{end = 128 : i32, start = 64 : i32}> : () -> tensor<64xi32>
    %4 = "arith.remsi"(%2, %3) <{overflowFlags = #arith_overflow_flags}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %5 = "arith.muli"(%2, %3) <{overflowFlags = #arith_overflow_flags}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %6 = "arith.xori"(%4, %5) <{overflowFlags = #arith_overflow_flags}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %7 = "tt.expand_dims"(%6, %0) <{axis = 1 : i32}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64x64xi32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) {"ttg.num-warps" = 4 : i32} : () -> ()