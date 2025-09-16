"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> index, sym_name = "fold_divui_of_muli_0"}> ({
  ^bb0(%arg10: index, %arg11: index):
    %10 = "arith.muli"(%arg10, %arg11) <{overflowFlags = #arith.overflow<nuw>}> : (index, index) -> index
    %11 = "arith.divui"(%10, %arg10) : (index, index) -> index
    "func.return"(%11) : (index) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (index, index) -> index, sym_name = "fold_divui_of_muli_1"}> ({
  ^bb0(%arg8: index, %arg9: index):
    %8 = "arith.muli"(%arg8, %arg9) <{overflowFlags = #arith.overflow<nuw>}> : (index, index) -> index
    %9 = "arith.divui"(%8, %arg9) : (index, index) -> index
    "func.return"(%9) : (index) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (index, index) -> index, sym_name = "fold_divsi_of_muli_0"}> ({
  ^bb0(%arg6: index, %arg7: index):
    %6 = "arith.muli"(%arg6, %arg7) <{overflowFlags = #arith.overflow<nsw>}> : (index, index) -> index
    %7 = "arith.divsi"(%6, %arg6) : (index, index) -> index
    "func.return"(%7) : (index) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (index, index) -> index, sym_name = "fold_divsi_of_muli_1"}> ({
  ^bb0(%arg4: index, %arg5: index):
    %4 = "arith.muli"(%arg4, %arg5) <{overflowFlags = #arith.overflow<nsw>}> : (index, index) -> index
    %5 = "arith.divsi"(%4, %arg5) : (index, index) -> index
    "func.return"(%5) : (index) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (index, index) -> index, sym_name = "no_fold_divui_of_muli"}> ({
  ^bb0(%arg2: index, %arg3: index):
    %2 = "arith.muli"(%arg2, %arg3) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %3 = "arith.divui"(%2, %arg2) : (index, index) -> index
    "func.return"(%3) : (index) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (index, index) -> index, sym_name = "no_fold_divsi_of_muli"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
    %1 = "arith.divsi"(%0, %arg0) : (index, index) -> index
    "func.return"(%1) : (index) -> ()
  }) : () -> ()
}) : () -> ()

