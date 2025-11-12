"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "complex_op"}> ({
    %0 = "arith.constant"() <{value = dense<42> : tensor<32xi32>}> : () -> tensor<32xi32>
    %1 = "arith.constant"() <{value = dense<23> : tensor<32xi32>}> : () -> tensor<32xi32>
    %2 = "arith.addi"(%0, %1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %3 = "arith.subi"(%2, %1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %4 = "arith.muli"(%3, %0) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %5 = "arith.divsi"(%4, %1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %6 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
    %7 = "arith.select"(%0, %1, %6) : (tensor<32xi32>, tensor<32xi32>, tensor<64xi32>) -> tensor<64xi32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()