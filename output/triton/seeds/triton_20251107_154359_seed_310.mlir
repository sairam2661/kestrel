"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> i32, sym_name = "complex_reduce", sym_visibility = "public"}> ({
    ^bb0(%arg0: i32):
      %0 = "tt.make_range"() <{end = 32 : i32, start = 0 : i32}> : () -> tensor<32xi32>
      %1 = "arith.constant"() <{value = dense<10> : tensor<32xi32>}> : () -> tensor<32xi32>
      %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %3 = "tt.reduce"(%2) ({
        ^bb0(%arg1: i32, %arg2: i32):
          %4 = "arith.addi"(%arg1, %arg2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
          "scf.yield"(%4) : (i32) -> ()
      }) : (tensor<32xi32>) -> i32
      "tt.return"(%3) : (i32) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (i32) -> (i32, i32), sym_name = "complex_if", sym_visibility = "public"}> ({
    ^bb0(%arg0: i32):
      %0 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
      %1 = "arith.constant"() <{value = dense<20> : tensor<64xi32>}> : () -> tensor<64xi32>
      %2 = "arith.subi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %3 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %4:2 = "scf.for"(%0, %3, %arg0) ({
        ^bb0(%arg1: tensor<64xi32>, %arg2: i32):
          "scf.if"(%arg0) ({
            %5 = "arith.addi"(%arg1, %arg2) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, i32) -> tensor<64xi32>
            "scf.yield"(%5, %arg2) : (tensor<64xi32>, i32) -> ()
          }) {
            "scf.yield" = () -> ()
          }
      : (tensor<64xi32>, i32) -> (tensor<64xi32>, i32)
      }) : (tensor<64xi32>, i32) -> (tensor<64xi32>, i32)
      "tt.return"(%4#0, %4#1) : (tensor<64xi32>, i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()