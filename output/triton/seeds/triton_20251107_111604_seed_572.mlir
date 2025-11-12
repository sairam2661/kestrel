"builtin.module"() ({
  "tt.func"() <{function_type = () -> tensor<16xi32>, sym_name = "unusual_ops"}> ({
    %0 = "arith.constant"() <{value = dense<123456789> : tensor<16xi32>}> : () -> tensor<16xi32>
    %1 = "arith.constant"() <{value = dense<987654321> : tensor<16xi32>}> : () -> tensor<16xi32>
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflow_flags}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %3 = "arith.remsi"(%2, %0) <{overflowFlags = #arith_overflow_flags}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %4 = "arith.muli"(%3, %1) <{overflowFlags = #arith_overflow_flags}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %5 = "arith.xori"(%4, %2) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %6 = "arith.cmpi"(%5, %3) <{predicate = 4 : i64}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
    %7 = "arith.select"(%6, %0, %1) : (tensor<16xi1>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "tt.return"(%7) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-warps" = 4 : i32} : () -> ()