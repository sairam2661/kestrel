"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "complex_flow", sym_visibility = "public"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %3 = "scf.for"(%0, %1, %2, %arg0) ({
        ^bb0(%arg2: i32, %arg3: i32):
          %4 = "arith.addi"(%arg3, %arg2) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
          "scf.if"(%arg2) ({
            %5 = "arith.cmpi"(%arg2, %0, "sgt") : (i32, i32) -> i1
            %6 = "arith.select"(%5, %arg3, %4) : (i1, i32, i32) -> i32
            "scf.yield"(%arg3, %6) : (i32, i32) -> ()
          }, {
            "scf.yield"(%arg3, %4) : (i32, i32) -> ()
          }) {tt.latency = 1 : i32} : (i1) -> (i32, i32)
      }) {tt.num_stages = 2 : i32} : (i32, i32, i32) -> (i32, i32)
      "tt.return"(%3#0, %3#1) : (i32, i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()



"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> i32, sym_name = "extreme_params", sym_visibility = "public"}> ({
    ^bb0(%arg0: i32):
      %0 = "arith.constant"() <{value = -1 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %3 = "arith.muli"(%arg0, %1) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
      %4 = "arith.divsi"(%3, %2) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
      "tt.return"(%4) : (i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()



"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "mixed_types", sym_visibility = "public"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %2 = "scf.for"(%0, %1, %1, %arg0) ({
        ^bb0(%arg2: i32, %arg3: i32):
          %4 = "arith.addi"(%arg3, %arg2) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
          "scf.yield"(%arg3, %4) : (i32, i32) -> ()
      }) {tt.num_stages = 1 : i32} : (i32, i32, i32) -> (i32, i32)
      "tt.return"(%2#0, %2#1) : (i32, i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()



"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "nested_loops", sym_visibility = "public"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %3 = "scf.for"(%0, %1, %2, %arg0) ({
        ^bb0(%arg2: i32, %arg3: i32):
          %4 = "arith.addi"(%arg3, %arg2) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
          %5 = "scf.for"(%0, %1, %2, %arg3) ({
            ^bb0(%arg4: i32, %arg5: i32):
              %6 = "arith.addi"(%arg5, %arg4) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
              "scf.yield"(%arg5, %6) : (i32, i32) -> ()
          }) {tt.num_stages = 1 : i32} : (i32, i32, i32) -> (i32, i32)
          "scf.yield"(%arg3, %5#1) : (i32, i32) -> ()
      }) {tt.num_stages = 1 : i32} : (i32, i32, i32) -> (i32, i32)
      "tt.return"(%3#0, %3#1) : (i32, i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()