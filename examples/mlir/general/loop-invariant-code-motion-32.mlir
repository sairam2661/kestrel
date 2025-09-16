"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, index, index, index) -> (), sym_name = "no_speculate_divui"}> ({
  ^bb0(%arg114: i32, %arg115: i32, %arg116: index, %arg117: index, %arg118: index):
    "scf.for"(%arg116, %arg117, %arg118) ({
    ^bb0(%arg119: index):
      %47 = "arith.divui"(%arg114, %arg115) : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32, index, index, index) -> (), sym_name = "no_speculate_divsi"}> ({
  ^bb0(%arg108: i32, %arg109: i32, %arg110: index, %arg111: index, %arg112: index):
    "scf.for"(%arg110, %arg111, %arg112) ({
    ^bb0(%arg113: index):
      %46 = "arith.divsi"(%arg108, %arg109) : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32, index, index, index) -> (), sym_name = "no_speculate_ceildivui"}> ({
  ^bb0(%arg102: i32, %arg103: i32, %arg104: index, %arg105: index, %arg106: index):
    "scf.for"(%arg104, %arg105, %arg106) ({
    ^bb0(%arg107: index):
      %45 = "arith.ceildivui"(%arg102, %arg103) : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32, index, index, index) -> (), sym_name = "no_speculate_ceildivsi"}> ({
  ^bb0(%arg96: i32, %arg97: i32, %arg98: index, %arg99: index, %arg100: index):
    "scf.for"(%arg98, %arg99, %arg100) ({
    ^bb0(%arg101: index):
      %44 = "arith.ceildivsi"(%arg96, %arg97) : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, index, index, index) -> (), sym_name = "no_speculate_divui_const"}> ({
  ^bb0(%arg91: i32, %arg92: index, %arg93: index, %arg94: index):
    %42 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    "scf.for"(%arg92, %arg93, %arg94) ({
    ^bb0(%arg95: index):
      %43 = "arith.divui"(%arg91, %42) : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, index, index, index) -> (), sym_name = "speculate_divui_const"}> ({
  ^bb0(%arg86: i32, %arg87: index, %arg88: index, %arg89: index):
    %40 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    "scf.for"(%arg87, %arg88, %arg89) ({
    ^bb0(%arg90: index):
      %41 = "arith.divui"(%arg86, %40) : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, index, index, index) -> (), sym_name = "no_speculate_ceildivui_const"}> ({
  ^bb0(%arg81: i32, %arg82: index, %arg83: index, %arg84: index):
    %38 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    "scf.for"(%arg82, %arg83, %arg84) ({
    ^bb0(%arg85: index):
      %39 = "arith.ceildivui"(%arg81, %38) : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, index, index, index) -> (), sym_name = "speculate_ceildivui_const"}> ({
  ^bb0(%arg76: i32, %arg77: index, %arg78: index, %arg79: index):
    %36 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    "scf.for"(%arg77, %arg78, %arg79) ({
    ^bb0(%arg80: index):
      %37 = "arith.ceildivui"(%arg76, %36) : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32, index, index, index) -> (), sym_name = "no_speculate_divsi_const0"}> ({
  ^bb0(%arg70: i32, %arg71: i32, %arg72: index, %arg73: index, %arg74: index):
    %34 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    "scf.for"(%arg72, %arg73, %arg74) ({
    ^bb0(%arg75: index):
      %35 = "arith.divsi"(%arg70, %34) : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32, index, index, index) -> (), sym_name = "no_speculate_divsi_const_minus1"}> ({
  ^bb0(%arg64: i32, %arg65: i32, %arg66: index, %arg67: index, %arg68: index):
    %32 = "arith.constant"() <{value = -1 : i32}> : () -> i32
    "scf.for"(%arg66, %arg67, %arg68) ({
    ^bb0(%arg69: index):
      %33 = "arith.divsi"(%arg64, %32) : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32, index, index, index) -> (), sym_name = "speculate_divsi_const"}> ({
  ^bb0(%arg58: i32, %arg59: i32, %arg60: index, %arg61: index, %arg62: index):
    %30 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    "scf.for"(%arg60, %arg61, %arg62) ({
    ^bb0(%arg63: index):
      %31 = "arith.divsi"(%arg58, %30) : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32, index, index, index) -> (), sym_name = "no_speculate_ceildivsi_const0"}> ({
  ^bb0(%arg52: i32, %arg53: i32, %arg54: index, %arg55: index, %arg56: index):
    %28 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    "scf.for"(%arg54, %arg55, %arg56) ({
    ^bb0(%arg57: index):
      %29 = "arith.ceildivsi"(%arg52, %28) : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32, index, index, index) -> (), sym_name = "no_speculate_ceildivsi_const_minus1"}> ({
  ^bb0(%arg46: i32, %arg47: i32, %arg48: index, %arg49: index, %arg50: index):
    %26 = "arith.constant"() <{value = -1 : i32}> : () -> i32
    "scf.for"(%arg48, %arg49, %arg50) ({
    ^bb0(%arg51: index):
      %27 = "arith.ceildivsi"(%arg46, %26) : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32, index, index, index) -> (), sym_name = "speculate_ceildivsi_const"}> ({
  ^bb0(%arg40: i32, %arg41: i32, %arg42: index, %arg43: index, %arg44: index):
    %24 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    "scf.for"(%arg42, %arg43, %arg44) ({
    ^bb0(%arg45: index):
      %25 = "arith.ceildivsi"(%arg40, %24) : (i32, i32) -> i32
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i8, index, index, index) -> (), sym_name = "no_speculate_divui_range"}> ({
  ^bb0(%arg35: i8, %arg36: index, %arg37: index, %arg38: index):
    %22 = "test.with_bounds"() <{smax = 127 : i8, smin = -128 : i8, umax = -1 : i8, umin = 0 : i8}> : () -> i8
    "scf.for"(%arg36, %arg37, %arg38) ({
    ^bb0(%arg39: index):
      %23 = "arith.divui"(%arg35, %22) : (i8, i8) -> i8
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i8, index, index, index) -> (), sym_name = "no_speculate_divsi_range"}> ({
  ^bb0(%arg30: i8, %arg31: index, %arg32: index, %arg33: index):
    %18 = "test.with_bounds"() <{smax = -1 : i8, smin = -128 : i8, umax = -1 : i8, umin = 0 : i8}> : () -> i8
    %19 = "test.with_bounds"() <{smax = 127 : i8, smin = 0 : i8, umax = -1 : i8, umin = 0 : i8}> : () -> i8
    "scf.for"(%arg31, %arg32, %arg33) ({
    ^bb0(%arg34: index):
      %20 = "arith.divsi"(%arg30, %18) : (i8, i8) -> i8
      %21 = "arith.divsi"(%arg30, %19) : (i8, i8) -> i8
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i8, index, index, index) -> (), sym_name = "no_speculate_ceildivui_range"}> ({
  ^bb0(%arg25: i8, %arg26: index, %arg27: index, %arg28: index):
    %16 = "test.with_bounds"() <{smax = 127 : i8, smin = -128 : i8, umax = -1 : i8, umin = 0 : i8}> : () -> i8
    "scf.for"(%arg26, %arg27, %arg28) ({
    ^bb0(%arg29: index):
      %17 = "arith.ceildivui"(%arg25, %16) : (i8, i8) -> i8
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i8, index, index, index) -> (), sym_name = "no_speculate_ceildivsi_range"}> ({
  ^bb0(%arg20: i8, %arg21: index, %arg22: index, %arg23: index):
    %12 = "test.with_bounds"() <{smax = -1 : i8, smin = -128 : i8, umax = -1 : i8, umin = 0 : i8}> : () -> i8
    %13 = "test.with_bounds"() <{smax = 127 : i8, smin = 0 : i8, umax = -1 : i8, umin = 0 : i8}> : () -> i8
    "scf.for"(%arg21, %arg22, %arg23) ({
    ^bb0(%arg24: index):
      %14 = "arith.ceildivsi"(%arg20, %12) : (i8, i8) -> i8
      %15 = "arith.ceildivsi"(%arg20, %13) : (i8, i8) -> i8
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i8, index, index, index) -> (), sym_name = "speculate_divui_range"}> ({
  ^bb0(%arg15: i8, %arg16: index, %arg17: index, %arg18: index):
    %10 = "test.with_bounds"() <{smax = 127 : i8, smin = -128 : i8, umax = -1 : i8, umin = 1 : i8}> : () -> i8
    "scf.for"(%arg16, %arg17, %arg18) ({
    ^bb0(%arg19: index):
      %11 = "arith.divui"(%arg15, %10) : (i8, i8) -> i8
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i8, index, index, index) -> (), sym_name = "speculate_divsi_range"}> ({
  ^bb0(%arg10: i8, %arg11: index, %arg12: index, %arg13: index):
    %6 = "test.with_bounds"() <{smax = 127 : i8, smin = 1 : i8, umax = -1 : i8, umin = 0 : i8}> : () -> i8
    %7 = "test.with_bounds"() <{smax = -2 : i8, smin = -128 : i8, umax = -1 : i8, umin = 0 : i8}> : () -> i8
    "scf.for"(%arg11, %arg12, %arg13) ({
    ^bb0(%arg14: index):
      %8 = "arith.divsi"(%arg10, %6) : (i8, i8) -> i8
      %9 = "arith.divsi"(%arg10, %7) : (i8, i8) -> i8
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i8, index, index, index) -> (), sym_name = "speculate_ceildivui_range"}> ({
  ^bb0(%arg5: i8, %arg6: index, %arg7: index, %arg8: index):
    %4 = "test.with_bounds"() <{smax = 127 : i8, smin = -128 : i8, umax = -1 : i8, umin = 1 : i8}> : () -> i8
    "scf.for"(%arg6, %arg7, %arg8) ({
    ^bb0(%arg9: index):
      %5 = "arith.ceildivui"(%arg5, %4) : (i8, i8) -> i8
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i8, index, index, index) -> (), sym_name = "speculate_ceildivsi_range"}> ({
  ^bb0(%arg0: i8, %arg1: index, %arg2: index, %arg3: index):
    %0 = "test.with_bounds"() <{smax = 127 : i8, smin = 1 : i8, umax = -1 : i8, umin = 0 : i8}> : () -> i8
    %1 = "test.with_bounds"() <{smax = -2 : i8, smin = -128 : i8, umax = -1 : i8, umin = 0 : i8}> : () -> i8
    "scf.for"(%arg1, %arg2, %arg3) ({
    ^bb0(%arg4: index):
      %2 = "arith.ceildivsi"(%arg0, %0) : (i8, i8) -> i8
      %3 = "arith.ceildivsi"(%arg0, %1) : (i8, i8) -> i8
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

