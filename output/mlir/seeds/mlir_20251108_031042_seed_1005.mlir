"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> index, sym_name = "complexIndexManipulation"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0:2 = "arith.addi"(%arg0, %arg1) : (index, index) -> (index, index)
    %1:2 = "arith.muli"(%0#0, %0#1) : (index, index) -> (index, index)
    %2:2 = "arith.addi"(%1#0, %1#1) : (index, index) -> (index, index)
    %3:2 = "arith.divui"(%2#0, %2#1) : (index, index) -> (index, index)
    %4:2 = "arith.addi"(%3#0, %3#1) : (index, index) -> (index, index)
    %5:2 = "arith.muli"(%4#0, %4#1) : (index, index) -> (index, index)
    %6:2 = "arith.addi"(%5#0, %5#1) : (index, index) -> (index, index)
    %7:2 = "arith.divui"(%6#0, %6#1) : (index, index) -> (index, index)
    %8 = "arith.addi"(%7#0, %7#1) : (index, index) -> index
    "func.return"(%8) : (index) -> ()
  }) : () -> ()
}) : () -> ()