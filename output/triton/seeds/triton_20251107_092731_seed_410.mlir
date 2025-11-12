"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>, sym_name = "complex_arith"}> ({
  ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>):
    %0 = "arith.constant"() <{value = dense<10> : tensor<32xi32>}> : () -> tensor<32xi32>
    %1 = "arith.constant"() <{value = dense<2> : tensor<32xi32>}> : () -> tensor<32xi32>
    %2 = "arith.addi"(%arg0, %1) <{overflowFlags = #arith_overflow_none}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %3 = "arith.subi"(%arg1, %0) <{overflowFlags = #arith_overflow_none}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %4 = "arith.muli"(%2, %3) <{overflowFlags = #arith_overflow_none}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %5 = "arith.xori"(%4, %0) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %6 = "arith.remsi"(%5, %1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %7 = "arith.cmpi"(%6, %1) <{predicate = 3 : i64}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<1xi1>
    %8 = "arith.select"(%7, %6, %4) : (tensor<1xi1>, tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    "tt.return"(%8) : (tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()