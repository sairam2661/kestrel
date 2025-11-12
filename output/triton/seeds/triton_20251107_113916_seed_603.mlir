"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>, sym_name = "complex_reduce"}> ({
  ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>, %arg2: tensor<32xi32>):
    %0 = "arith.constant"() <{value = dense<0> : tensor<32xi32>}> : () -> tensor<32xi32>
    %1 = "tt.reduce"(%arg0) ({
      ^bb0(%acc: tensor<32xi32>, %val: tensor<32xi32>):
        %2 = "arith.addi"(%acc, %val) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
        "scf.yield"(%2) : (tensor<32xi32>) -> ()
    }) {tt.parallel = 1 : i32, tt.dim = 0 : i32} : (tensor<32xi32>) -> tensor<32xi32>
    %3 = "tt.reduce"(%arg1) ({
      ^bb0(%acc: tensor<32xi32>, %val: tensor<32xi32>):
        %4 = "arith.subi"(%acc, %val) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
        "scf.yield"(%4) : (tensor<32xi32>) -> ()
    }) {tt.parallel = 1 : i32, tt.dim = 0 : i32} : (tensor<32xi32>) -> tensor<32xi32>
    %5 = "arith.addi"(%1, %3) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %6 = "tt.reduce"(%arg2) ({
      ^bb0(%acc: tensor<32xi32>, %val: tensor<32xi32>):
        %7 = "arith.muli"(%acc, %val) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
        "scf.yield"(%7) : (tensor<32xi32>) -> ()
    }) {tt.parallel = 1 : i32, tt.dim = 0 : i32} : (tensor<32xi32>) -> tensor<32xi32>
    %8 = "arith.addi"(%5, %6) <{overflowFlags = #arith_overflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    "tt.return"(%8) : (tensor<32xi32>) -> ()
  }) : () -> ()
}) : () -> ()