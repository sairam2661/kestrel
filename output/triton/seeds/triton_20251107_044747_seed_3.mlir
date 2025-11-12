"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "mixed_ops"}> ({
    %0 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
    %1 = "arith.constant"() <{value = dense<8> : tensor<64xi32>}> : () -> tensor<64xi32>
    %2 = "arith.addi"(%0, %1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %3 = "arith.muli"(%2, %1) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %4 = "arith.xori"(%3, %1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %5 = "arith.cmpi"(%4, %2) <{predicate = 4 : i64}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi1>
    %6 = "arith.constant"() <{value = dense<16> : tensor<64xi32>}> : () -> tensor<64xi32>
    %7 = "arith.select"(%5, %4, %6) : (tensor<64xi1>, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()