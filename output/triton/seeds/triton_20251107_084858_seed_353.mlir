"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %1 = "arith.muli"(%0, %arg0) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %2 = "arith.remsi"(%1, %arg1) : (i32, i32) -> i32
    %3 = "arith.xori"(%2, %arg0) : (i32, i32) -> i32
    %4 = "tt.make_range"() <{end = 100 : i32, start = 0 : i32}> : () -> tensor<100xi32>
    %5 = "scf.for"(%4, %3, %2) <{step = 1 : i32}> ({
      ^bb1(%iv: i32):
        %6 = "arith.addi"(%iv, %arg1) : (i32, i32) -> i32
        "scf.yield"() : () -> ()
    }) : (tensor<100xi32>, i32, i32) -> ()
    "tt.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()