"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "stress_test"}> ({
    ^bb0:
      %0 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
      %1 = "tt.make_range"() <{end = 32 : i32, start = 16 : i32}> : () -> tensor<32xi32>
      %2 = "arith.constant"() <{value = dense<2> : tensor<64xi32>}> : () -> tensor<64xi32>
      %3 = "arith.constant"() <{value = dense<3> : tensor<64xi32>}> : () -> tensor<64xi32>
      %4 = "arith.xori"(%0, %2) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %5 = "arith.remsi"(%4, %3) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %6 = "arith.cmpi"(%0, %1) <{predicate = 4 : i64}> : (tensor<64xi32>, tensor<32xi32>) -> tensor<64xi1>
      %7 = "arith.select"(%6, %5, %0) : (tensor<64xi1>, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %8 = "scf.for"(%0, %0, %3) ({
      ^bb1(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>):
        %9 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_none}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
        "scf.yield"(%9) : (tensor<64xi32>) -> ()
      }) : (tensor<64xi32>, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()