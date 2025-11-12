"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 32 : i32}], function_type = (tensor<128xi32>) -> tensor<128xi32>, sym_name = "complex_op"}> ({
  ^bb0(%arg0: tensor<128xi32>):
    %0 = "arith.constant"() <{value = dense<7> : tensor<128xi32>}> : () -> tensor<128xi32>
    %1 = "arith.xori"(%arg0, %0) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %2 = "arith.subi"(%1, %0) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %3 = "arith.remsi"(%2, %0) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %4 = "tt.make_range"() <{end = 256 : i32, start = 128 : i32}> : () -> tensor<128xi32>
    %5 = "arith.addi"(%arg0, %4) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %6 = "arith.muli"(%5, %0) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %7 = "arith.constant"() <{value = dense<64> : tensor<128xi32>}> : () -> tensor<128xi32>
    %8 = "arith.remsi"(%6, %7) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %9 = "tt.expand_dims"(%8, %c0) : (tensor<128xi32>, i32) -> tensor<128x1xi32>
    %10 = "tt.reduce"(%9, %c1) <{operation = "#tt.reduce<add>"}> : (tensor<128x1xi32>, i32) -> tensor<128xi32>
    "tt.return"(%10) : (tensor<128xi32>) -> ()
  }) : () -> ()
}) : () -> ()