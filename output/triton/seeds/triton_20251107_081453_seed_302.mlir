"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>, sym_name = "tensor_ops"}> ({
  ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>):
    %0 = "arith.constant"() <{value = dense<5> : tensor<64xi32>}> : () -> tensor<64xi32>
    %1 = "arith.addi"(%arg0, %0) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %2 = "arith.subi"(%arg1, %0) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %3 = "arith.muli"(%1, %2) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %4 = "arith.divsi"(%3, %arg0) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %5 = "arith.remsi"(%arg1, %4) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %6 = "arith.cmpi"(%arg0, %arg1) <{predicate = 1 : i64}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi1>
    %7 = "arith.select"(%6, %4, %5) : (tensor<64xi1>, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %8 = "arith.xori"(%arg0, %arg1) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    "tt.return"(%8) : (tensor<64xi32>) -> ()
  }) : () -> ()
}) : () -> ()