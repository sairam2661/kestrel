"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
    %1 = "arith.subi"(%0, %arg1) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
    %2 = "arith.muli"(%1, %arg0) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
    %3 = "arith.divsi"(%2, %arg0) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : (i32, i32) -> i32
  "func.func"() <{function_type = (i32) -> i32, sym_name = "nested_loops"}> ({
  ^bb0(%arg2: i32):
    %4 = "arith.constant"() <{value = 0 : index}> : () -> index
    %5 = "arith.constant"() <{value = 10 : index}> : () -> index
    %6 = "arith.constant"() <{value = 1 : index}> : () -> index
    "scf.for"(%4, %5, %6) ({
    ^bb0(%arg3: index):
      "scf.for"(%4, %5, %6) ({
      ^bb0(%arg4: index):
        %7 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflowFlags}> : (i32, index) -> i32
        %8 = "arith.addi"(%7, %arg4) <{overflowFlags = #arith_overflowFlags}> : (i32, index) -> i32
        "scf.yield"() : () -> ()
      }) : (index, index, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"(%arg2) : (i32) -> ()
  }) : (i32) -> i32
}) : () -> ()