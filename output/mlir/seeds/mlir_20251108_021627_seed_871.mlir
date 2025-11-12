"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64, memref<1024xi32>) -> i32, sym_name = "complex_nested_loops_with_memref", sym_visibility = "private"}> ({
  ^bb0(%arg0: i32, %arg1: i64, %arg2: memref<1024xi32>):
    %0 = "arith.constant"() <{value = 512 : i64}> : () -> i64
    %1 = "arith.constant"() <{value = 0 : i64}> : () -> i64
    %2 = "arith.constant"() <{value = 1 : i64}> : () -> i64
    "scf.for"(%1, %0, %2) ({
    ^bb0(%arg3: i64):
      "scf.for"(%1, %arg3, %2) ({
      ^bb0(%arg4: i64):
        %3 = "arith.addi"(%arg3, %arg4) <{overflowFlags = #arith_overflow_mode}> : (i64, i64) -> i64
        %4 = "memref.load"(%arg2, %3) : (memref<1024xi32>, i64) -> i32
        "scf.yield"() : () -> ()
      }) : (i64, i64, i64) -> ()
      "scf.yield"() : () -> ()
    }) : (i64, i64, i64) -> ()
    %5 = "arith.constant"() <{value = 1023 : i64}> : () -> i64
    %6 = "memref.load"(%arg2, %5) : (memref<1024xi32>, i64) -> i32
    "func.return"(%6) : (i32) -> i32
  }) : (i32, i64, memref<1024xi32>) -> i32
  "func.func"() <{function_type = (i32) -> (), sym_name = "print_value"}> ({
  ^bb0(%arg0: i32):
    "arith.print"(%arg0) : (i32) -> ()
    "func.return"() : () -> ()
  }) : (i32) -> ()
}) : () -> ()