"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<4xi32>, i32) -> tensor<4xi32>, sym_name = "mixed_ops"}> ({
    ^bb0(%arg0: tensor<4xi32>, %arg1: i32):
      %0 = "tt.make_range"() <{end = 4 : i32, start = 0 : i32}> : () -> tensor<4xi32>
      %1 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %2 = "arith.xori"(%arg1, %1) : (i32, i32) -> i32
      %3 = "arith.constant"() <{value = dense<2> : tensor<4xi32>}> : () -> tensor<4xi32>
      %4 = "arith.muli"(%arg0, %3) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      %5 = "scf.if"(%2) ({
        %6 = "arith.remsi"(%4, %3) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
        "scf.yield"(%6) : (tensor<4xi32>) -> ()
      }, {
        "scf.yield"(%4) : (tensor<4xi32>) -> ()
      }) : (i32) -> (tensor<4xi32>)
      "tt.return"(%5) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()