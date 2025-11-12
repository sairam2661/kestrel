"builtin.module"() ({
  "tt.func"() <{function_type = () -> tensor<64xi32>, sym_name = "stress_test", sym_visibility = "public"}> ({
    ^bb0:
      %0 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
      %1 = "arith.constant"() <{value = dense<2> : tensor<64xi32>}> : () -> tensor<64xi32>
      %2 = "arith.addi"(%0, %1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %3 = "arith.constant"() <{value = dense<4> : tensor<64xi32>}> : () -> tensor<64xi32>
      %4 = "arith.remsi"(%2, %3) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %5 = "arith.constant"() <{value = dense<-1> : tensor<64xi32>}> : () -> tensor<64xi32>
      %6 = "arith.xori"(%4, %5) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %7 = "arith.subi"(%6, %3) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      "tt.return"(%7) : (tensor<64xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32} : () -> ()