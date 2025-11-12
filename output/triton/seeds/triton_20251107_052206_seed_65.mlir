"builtin.module"() ({
  "tt.func"() <{function_type = () -> tensor<16xi32>, sym_name = "tensor_ops"}> ({
    %0 = "tt.make_range"() <{end = 100 : i32, start = 0 : i32}> : () -> tensor<16xi32>
    %1 = "arith.constant"() <{value = dense<5> : tensor<16xi32>}> : () -> tensor<16xi32>
    %2 = "arith.addi"(%0, %1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %3 = "arith.muli"(%2, %1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %4 = "arith.remsi"(%3, %1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %5 = "arith.divsi"(%4, %1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %6 = "arith.subi"(%5, %1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "tt.return"(%6) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()