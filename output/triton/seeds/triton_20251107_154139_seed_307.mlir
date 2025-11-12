"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "complex_op"}> ({
    %0 = "tt.make_range"() <{end = 256 : i32, start = 0 : i32}> : () -> tensor<256xi32>
    %1 = "arith.constant"() <{value = dense<2> : tensor<256xi32>}> : () -> tensor<256xi32>
    %2 = "arith.muli"(%0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<256xi32>, tensor<256xi32>) -> tensor<256xi32>
    %3 = "arith.divsi"(%2, %1) <{overflowFlags = #arith_overflownone}> : (tensor<256xi32>, tensor<256xi32>) -> tensor<256xi32>
    %4 = "arith.remsi"(%2, %1) <{overflowFlags = #arith_overflownone}> : (tensor<256xi32>, tensor<256xi32>) -> tensor<256xi32>
    %5 = "arith.select"(%4, %2, %3) : (tensor<256xi32>, tensor<256xi32>, tensor<256xi32>) -> tensor<256xi32>
    %6 = "tt.expand_dims"(%5) <{axis = 1 : i32}> : (tensor<256xi32>) -> tensor<256x1xi32>
    "tt.return"(%6) : (tensor<256x1xi32>) -> ()
  }) : () -> ()
}) : () -> ()