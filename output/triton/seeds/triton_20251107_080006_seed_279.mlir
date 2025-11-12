"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_nested_loops", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 10 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "scf.for"(%0, %1, %2, %arg0) ({
    ^bb0(%arg2: index, %arg3: i32):
      %4 = "arith.constant"() <{value = 0 : index}> : () -> index
      %5 = "arith.constant"() <{value = 5 : index}> : () -> index
      %6 = "arith.constant"() <{value = 1 : index}> : () -> index
      %7 = "scf.for"(%4, %5, %6, %arg3) ({
      ^bb0(%arg4: index, %arg5: i32):
        %8 = "arith.addi"(%arg5, %arg3) <{overflowFlags = #arith_overflow_undefined}> : (i32, i32) -> i32
        "scf.yield"(%8) : (i32) -> ()
      }) : (index, index, index, i32) -> i32
      "scf.yield"(%7) : (i32) -> ()
    }) : (index, index, index, i32) -> i32
    "tt.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()