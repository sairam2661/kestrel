"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>, sym_name = "complex_reduce"}> ({
    %0 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
    %1 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
    %2 = "tt.reduce"(%0, %1) ({
    ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>, %arg2: tensor<128xi32>):
      %3 = "arith.addi"(%arg1, %arg2) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      "scf.yield"(%3) : (tensor<128xi32>) -> ()
    }) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    "tt.return"(%2) : (tensor<128xi32>) -> ()
  }) : () -> ()
}) : () -> ()