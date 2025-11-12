"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, index) -> tensor<2x2xi32>, sym_name = "transform_tensor"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: index):
    %0 = "tosa.const"() <{value = dense<0> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %1 = "scf.if"(%arg1) ({
      %2 = "arith.cmpi"(%arg1, %arg1) <{predicate = "eq"}> : (index, index) -> i1
      "scf.yield"(%2) : (i1) -> ()
    }, {
      %3 = "arith.cmpi"(%arg1, %arg1) <{predicate = "ne"}> : (index, index) -> i1
      "scf.yield"(%3) : (i1) -> ()
    }) : (index) -> (i1)
    %4 = "scf.if"(%1) ({
      %5 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflow} > : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
      "scf.yield"(%5) : (tensor<2x2xi32>) -> ()
    }, {
      %6 = "arith.subi"(%arg0, %0) <{overflowFlags = #arith_overflow} > : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
      "scf.yield"(%6) : (tensor<2x2xi32>) -> ()
    }) : (i1) -> (tensor<2x2xi32>)
    "func.return"(%4) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()