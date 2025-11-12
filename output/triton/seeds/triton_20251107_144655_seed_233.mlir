"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "complex_op_sequence"}> ({
    %0 = "arith.constant"() <{value = dense<10> : tensor<64xi32>}> : () -> tensor<64xi32>
    %1 = "arith.constant"() <{value = dense<5> : tensor<64xi32>}> : () -> tensor<64xi32>
    %2 = "arith.addi"(%0, %1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %3 = "arith.subi"(%2, %1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %4 = "arith.muli"(%0, %3) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %5 = "arith.cmpi"(%4, %0, "slt") : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi1>
    %6 = "arith.select"(%5, %2, %3) : (tensor<64xi1>, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %7 = "arith.remsi"(%6, %1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %8 = "arith.xori"(%7, %0) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    "tt.return"(%8) : (tensor<64xi32>) -> ()
  }) : () -> ()
}) : () -> ()