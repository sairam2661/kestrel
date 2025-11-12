"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>, sym_name = "complex"}> ({
  ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
    %0 = "arith.constant"() <{value = dense<5 : i32> : tensor<128xi32>}> : () -> tensor<128xi32>
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_none}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %2 = "arith.xori"(%0, %1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %3 = "arith.divsi"(%2, %0) <{overflowFlags = #arith_overflow_none}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %4 = "arith.remsi"(%3, %0) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %5 = "tt.expand_dims"(%4) <{axis = 0 : i32}> : (tensor<128xi32>) -> tensor<1x128xi32>
    %6 = "tt.make_range"(%5) <{start = 0 : i32, end = 128 : i32, step = 1 : i32}> : (tensor<1x128xi32>) -> tensor<128xi32>
    %7 = "tt.reduce"(%6) <{operation = "add", identity = 0 : i32}> : (tensor<128xi32>) -> tensor<1xi32>
    "tt.return"(%7) : (tensor<1xi32>) -> ()
  }) : () -> ()
}) : () -> ()