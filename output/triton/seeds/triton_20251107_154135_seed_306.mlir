"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "complex_op"}> ({
    %0 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
    %1 = "arith.constant"() <{value = dense<2> : tensor<64xi32>}> : () -> tensor<64xi32>
    %2 = "arith.muli"(%0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %3 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %4 = "arith.remsi"(%2, %3) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %5 = "tt.expand_dims"(%4) <{axis = 1 : i32}> : (tensor<64xi32>) -> tensor<64x1xi32>
    %6 = "arith.constant"() <{value = dense<true> : tensor<64x1xi1>}> : () -> tensor<64x1xi1>
    %7 = "arith.select"(%6, %0, %5) <{}>
    : (tensor<64x1xi1>, tensor<64xi32>, tensor<64x1xi32>) -> tensor<64x1xi32>
    "tt.return"(%7) : (tensor<64x1xi32>) -> ()
  }) : () -> ()
}) : () -> ()