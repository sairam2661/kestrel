"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "complex_arith"}> ({
    %0 = "arith.constant"() <{value = dense<1234567890123456789> : tensor<1x1x1xi64>}> : () -> tensor<1x1x1xi64>
    %1 = "arith.constant"() <{value = dense<987654321098765432> : tensor<1x1x1xi64>}> : () -> tensor<1x1x1xi64>
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflow_mode_wrap}> : (tensor<1x1x1xi64>, tensor<1x1x1xi64>) -> tensor<1x1x1xi64>
    %3 = "arith.subi"(%0, %1) <{overflowFlags = #arith_overflow_mode_wrap}> : (tensor<1x1x1xi64>, tensor<1x1x1xi64>) -> tensor<1x1x1xi64>
    %4 = "arith.muli"(%0, %1) <{overflowFlags = #arith_overflow_mode_wrap}> : (tensor<1x1x1xi64>, tensor<1x1x1xi64>) -> tensor<1x1x1xi64>
    %5 = "arith.divsi"(%0, %1) <{overflowFlags = #arith_overflow_mode_wrap}> : (tensor<1x1x1xi64>, tensor<1x1x1xi64>) -> tensor<1x1x1xi64>
    %6 = "arith.remsi"(%0, %1) <{overflowFlags = #arith_overflow_mode_wrap}> : (tensor<1x1x1xi64>, tensor<1x1x1xi64>) -> tensor<1x1x1xi64>
    %7 = "arith.xori"(%0, %1) <{overflowFlags = #arith_overflow_mode_wrap}> : (tensor<1x1x1xi64>, tensor<1x1x1xi64>) -> tensor<1x1x1xi64>
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()