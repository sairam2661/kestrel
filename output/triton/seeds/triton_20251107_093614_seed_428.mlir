"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arith"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %1 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %2 = "arith.xori"(%arg0, %arg1) : (i32, i32) -> i32
      %3 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %4 = "tt.make_range"() <{end = 10 : i32, start = 0 : i32}> : () -> tensor<10xi32>
      %5 = "tt.expand_dims"(%4) <{axis = 1 : i32}> : (tensor<10xi32>) -> tensor<10x1xi32>
      %6 = "tt.addptr"(%arg0, %arg1) : (i32, i32) -> !tt_ptr
      %7 = "scf.for"(%arg0, %arg1, %0) ({
        ^bb0(%iv: i32):
          %8 = "arith.addi"(%iv, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
          "scf.yield"() : () -> ()
      }) : (i32, i32, i32) -> ()
      %9 = "scf.if"(%2) ({
        ^bb0:
          %10 = "arith.addi"(%3, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
          "scf.yield"(%10) : (i32) -> i32
      }) {
        "tt.return" = 0 : i32
      } : (i32) -> i32
      "tt.return"(%9) : (i32) -> ()
  }) : (i32, i32) -> i32
}) : () -> ()