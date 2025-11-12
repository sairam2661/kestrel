"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>, sym_name = "complex_op"}> ({
  ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
    %0 = "arith.constant"() <{value = dense<2> : tensor<128xi32>}> : () -> tensor<128xi32>
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_none}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %2 = "tt.addptr"(%arg0, %0) <{alignment = 32}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %3 = "arith.subi"(%1, %2) <{overflowFlags = #arith_overflow_none}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %4 = "tt.reduce"(%3) ({
      ^bb0(%arg2: tensor<128xi32>):
        %5 = "arith.addi"(%arg2, %arg2) <{overflowFlags = #arith_overflow_none}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
        "tt.yield"(%5) : (tensor<128xi32>) -> ()
    }) : (tensor<128xi32>) -> tensor<128xi32>
    "tt.return"(%4) : (tensor<128xi32>) -> ()
  }) : () -> ()
}) : () -> ()