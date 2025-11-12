"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, !ttgPtr) -> tensor<16xi32>, sym_name = "mixed_arith_and_control"}> ({
    ^bb0(%arg0: tensor<16xi32>, %arg1: !ttgPtr):
      %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %2 = "arith.constant"() <{value = 3 : i32}> : () -> i32
      %3 = "tt.addptr"(%arg1, %0) : (!ttgPtr, i32) -> !ttgPtr
      %4 = "tt.make_range"() <{end = 16 : i32, start = 0 : i32}> : () -> tensor<16xi32>
      %5 = "scf.for"(%4) ({
        ^bb0(%arg2: tensor<16xi32>):
          %6 = "arith.addi"(%arg2, %1) <{overflowFlags = #arith_overflow_flag}> : (tensor<16xi32>, i32) -> tensor<16xi32>
          %7 = "arith.remsi"(%6, %2) <{overflowFlags = #arith_overflow_flag}> : (tensor<16xi32>, i32) -> tensor<16xi32>
          %8 = "arith.xori"(%7, %arg2) <{overflowFlags = #arith_overflow_flag}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
          "scf.yield"(%8) : (tensor<16xi32>) -> ()
      }) : (tensor<16xi32>) -> tensor<16xi32>
      "tt.return"(%5) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()