"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> (tensor<16xi32>, tensor<16xi32>), sym_name = "complex_reduce"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "tt.make_range"() <{end = 16 : i32, start = 0 : i32}> : () -> tensor<16xi32>
    %1 = "tt.expand_dims"(%arg0) <{axis = 1 : i32}> : (tensor<16xi32>) -> tensor<16x1xi32>
    %2 = "tt.expand_dims"(%arg1) <{axis = 1 : i32}> : (tensor<16xi32>) -> tensor<16x1xi32>
    %3 = "arith.addi"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %4 = "tt.reduce"(%3, %0) <{operation = "max"}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %5 = "scf.if"(%0) ({
      %6 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "scf.yield"(%6) : (tensor<16xi32>) -> ()
    }, {
      "scf.yield"(%arg0) : (tensor<16xi32>) -> ()
    }) : (tensor<16xi32>) -> tensor<16xi32>
    "tt.return"(%4, %5) : (tensor<16xi32>, tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()