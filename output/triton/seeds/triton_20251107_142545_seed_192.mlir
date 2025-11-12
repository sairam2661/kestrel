"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xi32>, i1) -> (tensor<64xi32>), sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>, %arg2: i1):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "tt.make_range"() <{start = 0 : i32, end = 64 : i32}> : () -> tensor<64xi32>
    %2 = "arith.muli"(%arg0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %3 = "scf.if"(%arg2) ({
      %4 = "arith.select"(%arg2, %arg0, %arg1) : (i1, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %5 = "arith.addi"(%4, %2) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      "scf.yield"(%5) : (tensor<64xi32>) -> ()
    }, {
      %6 = "arith.divsi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      "scf.yield"(%6) : (tensor<64xi32>) -> ()
    }) : (i1) -> tensor<64xi32>
    %7 = "arith.xori"(%3, %0) : (tensor<64xi32>, i32) -> tensor<64xi32>
    "tt.return"(%7) : (tensor<64xi32>) -> ()
  }) : () -> ()
}) : () -> ()