"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128x128xi32>, i32) -> tensor<128x128xi32>, sym_name = "complex_op"}> ({
  ^bb0(%arg0: tensor<128x128xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = dense<2> : tensor<128x128xi32>}> : () -> tensor<128x128xi32>
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (tensor<128x128xi32>, tensor<128x128xi32>) -> tensor<128x128xi32>
    %2 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %3 = "arith.addi"(%arg1, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
    %5 = "arith.constant"() <{value = dense<2> : tensor<128xi32>}> : () -> tensor<128xi32>
    %6 = "arith.addi"(%4, %5) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %7 = "tt.expand_dims"(%6) <{axis = 1 : i32}> : (tensor<128xi32>) -> tensor<128x1xi32>
    %8 = "arith.muli"(%7, %3) <{overflowFlags = #arith_overflownone}> : (tensor<128x1xi32>, i32) -> tensor<128x1xi32>
    %9 = "tt.addptr"(%1, %8, %0) <{scale = 1 : index}> : (i32, tensor<128x1xi32>, tensor<128x128xi32>) -> !tt_ptr
    "tt.return"(%9) : (!tt_ptr) -> ()
  }) : () -> ()
}) : () -> ()