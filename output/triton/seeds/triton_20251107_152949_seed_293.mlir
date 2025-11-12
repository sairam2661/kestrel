"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<128xi32>) -> tensor<128xi32>, sym_name = "complex_op_seq"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<128xi32>):
    %0 = "arith.constant"() <{value = dense<2> : tensor<128xi32>}> : () -> tensor<128xi32>
    %1 = "arith.constant"() <{value = dense<3> : tensor<128xi32>}> : () -> tensor<128xi32>
    %2 = "arith.addi"(%arg1, %0) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %3 = "arith.muli"(%2, %1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %4 = "arith.remsi"(%3, %0) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %5 = "arith.subi"(%4, %1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %6 = "arith.divsi"(%5, %0) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %7 = "arith.cmpi"(%6, %1, "lt") : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %8 = "arith.select"(%7, %6, %5) : (tensor<128xi1>, tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    "tt.return"(%8) : (tensor<128xi32>) -> ()
  }) : () -> ()
}) : () -> ()