"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>):
    %0 = "arith.constant"() <{value = dense<10> : tensor<32xi32>}> : () -> tensor<32xi32>
    %1 = "arith.addsi"(%arg0, %1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %2 = "arith.muli"(%arg1, %0) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %3 = "arith.subi"(%1, %2) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %4 = "arith.remsi"(%3, %0) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %5 = "arith.cmpi"(%4, %0) <{predicate = 4 : i64}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi1>
    %6 = "arith.select"(%5, %4, %3) : (tensor<32xi1>, tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %7 = "arith.xori"(%6, %0) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    "tt.return"(%7) : (tensor<32xi32>) -> ()
  }) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
}) : () -> ()