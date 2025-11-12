"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "complex_loop"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "scf.for"(%0) <{lowerBound = 0 : index, upperBound = 10 : index, step = 1 : index}> ({
    ^bb0(%iv: index):
      %2 = "arith.extui"(%iv) <{overflowFlags = #arith_overflow_none}> : (index) -> i32
      %3 = "arith.muli"(%2, %arg0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %4 = "arith.addi"(%3, %arg0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %5 = "scf.if"(%4) <{resultOperands = []}> ({
      ^bb0:
        "scf.yield"() : () -> ()
      }) {
      } : () -> ()
      "scf.yield"(%4) : (i32) -> ()
    }) : (i32) -> i32
    "func.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()