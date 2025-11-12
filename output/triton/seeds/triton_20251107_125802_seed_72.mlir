"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>, sym_name = "unusual_sequence"}> ({
    ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
      %0 = "tt.make_range"() <{end = 256 : i32, start = 128 : i32}> : () -> tensor<128xi32>
      %1 = "arith.constant"() <{value = dense<32> : tensor<128xi32>}> : () -> tensor<128xi32>
      %2 = "arith.subi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %3 = "tt.expand_dims"(%2) <{axis = 1 : i32}> : (tensor<128xi32>) -> tensor<128x1xi32>
      %4 = "tt.addptr"(%3, %0) : (tensor<128x1xi32>, tensor<128xi32>) -> tensor<128x1xi32>
      %5 = "tt.reduce"(%4) <{operation = "add"}> : (tensor<128x1xi32>) -> tensor<128xi32>
      "tt.return"(%5) : (tensor<128xi32>) -> ()
  }) : () -> ()
}) : () -> ()