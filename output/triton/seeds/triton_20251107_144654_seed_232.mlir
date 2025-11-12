"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<128xi32>) -> tensor<128xi32>, sym_name = "tensor_manipulation"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<128xi32>):
    %0 = "arith.constant"() <{value = dense<1> : tensor<128xi32>}> : () -> tensor<128xi32>
    %1 = "arith.addi"(%arg1, %0) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %2 = "arith.constant"() <{value = dense<2> : tensor<128xi32>}> : () -> tensor<128xi32>
    %3 = "arith.muli"(%1, %2) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %4 = "arith.constant"() <{value = dense<3> : tensor<128xi32>}> : () -> tensor<128xi32>
    %5 = "arith.divsi"(%3, %4) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %6 = "arith.constant"() <{value = dense<4> : tensor<128xi32>}> : () -> tensor<128xi32>
    %7 = "arith.remsi"(%5, %6) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    "tt.return"(%7) : (tensor<128xi32>) -> ()
  }) : () -> ()
}) : () -> ()