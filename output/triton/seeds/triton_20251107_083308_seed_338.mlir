"builtin.module"() ({
  "tt.func"() <{function_type = () -> tensor<128xi32>, sym_name = "complex_op_combinations"}> ({
    ^bb0():
      %0 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
      %1 = "arith.constant"() <{value = dense<1> : tensor<128xi32>}> : () -> tensor<128xi32>
      %2 = "arith.addi"(%0, %1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %3 = "arith.xori"(%2, %1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %4 = "arith.divsi"(%3, %1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %5 = "arith.muli"(%4, %1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %6 = "tt.reduce"(%5) <{operation = "add"}> : (tensor<128xi32>) -> tensor<1xi32>
      "tt.return"(%6) : (tensor<1xi32>) -> ()
  }) : () -> ()
}) : () -> ()