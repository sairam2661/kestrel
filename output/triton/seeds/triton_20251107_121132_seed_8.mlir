"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32x32xi32>, tensor<32x32xi32>) -> tensor<32x32xi32>, sym_name = "tensor_complex_op"}> ({
  ^bb0(%arg0: tensor<32x32xi32>, %arg1: tensor<32x32xi32>):
    %0 = "arith.constant"() <{value = dense<5> : tensor<32x32xi32>}> : () -> tensor<32x32xi32>
    %1 = "arith.addi"(%arg0, %arg1) : (tensor<32x32xi32>, tensor<32x32xi32>) -> tensor<32x32xi32>
    %2 = "arith.muli"(%1, %0) : (tensor<32x32xi32>, tensor<32x32xi32>) -> tensor<32x32xi32>
    %3 = "arith.divsi"(%2, %0) : (tensor<32x32xi32>, tensor<32x32xi32>) -> tensor<32x32xi32>
    %4 = "arith.cmpi"(%3, %arg0) <{predicate = 0 : i64}> : (tensor<32x32xi32>, tensor<32x32xi32>) -> tensor<32x32xi1>
    %5 = "arith.select"(%4, %arg0, %arg1) : (tensor<32x32xi1>, tensor<32x32xi32>, tensor<32x32xi32>) -> tensor<32x32xi32>
    "tt.return"(%5) : (tensor<32x32xi32>) -> ()
  }) : () -> ()
}) : () -> ()