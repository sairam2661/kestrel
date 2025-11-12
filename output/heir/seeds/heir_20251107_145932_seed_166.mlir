"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, i32) -> i32, sym_name = "complex_arith"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflow_mode}  > : (i32, i32) -> i32
    %1 = "arith.addi"(%0, %arg2) <{overflowFlags = #arith_overflow_mode}  > : (i32, i32) -> i32
    %2 = "arith.subi"(%1, %arg0) <{overflowFlags = #arith_overflow_mode}  > : (i32, i32) -> i32
    %3 = "arith.select"(%arg0, %arg1, %arg2) <{predicate = "slt"}> : (i32, i32, i32) -> i32
    %4 = "scf.for"() <{lowerBound = 0 : index, upperBound = 5 : index, step = 1 : index}> ({
    ^bb1(%iv: index):
      %5 = "arith.addi"(%iv, %iv) <{overflowFlags = #arith_overflow_mode}  > : (index, index) -> index
      "scf.yield"(%5) : (index) -> ()
    }) : (index) -> index
    "func.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()