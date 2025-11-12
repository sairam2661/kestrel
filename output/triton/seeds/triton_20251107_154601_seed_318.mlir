"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>) -> tensor<32xi32>, sym_name = "unusual_math"}> ({
  ^bb0(%arg0: tensor<32xi32>):
    %0 = "arith.constant"() <{value = dense<2> : tensor<32xi32>}> : () -> tensor<32xi32>
    %1 = "tt.make_range"() <{end = 32 : i32, start = 0 : i32}> : () -> tensor<32xi32>
    %2 = "arith.muli"(%arg0, %0) <{overflowFlags = #arith_overflow_mode_overflow}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %3 = "arith.constant"() <{value = dense<3> : tensor<32xi32>}> : () -> tensor<32xi32>
    %4 = "arith.select"(%1, %2, %3) <{predicate = "slt"}> : (tensor<32xi32>, tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %5 = "arith.xori"(%4, %0) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %6 = "arith.divsi"(%5, %0) <{overflowFlags = #arith_overflow_mode_overflow}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    "tt.return"(%6) : (tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()