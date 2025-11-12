"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "edge_cases"}> ({
    %0 = "arith.constant"() <{value = dense<1> : tensor<64xi32>}> : () -> tensor<64xi32>
    %1 = "arith.constant"() <{value = dense<32> : tensor<64xi32>}> : () -> tensor<64xi32>
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %3 = "arith.xori"(%0, %2) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %4 = "arith.cmpi"(%0, %2) <{predicate = 0 : i64}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi1>
    %5 = "arith.select"(%4, %0, %2) : (tensor<64xi1>, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %6 = "arith.divsi"(%2, %1) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %7 = "arith.remsi"(%2, %1) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()