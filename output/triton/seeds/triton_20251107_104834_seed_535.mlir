"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> (tensor<16xi32>, tensor<16xi32>), sym_name = "fuzz_test"}> ({
    ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
      %0 = "tt.make_range"() <{end = 16 : i32, start = 0 : i32}> : () -> tensor<16xi32>
      %1 = "tt.expand_dims"(%0) <{axis = 1 : i32}> : (tensor<16xi32>) -> tensor<16x1xi32>
      %2 = "tt.reduce"() <{operation = "#tt.reduce.sum", reduction_dimension = 0 : i32}> ({
        ^bb1(%arg2: tensor<16x1xi32>):
          %3 = "arith.addi"(%arg2, %arg0) <{overflowFlags = #arith_overflow_NONE}> : (tensor<16x1xi32>, tensor<16xi32>) -> tensor<16x1xi32>
          "scf.yield"(%3) : (tensor<16x1xi32>) -> ()
      }) : (tensor<16x1xi32>) -> tensor<1xi32>
      %4 = "tt.reduce"() <{operation = "#tt.reduce.prod", reduction_dimension = 0 : i32}> ({
        ^bb2(%arg3: tensor<16x1xi32>):
          %5 = "arith.muli"(%arg3, %arg1) <{overflowFlags = #arith_overflow_NONE}> : (tensor<16x1xi32>, tensor<16xi32>) -> tensor<16x1xi32>
          "scf.yield"(%5) : (tensor<16x1xi32>) -> ()
      }) : (tensor<16x1xi32>) -> tensor<1xi32>
      %6 = "arith.subi"(%2, %4) <{overflowFlags = #arith_overflow_NONE}> : (tensor<1xi32>, tensor<1xi32>) -> tensor<1xi32>
      %7 = "tt.expand_dims"(%6) <{axis = 0 : i32}> : (tensor<1xi32>) -> tensor<16xi32>
      "tt.return"(%7, %arg0) : (tensor<16xi32>, tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()