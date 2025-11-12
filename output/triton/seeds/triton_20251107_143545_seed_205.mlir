"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, tensor<128xi32>) -> (tensor<128xi32>, tensor<128xi32>), sym_name = "complex_reduce_and_if"}> ({
  ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
    %0 = "tt.reduce"(%arg0, %arg1) <{operation = "add"}>: (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %1 = "tt.reduce"(%arg0, %arg1) <{operation = "mul"}>: (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %2 = "arith.cmpi"(%0, %1, "lt") : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %3:2 = "scf.if"(%2) ({
      %4 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflownone}>: (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %5 = "arith.subi"(%0, %1) <{overflowFlags = #arith_overflownone}>: (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      "scf.yield"(%4, %5) : (tensor<128xi32>, tensor<128xi32>) -> ()
    }, {
      %6 = "arith.subi"(%1, %0) <{overflowFlags = #arith_overflownone}>: (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %7 = "arith.addi"(%1, %0) <{overflowFlags = #arith_overflownone}>: (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      "scf.yield"(%6, %7) : (tensor<128xi32>, tensor<128xi32>) -> ()
    }) : (tensor<128xi1>) -> (tensor<128xi32>, tensor<128xi32>)
    "tt.return"(%3#0, %3#1) : (tensor<128xi32>, tensor<128xi32>) -> ()
  }) : () -> ()
}) : () -> ()