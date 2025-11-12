"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "complex_calculation"}> ({
  ^bb0(%arg0: i32):
    %1 = "arith.constant"() <{value = 10: i32}> : () -> i32
    %2 = "arith.constant"() <{value = 5: i32}> : () -> i32
    %3 = "arith.constant"() <{value = 2: i32}> : () -> i32
    %4 = "arith.muli"(%arg0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "arith.addi"(%4, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %6 = "arith.muli"(%5, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %7 = "scf.if"(%6) ({
      ^bb0(%ifcond: i32):
        %8 = "arith.cmpi"(%ifcond, %1) <{predicate = "sgt"}> : (i32, i32) -> i1
        scf.yield %8 : i1
    }) {
    } : (i32) -> ()
    "func.return"(%6) : (i32) -> ()
  }) : () -> ()
}) : () -> ()