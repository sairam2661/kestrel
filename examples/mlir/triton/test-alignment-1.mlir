"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "add"}> ({
    %0 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
    %1 = "arith.constant"() <{value = dense<1> : tensor<128xi32>}> : () -> tensor<128xi32>
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith.overflow<none>}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %3 = "arith.constant"() <{value = dense<127> : tensor<128xi32>}> : () -> tensor<128xi32>
    %4 = "arith.addi"(%1, %3) <{overflowFlags = #arith.overflow<none>}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

