"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32x32xi32>, tensor<32x32xi32>) -> tensor<32x32xi32>, sym_name = "complex_add_sub"}> ({
    ^bb0(%arg0: tensor<32x32xi32>, %arg1: tensor<32x32xi32>):
      %0 = "arith.constant"() <{value = dense<10> : tensor<32x32xi32>}> : () -> tensor<32x32xi32>
      %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<32x32xi32>, tensor<32x32xi32>) -> tensor<32x32xi32>
      %2 = "arith.subi"(%1, %0) <{overflowFlags = #arith_overflownone}> : (tensor<32x32xi32>, tensor<32x32xi32>) -> tensor<32x32xi32>
      %3 = "arith.cmpi"(%2, %0) <{predicate = 1 : i64}> : (tensor<32x32xi32>, tensor<32x32xi32>) -> tensor<32x32xi1>
      %4 = "scf.if"(%3) ({
        %5 = "tt.expand_dims"(%2) <{axis = 1 : i32}> : (tensor<32x32xi32>) -> tensor<32x32x1xi32>
        "scf.yield"(%5) : (tensor<32x32x1xi32>) -> ()
      }, {
        %6 = "tt.expand_dims"(%2) <{axis = 0 : i32}> : (tensor<32x32xi32>) -> tensor<32x1x32xi32>
        "scf.yield"(%6) : (tensor<32x1x32xi32>) -> ()
      }) : (tensor<32x32xi1>) -> tensor<32x32xi32>
      "tt.return"(%4) : (tensor<32x32xi32>) -> ()
  }) : () -> ()
}) : () -> ()