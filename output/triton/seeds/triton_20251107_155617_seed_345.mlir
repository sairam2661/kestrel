"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> (i32), sym_name = "complex_reduce"}> ({
    ^bb0(%arg0: i32):
      %0 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
      %1 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
      %2 = "arith.constant"() <{value = dense<1> : tensor<64xi32>}> : () -> tensor<64xi32>
      %3 = "arith.addi"(%0, %1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %4 = "tt.reduce"(%3, %2) ({
        ^bb1(%arg2: i32, %arg3: i32):
          %5 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
          "scf.yield"(%5) : (i32) -> ()
      }) : (tensor<64xi32>, tensor<64xi32>) -> i32
      "tt.return"(%4) : (i32) -> ()
  }) : (i32) -> (i32)
  "tt.func"() <{function_type = () -> (i32), sym_name = "nested_reduce"}> ({
    ^bb0():
      %0 = "tt.make_range"() <{end = 32 : i32, start = 0 : i32}> : () -> tensor<32xi32>
      %1 = "tt.make_range"() <{end = 32 : i32, start = 0 : i32}> : () -> tensor<32xi32>
      %2 = "arith.constant"() <{value = dense<1> : tensor<32xi32>}> : () -> tensor<32xi32>
      %3 = "arith.addi"(%0, %1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %4 = "tt.reduce"(%3, %2) ({
        ^bb1(%arg2: i32, %arg3: i32):
          %5 = "arith.addi"(%arg2, %arg3) : (i32, i32) -> i32
          %6 = "scf.if"(%5) ({
            ^bb2(%arg4: i32, %arg5: i32):
              %7 = "arith.subi"(%arg4, %arg5) : (i32, i32) -> i32
              "scf.yield"(%7) : (i32) -> ()
          }, {
            ^bb3(%arg6: i32, %arg7: i32):
              %8 = "arith.addi"(%arg6, %arg7) : (i32, i32) -> i32
              "scf.yield"(%8) : (i32) -> ()
          }) : (i32) -> i32
          "scf.yield"(%6) : (i32) -> ()
      }) : (tensor<32xi32>, tensor<32xi32>) -> i32
      "tt.return"(%4) : (i32) -> ()
  }) : () -> (i32)
}) : () -> ()