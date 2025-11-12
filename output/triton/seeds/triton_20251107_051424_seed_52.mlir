"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>):
    %0 = "arith.constant"() <{value = dense<1> : tensor<32xi32>}> : () -> tensor<32xi32>
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow} > : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %2 = "arith.subi"(%arg1, %0) <{overflowFlags = #arith_overflow} > : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %3 = "arith.muli"(%1, %2) <{overflowFlags = #arith_overflow} > : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %4 = "arith.remsi"(%3, %0) <{overflowFlags = #arith_overflow} > : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %5 = "arith.cmpi"(%4, %0) <{predicate = 4 : i64}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi1>
    %6 = "arith.select"(%5, %3, %4) : (tensor<32xi1>, tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %7 = "tt.reduce"() ({
      ^bb1(%arg2: tensor<32xi32>, %arg3: tensor<32xi32>):
        %8 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflow} > : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
        "scf.yield"(%8) : (tensor<32xi32>) -> ()
    }) : tensor<32xi32> -> tensor<32xi32>
    "tt.return"(%6, %7) : (tensor<32xi32>, tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()