"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arithoverflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %1 = "arith.subi"(%arg1, %arg0) <{overflowFlags = #arithoverflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %2 = "arith.muli"(%0, %1) <{overflowFlags = #arithoverflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %3 = "arith.cmpi"(%0, %1) <{predicate = 1 : i64}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi1>
    %4 = "arith.xori"(%arg0, %arg1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %5 = "scf.if"(%3) ({
      %6 = "arith.addi"(%2, %4) <{overflowFlags = #arithoverflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "scf.yield"(%6) : (tensor<32xi32>) -> ()
    }) {
      "scf.yield" 	= "arith.subi"		: (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    } : (tensor<32xi32>) -> tensor<32xi32>
    "tt.return"(%5) : (tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()