"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>, sym_name = "xor_and_reduce"}> ({
  ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>):
    %0 = "arith.xori"(%arg0, %arg1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %1 = "tt.reduce"(%0) <{reduction = #ttg_reduction_type}>( {
    ^bb0(%arg2: tensor<32xi32>, %arg3: tensor<32xi32>):
      %2 = "arith.addi"(%arg2, %arg3) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "scf.yield"(%2) : (tensor<32xi32>) -> ()
    }) : (tensor<32xi32>) -> tensor<32xi32>
    "tt.return"(%1) : (tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()