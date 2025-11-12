"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.constancy = 1 : i32, tt.contiguity = 8 : i32, tt.divisibility = 4 : i32}, {tt.constancy = 1 : i32, tt.contiguity = 2 : i32, tt.divisibility = 8 : i32}], function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "complex_reduction"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %0 = "tt.make_range"() <{end = 8 : i32, start = 0 : i32}> : () -> tensor<8xi32>
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %2 = "tt.reduce"(%1) <{operation = "add", region = {}}> ({
      ^bb0(%arg2: tensor<8xi32>):
        %3 = "arith.constant"() <{value = 0 : i32}> : () -> i32
        %4 = "arith.addi"(%arg2, %3) <{overflowFlags = #arith_overflownone}> : (tensor<8xi32>, i32) -> tensor<8xi32>
        "scf.yield"(%4) : (tensor<8xi32>) -> ()
    }) : (tensor<8xi32>) -> tensor<8xi32>
    "tt.return"(%2) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()