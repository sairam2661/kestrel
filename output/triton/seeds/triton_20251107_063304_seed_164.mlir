"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xi32>, i32) -> (tensor<64xi32>), sym_name = "complex_control_flow"}> ({
    ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>, %arg2: i32):
      %0 = "tt.expand_dims"(%arg0) <{dim = 1 : i32}> : (tensor<64xi32>) -> tensor<1x64xi32>
      %1 = "tt.expand_dims"(%arg1) <{dim = 1 : i32}> : (tensor<64xi32>) -> tensor<1x64xi32>
      %2 = "arith.constant"() <{value = dense<1> : tensor<1x64xi32>}> : () -> tensor<1x64xi32>
      %3 = "scf.if"(%arg2) ({
        %4 = "arith.subi"(%0, %1) <{overflowFlags = #arith_overflow_mode_bounded}> : (tensor<1x64xi32>, tensor<1x64xi32>) -> tensor<1x64xi32>
        %5 = "tt.reduce"(%4) <{operation = "add", type = i32}> : (tensor<1x64xi32>) -> i32
        %6 = "arith.constant"() <{value = 42 : i32}> : () -> i32
        %7 = "arith.addi"(%5, %6) <{overflowFlags = #arith_overflow_mode_bounded}> : (i32, i32) -> i32
        "scf.yield"(%7) : (i32) -> ()
      }, {
        %8 = "arith.constant"() <{value = 100 : i32}> : () -> i32
        "scf.yield"(%8) : (i32) -> ()
      }) : (i32) -> i32
      %9 = "arith.constant"() <{value = dense<0> : tensor<1x64xi32>}> : () -> tensor<1x64xi32>
      %10 = "tt.addptr"(%0, %9) : (tensor<1x64xi32>, tensor<1x64xi32>) -> tensor<1x64xi32>
      "tt.return"(%10) : (tensor<1x64xi32>) -> ()
  }) : () -> ()
}) : () -> ()