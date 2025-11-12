"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32, i32) -> (i32, i32), sym_name = "nested_loops_and_ifs", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 10 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3:2 = "scf.for"(%0, %1, %2, %arg0, %arg1) ({
    ^bb1(%arg3: index, %arg4: i32, %arg5: i32):
      %6 = "arith.cmpi"(%arg4, %arg5) <{predicate = 1 : i64}> : (i32, i32) -> i1
      %7:2 = "scf.if"(%6) ({
        %8 = "arith.addi"(%arg4, %arg5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%arg3, %8) : (index, i32) -> ()
      }, {
        %9 = "arith.subi"(%arg4, %arg5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%arg3, %9) : (index, i32) -> ()
      }) : (i1) -> (index, i32)
      "scf.yield"(%7#0, %7#1) : (index, i32) -> ()
    }) : (index, index, index, i32, i32) -> (index, i32)
    "tt.return"(%3#0, %3#1) : (index, i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()