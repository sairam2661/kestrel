"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>, sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>):
    %0 = "arith.constant"() <{value = dense<100> : tensor<64xi32>}> : () -> tensor<64xi32>
    %1 = "arith.xori"(%arg0, %arg1) <{}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %2 = "arith.muli"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %3 = "arith.subi"(%1, %2) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %4 = "scf.if"(%arg1) ({
      %5 = "arith.cmpi"(%3, %0) <{predicate = 4 : i64}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi1>
      "scf.yield"(%5) : (tensor<64xi1>) -> ()
    }, {
      %6 = "arith.cmpi"(%3, %0) <{predicate = 5 : i64}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi1>
      "scf.yield"(%6) : (tensor<64xi1>) -> ()
    }) : (tensor<64xi32>) -> tensor<64xi1>
    %7 = "scf.for"(%arg0, %0, %0) ({
      ^bb1(%iv: tensor<64xi32>):
        %8 = "arith.addi"(%iv, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
        "scf.yield"() : () -> ()
    }) : (tensor<64xi32>, tensor<64xi32>, tensor<64xi32>) -> ()
    "tt.return"(%3) : (tensor<64xi32>) -> ()
  }) : () -> ()
}) : () -> ()