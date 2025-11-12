"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 8 : i32}], function_type = (i32, i32) -> (i32), sym_name = "complex_division"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.subi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "tt.addptr"(%arg0, %1) : (i32, i32) -> !tt ptr
    .


    i32
    %3
    : () -> tensor<128xi32>
    %4 = "arith.constant"() <{value = dense<64> : tensor<128xi32>}> : () -> tensor<128xi32>
    %5 = "arith.divsi"(%0, %4) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %6 = "arith.divui"(%4, %0) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %7 = "arith.constant"() <{value = 32 : i32}> : () -> i32
    %8 = "arith.divsi"(%arg0, %7) : (i32, i32) -> i32
    %9 = "arith.constant"() <{value = 6 : i32}> : () -> i32
    %10 = "arith.divsi"(%arg0, %9) : (i32, i32) -> i32
    %11 = "tt.make_range"() <{end = 8320 : i32, start = 8192 : i32}> : () -> tensor<128xi32>
    %12 = "arith.divsi"(%11, %4) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %13 = "tt.expand_dims"(%arg1) <{axis = 1 : i32}> : (i32) -> tensor<1x128xi32>
    %14 = "tt.broadcast"(%13) : (tensor<1x128xi32>) -> tensor<128x128xi32>
    %15 = "tt.reduce"(%14) : (tensor<128x128xi32>) -> i32
    %16 = "tt.call"(%15) <{callee = @addptr_hints}> : (i32) -> i32
    "tt.return"(%16) : (i32) -> ()
  }) : (i32, i32) -> (i32)
}) : () -> ()