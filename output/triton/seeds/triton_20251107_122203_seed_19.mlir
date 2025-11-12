"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128x128xi32>, i32) -> tensor<128x128xi32>, sym_name = "process_matrix"}> ({
  ^bb0(%arg0: tensor<128x128xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = dense<2> : tensor<128x128xi32>}> : () -> tensor<128x128xi32>
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (tensor<128x128xi32>, tensor<128x128xi32>) -> tensor<128x128xi32>
    %2 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
    %3 = "arith.select"(%arg1, %1, %0) : (i32, tensor<128x128xi32>, tensor<128x128xi32>) -> tensor<128x128xi32>
    %4 = "scf.for"(%2) <{lower_bound = 0 : i32, upper_bound = 128 : i32, step = 1 : i32}> ({
    ^bb1(%iv: i32):
      %5 = "arith.constant"() <{value = dense<1> : tensor<128x128xi32>}> : () -> tensor<128x128xi32>
      %6 = "arith.addi"(%3, %5) <{overflowFlags = #arith_overflownone}> : (tensor<128x128xi32>, tensor<128x128xi32>) -> tensor<128x128xi32>
      "scf.yield"() : () -> ()
    }) : (tensor<128x128xi32>) -> (tensor<128x128xi32>)
    "tt.return"(%4) : (tensor<128x128xi32>) -> ()
  }) : () -> ()
}) : () -> ()