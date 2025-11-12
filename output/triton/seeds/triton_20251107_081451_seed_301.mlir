"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16x32xi32>, tensor<16x32xi32>) -> tensor<16x32xi32>, sym_name = "compound_ops"}> ({
  ^bb0(%arg0: tensor<16x32xi32>, %arg1: tensor<16x32xi32>):
    %0 = "arith.constant"() <{value = dense<2> : tensor<16x32xi32>}> : () -> tensor<16x32xi32>
    %1 = "arith.addi"(%arg0, %arg1) : (tensor<16x32xi32>, tensor<16x32xi32>) -> tensor<16x32xi32>
    %2 = "arith.muli"(%1, %0) : (tensor<16x32xi32>, tensor<16x32xi32>) -> tensor<16x32xi32>
    %3 = "arith.subi"(%2, %arg0) : (tensor<16x32xi32>, tensor<16x32xi32>) -> tensor<16x32xi32>
    %4 = "arith.remsi"(%3, %arg1) : (tensor<16x32xi32>, tensor<16x32xi32>) -> tensor<16x32xi32>
    %5 = "arith.cmpi"(%4, %arg1) <{predicate = 4 : i64}> : (tensor<16x32xi32>, tensor<16x32xi32>) -> tensor<16x32xi1>
    %6 = "arith.select"(%5, %arg0, %arg1) : (tensor<16x32xi1>, tensor<16x32xi32>, tensor<16x32xi32>) -> tensor<16x32xi32>
    %7 = "arith.xori"(%6, %arg0) : (tensor<16x32xi32>, tensor<16x32xi32>) -> tensor<16x32xi32>
    "tt.return"(%7) : (tensor<16x32xi32>) -> ()
  }) : () -> ()
}) : () -> ()