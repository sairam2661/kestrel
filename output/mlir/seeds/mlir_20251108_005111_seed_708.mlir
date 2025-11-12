"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> index, sym_name = "complex_calc"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "arith.addi"(%arg0, %arg1) : (index, index) -> index
    %1 = "arith.cmpi"(%0, %arg0, "sgt") : (index, index) -> i1
    %2 = "arith.cmpi"(%0, %arg1, "slt") : (index, index) -> i1
    %3 = "arith.andi"(%1, %2) : (i1, i1) -> i1
    %4 = "arith.select"(%3, %0, %arg1) : (i1, index, index) -> index
    "func.return"(%4) : (index) -> ()
  }) : () -> ()
}) : () -> ()