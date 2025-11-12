"builtin.module"() ({
  "tt.func"() <{function_type = () -> tensor<128xi32>, sym_name = "complex_op_sequence"}> ({
    %0 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
    %1 = "arith.constant"() <{value = dense<42> : tensor<128xi32>}> : () -> tensor<128xi32>
    %2 = "arith.addi"(%0, %1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %3 = "arith.subi"(%2, %1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %4 = "arith.divsi"(%3, %1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %5 = "arith.remsi"(%4, %1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %6 = "arith.select"(%5, %3, %2) <{predicate = 4 : i64}> : (tensor<128xi32>, tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    "tt.return"(%6) : (tensor<128xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-warps" = 3 : i32} : () -> ()