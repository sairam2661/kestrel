"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>) -> (tensor<128xi32>), sym_name = "complex_reduce"}> ({
    ^bb0(%arg0: tensor<128xi32>):
      %0 = "tt.reduce"(%arg0) ({
        ^bb1(%arg1: tensor<128xi32>, %arg2: tensor<128xi32>):
          %1 = "arith.addi"(%arg1, %arg2) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
          "scf.yield"(%1) : (tensor<128xi32>) -> ()
      }) : (tensor<128xi32>) -> tensor<128xi32>
      %2 = "tt.expand_dims"(%0, 0) <{new_sizes = [1]}> : (tensor<128xi32>) -> tensor<1x128xi32>
      %3 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
      %4 = "tt.addptr"(%2, %3) <{stride = 1 : i32}> : (tensor<1x128xi32>, tensor<128xi32>) -> tensor<1x128xi32>
      "tt.return"(%4) : (tensor<1x128xi32>) -> ()
  }) : () -> ()
}) : () -> ()