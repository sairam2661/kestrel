"builtin.module"() ({
  "arc.define"() <{function_type = (i1, i1, i1) -> i3, sym_name = "checkEndianess"}> ({
  ^bb0(%arg39: i1, %arg40: i1, %arg41: i1):
    %25 = "arc.lut"(%arg39, %arg40, %arg41) ({
    ^bb0(%arg42: i1, %arg43: i1, %arg44: i1):
      %26 = "comb.concat"(%arg42, %arg43, %arg44) : (i1, i1, i1) -> i3
      "arc.output"(%26) : (i3) -> ()
    }) : (i1, i1, i1) -> i3
    "arc.output"(%25) : (i3) -> ()
  }) : () -> ()
  "arc.define"() <{function_type = (i1, i1, i1, i1, i1) -> i1, sym_name = "integerLut"}> ({
  ^bb0(%arg29: i1, %arg30: i1, %arg31: i1, %arg32: i1, %arg33: i1):
    %19 = "arc.lut"(%arg29, %arg30, %arg33, %arg31, %arg32) ({
    ^bb0(%arg34: i1, %arg35: i1, %arg36: i1, %arg37: i1, %arg38: i1):
      %20 = "comb.and"(%arg37, %arg38) : (i1, i1) -> i1
      %21 = "comb.icmp"(%arg36, %20) <{predicate = 1 : i64}> : (i1, i1) -> i1
      %22 = "comb.mux"(%21, %arg36, %arg38) : (i1, i1, i1) -> i1
      %23 = "comb.xor"(%arg34, %arg35) : (i1, i1) -> i1
      %24 = "comb.and"(%23, %22) : (i1, i1) -> i1
      "arc.output"(%24) : (i1) -> ()
    }) : (i1, i1, i1, i1, i1) -> i1
    "arc.output"(%19) : (i1) -> ()
  }) : () -> ()
  "arc.define"() <{function_type = (i1, i1, i1, i1, i1, i1, i1, i1, i1) -> i1, sym_name = "twoLutInSequence"}> ({
  ^bb0(%arg10: i1, %arg11: i1, %arg12: i1, %arg13: i1, %arg14: i1, %arg15: i1, %arg16: i1, %arg17: i1, %arg18: i1):
    %8 = "arc.lut"(%arg13, %arg14, %arg15, %arg16, %arg17) ({
    ^bb0(%arg24: i1, %arg25: i1, %arg26: i1, %arg27: i1, %arg28: i1):
      %13 = "comb.xor"(%arg26, %arg25) : (i1, i1) -> i1
      %14 = "comb.and"(%arg27, %13) : (i1, i1) -> i1
      %15 = "comb.xor"(%14, %arg25) : (i1, i1) -> i1
      %16 = "comb.xor"(%arg24, %arg25) : (i1, i1) -> i1
      %17 = "comb.or"(%16, %15) : (i1, i1) -> i1
      %18 = "comb.and"(%17, %arg28) : (i1, i1) -> i1
      "arc.output"(%18) : (i1) -> ()
    }) : (i1, i1, i1, i1, i1) -> i1
    %9 = "arc.lut"(%8, %arg10, %arg11, %arg12, %arg18) ({
    ^bb0(%arg19: i1, %arg20: i1, %arg21: i1, %arg22: i1, %arg23: i1):
      %10 = "comb.icmp"(%arg22, %arg20) <{predicate = 1 : i64}> : (i1, i1) -> i1
      %11 = "comb.mux"(%arg23, %arg22, %10) : (i1, i1, i1) -> i1
      %12 = "comb.mux"(%arg21, %11, %arg19) : (i1, i1, i1) -> i1
      "arc.output"(%12) : (i1) -> ()
    }) : (i1, i1, i1, i1, i1) -> i1
    "arc.output"(%9) : (i1) -> ()
  }) : () -> ()
  "arc.define"() <{function_type = (i1, i1, i2, i2, i2) -> i2, sym_name = "arrayLut"}> ({
  ^bb0(%arg0: i1, %arg1: i1, %arg2: i2, %arg3: i2, %arg4: i2):
    %0 = "arc.lut"(%arg0, %arg1, %arg4, %arg2, %arg3) ({
    ^bb0(%arg5: i1, %arg6: i1, %arg7: i2, %arg8: i2, %arg9: i2):
      %1 = "hw.constant"() <{value = true}> : () -> i1
      %2 = "comb.and"(%arg8, %arg9) : (i2, i2) -> i2
      %3 = "comb.icmp"(%arg7, %2) <{predicate = 1 : i64}> : (i2, i2) -> i1
      %4 = "comb.mux"(%3, %arg7, %arg9) : (i1, i2, i2) -> i2
      %5 = "comb.xor"(%arg5, %arg6) : (i1, i1) -> i1
      %6 = "comb.concat"(%1, %5) : (i1, i1) -> i2
      %7 = "comb.and"(%6, %4) : (i2, i2) -> i2
      "arc.output"(%7) : (i2) -> ()
    }) : (i1, i1, i2, i2, i2) -> i2
    "arc.output"(%0) : (i2) -> ()
  }) : () -> ()
}) : () -> ()

