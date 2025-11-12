"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> i32, sym_name = "complex_op_chain"}> ({
    ^bb0(%arg0: i32):
      %1 = "tt.make_range"(%arg0, %arg0) <{increment = 1 : i32}> : (i32, i32) -> tensor<2x2xi32>
      %2 = "scf.for"() <{lowerBound = 0 : i32, upperBound = 4 : i32, step = 1 : i32}> ({
        ^bb1(%iv: i32):
          %3 = "arith.muli"(%iv, %iv) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
          %4 = "arith.remsi"(%3, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
          "scf.yield"() : () -> ()
      }) : () -> ()
      %5 = "tt.reduce"() <{operation = #tt_add}>({
        ^bb2(%acc: i32, %val: i32):
          %6 = "arith.xori"(%acc, %val) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
          "scf.yield"(%6) : (i32) -> i32
      }) : (i32, tensor<2x2xi32>) -> i32
      "tt.return"(%5) : (i32) -> ()
  }) : (i32) -> i32
}) : () -> ()