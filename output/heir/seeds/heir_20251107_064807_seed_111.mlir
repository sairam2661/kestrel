"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, i32) -> i32, sym_name = "nested_loops"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    "scf.for"(%arg0, %arg1, %arg2, %0) ({
    ^bb1(%iv: i32, %arg3: i32, %arg4: i32, %arg5: i32):
      "scf.for"(%iv, %arg3, %arg4, %arg5) ({
      ^bb2(%iv2: i32, %arg32: i32, %arg42: i32, %arg52: i32):
        %1 = "arith.addi"(%iv, %iv2) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
        %2 = "arith.cmpi"(%iv, %iv2, "slt") : (i32, i32) -> i1
        %3 = "arith.select"(%2, %iv, %iv2) : (i1, i32, i32) -> i32
        "scf.yield"(%3) : (i32) -> ()
      }) : (i32, i32, i32, i32) -> (i32)
      "scf.yield"() : () -> ()
    }) : (i32, i32, i32, i32) -> (i32)
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()