"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_logic"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.cmpf"("eq", %0, %arg0) : (i32, i32) -> i1
    %2 = "arith.cmpf"("eq", %0, %arg1) : (i32, i32) -> i1
    %3 = "arith.andi"(%1, %2) : (i1, i1) -> i1
    %4 = "arith.select"(%3, %0, %arg1) : (i1, i32, i32) -> i32
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> i32, sym_name = "increment_if_even"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.cmpf"("eq", %arg0, 0) : (i32, i32) -> i1
    "scf.if"(%0) ({
    ^bb1:
      %1 = "arith.addi"(%arg0, 1) : (i32, i32) -> i32
      "scf.yield"(%1) : (i32) -> ()
    }) {
    } : (i32) -> ()
    "func.return"(%arg0) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> i32, sym_name = "decrement_if_odd"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.cmpf"("ne", %arg0, 0) : (i32, i32) -> i1
    "scf.if"(%0) ({
    ^bb1:
      %1 = "arith.subi"(%arg0, 1) : (i32, i32) -> i32
      "scf.yield"(%1) : (i32) -> ()
    }) {
    } : (i32) -> ()
    "func.return"(%arg0) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "mixed_operations"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "arith.subi"(%arg0, %arg1) : (i32, i32) -> i32
    %2 = "arith.muli"(%0, %1) : (i32, i32) -> i32
    "func.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()