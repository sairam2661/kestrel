"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "complex_arith"}> ({
    %0 = "arith.constant"() <{value = dense<1> : tensor<128xi32>}> : () -> tensor<128xi32>
    %1 = "arith.constant"() <{value = dense<2> : tensor<128xi32>}> : () -> tensor<128xi32>
    %2 = "arith.addi"(%0, %1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %3 = "arith.muli"(%2, %1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %4 = "arith.divsi"(%3, %1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %5 = "arith.remsi"(%4, %0) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %6 = "arith.xori"(%5, %1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %7 = "arith.subi"(%6, %0) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %8 = "arith.cmpi"(%7, %5) <{predicate = 2 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %9 = "arith.select"(%8, %7, %5) : (tensor<128xi1>, tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()