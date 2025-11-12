"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>, sym_name = "mixed_operations"}> ({
  ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %1 = "arith.divsi"(%0, %arg0) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %2 = "arith.constant"() <{value = dense<5> : tensor<32xi32>}> : () -> tensor<32xi32>
    %3 = "arith.cmpi"(%1, %2) <{predicate = 1 : i64}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<i1>
    %4 = "scf.if"(%3) ({
      %5 = "arith.subi"(%arg0, %arg1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "scf.yield"(%5) : (tensor<32xi32>) -> ()
    }, {
      "scf.yield"(%arg0) : (tensor<32xi32>) -> ()
    }) : (tensor<i1>) -> tensor<32xi32>
    "tt.return"(%4) : (tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()