"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arith"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 5 : i32}> : () -> i32
      %2 = "arith.addi"(%arg0, %1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %3 = "arith.subi"(%2, %0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %4 = "arith.muli"(%3, %arg1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %5 = "arith.divsi"(%4, %arg1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %6 = "arith.cmpi"(%5, %arg0, "slt") : (i32, i32, i32) -> i1
      %7 = "arith.xori"(%6, %arg1) : (i1, i32) -> i32
      %8 = "arith.select"(%7, %arg0, %arg1) : (i1, i32, i32) -> i32
      "tt.return"(%8) : (i32) -> ()
  }) : () -> ()
  "tt.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "nested_control_flow"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.constant"() <{value = 0 : index}> : () -> index
      %1 = "arith.constant"() <{value = 10 : index}> : () -> index
      %2 = "arith.constant"() <{value = 1 : index}> : () -> index
      %3 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %4:2 = "scf.for"(%0, %1, %2, %arg0, %3) ({
        ^bb0(%arg2: index, %arg3: i32, %arg4: i32):
          %5 = "arith.addi"(%arg3, %arg4) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
          %6 = "scf.if"(%5) ({
            %7 = "arith.muli"(%arg3, %arg4) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
            "scf.yield"(%arg3, %7) : (i32, i32) -> ()
          }, {
            "scf.yield"(%arg3, %arg4) : (i32, i32) -> ()
          }) {tt.latency = 2 : i32} : (i1) -> (i32, i32)
      }) : (index, index, index, i32, i32) -> (i32, i32)
      "tt.return"(%4#0, %4#1) : (i32, i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, ttg.target = "cuda:90", "ttg.threads-per-warp" = 32 : i32} : () -> ()