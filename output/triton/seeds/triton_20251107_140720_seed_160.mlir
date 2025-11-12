"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32, i32) -> i32, sym_name = "complex_reduce", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 10 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %4:2 = "scf.for"(%0, %1, %2, %arg0, %3) ({
    ^bb0(%arg3: index, %arg4: i32, %arg5: i32):
      %6 = "arith.addi"(%arg5, %arg4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%arg3, %6) : (index, i32) -> ()
    }) : (index, index, index, i32, i32) -> (index, i32)
    %7:2 = "scf.for"(%4#0, %1, %2, %4#1) ({
    ^bb0(%arg6: index, %arg7: i32):
      %8 = "arith.muli"(%arg7, %arg2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%arg6, %8) : (index, i32) -> ()
    }) : (index, index, index, i32) -> (index, i32)
    "tt.return"(%7#1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()