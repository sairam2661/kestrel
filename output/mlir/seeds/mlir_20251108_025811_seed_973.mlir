"builtin.module"() ({
  "func.func"() <{function_type = (i32, vector<4xi1>) -> i32, sym_name = "complex_logic"}> ({
  ^bb0(%arg0: i32, %arg1: vector<4xi1>):
    %0 = "arith.cmpi"(%arg0, %arg0) {"predicate" = "eq"} : (i32, i32) -> i1
    %1 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %3 = "arith.addi"(%arg0, %1) : (i32, i32) -> i32
    %4 = "arith.addi"(%arg0, %2) : (i32, i32) -> i32
    "scf.if"(%0) ({
    ^bb1:
      %5 = "scf.yield"(%4) : (i32) -> ()
    }, {
    ^bb2:
      %6 = "scf.yield"(%3) : (i32) -> ()
    }) : (i1) -> i32
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()