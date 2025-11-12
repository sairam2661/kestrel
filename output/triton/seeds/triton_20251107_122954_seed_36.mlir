"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, i32) -> i32, sym_name = "complex_reduce"}> ({
  ^bb0(%arg0: tensor<64xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "tt.reduce"(%arg0) <{operation = "add"}> ({
    ^bb1(%arg2: i32, %arg3: i32):
      %2 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%2) : (i32) -> i32
    }) : (tensor<64xi32>) -> i32
    %3 = "arith.select"(%arg1, %0, %1) : (i32, i32, i32) -> i32
    "tt.return"(%3) : (i32) -> i32
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32} : () -> ()