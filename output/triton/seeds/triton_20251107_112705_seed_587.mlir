"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<128x64xi32>) -> (tensor<128x64xi32>, tensor<128x64xi32>), sym_name = "tensor_op_combinations"}> ({
    %0 = "arith.constant"() <{value = dense<0> : tensor<128x64xi32>}> : () -> tensor<128x64xi32>
    %1 = "arith.constant"() <{value = dense<1> : tensor<128x64xi32>}> : () -> tensor<128x64xi32>
    %2 = "tt.expand_dims"(%0, 1) : (tensor<128x64xi32>, i32) -> tensor<128x1x64xi32>
    %3 = "tt.reduce"() ({
    ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
      %4 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      "scf.yield"(%4) : (tensor<128xi32>) -> ()
    }) : (tensor<128x1x64xi32>) -> tensor<128xi32>
    %5 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
    %6 = "tt.addptr"(%1, %5) : (!tt_ptr, tensor<128xi32>) -> !tt_ptr
    %7 = "arith.constant"() <{value = dense<256> : tensor<128xi32>}> : () -> tensor<128xi32>
    %8 = "arith.remsi"(%7, %5) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    "tt.return"(%3, %8) : (tensor<128xi32>, tensor<128xi32>) -> ()
  }) : (i32, tensor<128x64xi32>) -> (tensor<128x64xi32>, tensor<128x64xi32>)
}) : () -> ()