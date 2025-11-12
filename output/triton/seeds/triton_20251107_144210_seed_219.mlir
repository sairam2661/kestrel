"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<16xi8>) -> i32, sym_name = "complex_interaction"}> ({
    ^bb0(%arg0: i32, %arg1: tensor<16xi8>):
      %0 = "arith.constant"() <{value = dense<1> : tensor<16xi8>}> : () -> tensor<16xi8>
      %1 = "arith.xori"(%arg1, %0) : (tensor<16xi8>, tensor<16xi8>) -> tensor<16xi8>
      %2 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %3 = "arith.subi"(%arg0, %2) : (i32, i32) -> i32
      %4 = "tt.make_range"() <{end = 16 : i32, start = 0 : i32}> : () -> tensor<16xi32>
      %5 = "arith.constant"() <{value = dense<2> : tensor<16xi32>}> : () -> tensor<16xi32>
      %6 = "arith.muli"(%4, %5) <{overflowFlags = #arith_overflowflags}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %7 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %8 = "scf.if"(%7) ({
        ^bb1:
          %9 = "arith.constant"() <{value = 1 : i32}> : () -> i32
          "scf.yield"(%9) : (i32) -> ()
      }) : (i32) -> i32
      %10 = "arith.remsi"(%3, %8) : (i32, i32) -> i32
      "tt.return"(%10) : (i32) -> ()
  }) : () -> ()
}) : () -> ()