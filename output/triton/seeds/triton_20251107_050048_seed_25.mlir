"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>, sym_name = "vectorized_add_subtract"}> ({
  ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>):
    %0 = "arith.subi"(%arg0, %arg1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %1 = "arith.addi"(%arg0, %arg1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %2 = "tt.expand_dims"(%0, %c1_i32) : (tensor<32xi32>, i32) -> tensor<1x32xi32>
    %3 = "tt.expand_dims"(%1, %c1_i32) : (tensor<32xi32>, i32) -> tensor<1x32xi32>
    %4 = "scf.if"(%arg1) ({
      %5 = "arith.addi"(%2, %3) : (tensor<1x32xi32>, tensor<1x32xi32>) -> tensor<1x32xi32>
      "scf.yield"(%5) : (tensor<1x32xi32>) -> ()
    }, {
      %6 = "arith.subi"(%2, %3) : (tensor<1x32xi32>, tensor<1x32xi32>) -> tensor<1x32xi32>
      "scf.yield"(%6) : (tensor<1x32xi32>) -> ()
    }) : (tensor<32xi32>) -> tensor<1x32xi32>
    "tt.return"(%4) : (tensor<1x32xi32>) -> ()
  }) : () -> ()
}) : () -> ()