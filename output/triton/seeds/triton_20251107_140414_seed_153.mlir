"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "mixed_flow"}> ({
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflow_mode} > : (i32, i32) -> i32
    %3 = "arith.cmpi"(%2, %0) <{predicate = "slt"}> : (i32, i32) -> i1
    "scf.if"(%3) ({
      %4 = "arith.constant"() <{value = 20 : i32}> : () -> i32
      %5 = "arith.addi"(%2, %4) <{overflowFlags = #arith_overflow_mode} > : (i32, i32) -> i32
      "scf.yield"(%5) : (i32) -> ()
    }) : (i1) -> (i32)
    %6 = "tt.make_range"() <{end = 32 : i32, start = 0 : i32}> : () -> tensor<32xi32>
    "scf.for"(%6, %7) <{lowerBound = 0 : i32, upperBound = 32 : i32, step = 1 : i32}> ({
      %8 = "arith.addi"(%7, %0) <{overflowFlags = #arith_overflow_mode} > : (i32, i32) -> i32
      "scf.yield"(%8) : (i32) -> ()
    }) : (tensor<32xi32>, i32) -> (i32)
    "tt.return"() : () -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 16 : i32} : () -> ()