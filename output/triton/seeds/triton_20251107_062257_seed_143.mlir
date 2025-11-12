"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>, sym_name = "mixed"}> ({
  ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>):
    %0 = "arith.constant"() <{value = dense<1> : tensor<32xi32>}> : () -> tensor<32xi32>
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %2 = "arith.divsi"(%1, %0) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %3 = "arith.remsi"(%2, %0) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %4 = "arith.xori"(%3, %1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %5 = "tt.expand_dims"(%4) <{axis = 0 : i32}> : (tensor<32xi32>) -> tensor<1x32xi32>
    %6 = "tt.make_range"(%5) <{start = 0 : i32, end = 32 : i32, step = 1 : i32}> : (tensor<1x32xi32>) -> tensor<1x32xi32>
    %7 = "tt.reduce"(%6) <{operation = "add"}> ({
    ^bb0(%arg2: tensor<1x32xi32>):
      "tt.yield"(%arg2) : (tensor<1x32xi32>) -> ()
    }) : (tensor<1x32xi32>) -> tensor<1xi32>
    "tt.return"(%7) : (tensor<1xi32>) -> ()
  }) : () -> ()
}) : () -> ()