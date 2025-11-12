"builtin.module"() ({
  "tt.func"() <{function_type = (index, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "complex_reduction"}> ({
  ^bb0(%arg0: index, %arg1: tensor<16xi32>, %arg2: tensor<16xi32>):
    %0 = "arith.addi"(%arg1, %arg2) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %1 = "tt.expand_dims"(%0, 1) : (tensor<16xi32>) -> tensor<16x1xi32>
    %2 = "tt.reduce"(%1) <{operation = #ttg_add, dimensions = [0]}> : (tensor<16x1xi32>) -> tensor<1xi32>
    %3 = "arith.subi"(%2, %arg0) : (tensor<1xi32>, index) -> tensor<1xi32>
    %4 = "tt.call"() <{callee = "helper_func"}> : () -> tensor<1xi32>
    %5 = "tt.addptr"(%4, %3) : (tensor<1xi32>, tensor<1xi32>) -> tensor<1xi32>
    "tt.return"(%5) : (tensor<1xi32>) -> ()
  }) : (index, tensor<16xi32>, tensor<16xi32>) -> tensor<1xi32>
}) : () -> ()


"tt.func"() ({"helper_func"() <{function_type = () -> tensor<1xi32>, sym_name = "helper_func"}> ({
  ^bb0:
    %0 = "arith.constant"() <{value = 42}> : () -> tensor<1xi32>
    "tt.return"(%0) : (tensor<1xi32>) -> ()
}) : () -> tensor<1xi32>}) : () -> ()