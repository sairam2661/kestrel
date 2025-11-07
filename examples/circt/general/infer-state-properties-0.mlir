"builtin.module"() ({
  "arc.define"() <{function_type = (i1, i1, i1) -> i1, sym_name = "ANDBasedReset"}> ({
  ^bb0(%arg54: i1, %arg55: i1, %arg56: i1):
    %62 = "hw.constant"() <{value = true}> : () -> i1
    %63 = "comb.xor"(%arg54, %62) : (i1, i1) -> i1
    %64 = "comb.or"(%arg55, %arg56) : (i1, i1) -> i1
    %65 = "comb.and"(%63, %64) : (i1, i1) -> i1
    "arc.output"(%65) : (i1) -> ()
  }) : () -> ()
  "arc.define"() <{function_type = (i1, i1, i1) -> i1, sym_name = "MUXBasedReset"}> ({
  ^bb0(%arg51: i1, %arg52: i1, %arg53: i1):
    %59 = "hw.constant"() <{value = false}> : () -> i1
    %60 = "comb.or"(%arg52, %arg53) : (i1, i1) -> i1
    %61 = "comb.mux"(%arg51, %59, %60) : (i1, i1, i1) -> i1
    "arc.output"(%61) : (i1) -> ()
  }) : () -> ()
  "arc.define"() <{function_type = (i1, i1, i1, i1) -> i1, sym_name = "enable"}> ({
  ^bb0(%arg47: i1, %arg48: i1, %arg49: i1, %arg50: i1):
    %57 = "comb.or"(%arg48, %arg49) : (i1, i1) -> i1
    %58 = "comb.mux"(%arg47, %57, %arg50) : (i1, i1, i1) -> i1
    "arc.output"(%58) : (i1) -> ()
  }) : () -> ()
  "arc.define"() <{function_type = (i1, i1, i1) -> i1, sym_name = "enableConditionHasOtherUse"}> ({
  ^bb0(%arg44: i1, %arg45: i1, %arg46: i1):
    %55 = "comb.or"(%arg45, %arg44) : (i1, i1) -> i1
    %56 = "comb.mux"(%arg44, %55, %arg46) : (i1, i1, i1) -> i1
    "arc.output"(%56) : (i1) -> ()
  }) : () -> ()
  "arc.define"() <{function_type = (i1, i1, i1) -> i1, sym_name = "enableFeedbackHasOtherUse"}> ({
  ^bb0(%arg41: i1, %arg42: i1, %arg43: i1):
    %53 = "comb.or"(%arg42, %arg43) : (i1, i1) -> i1
    %54 = "comb.mux"(%arg41, %53, %arg43) : (i1, i1, i1) -> i1
    "arc.output"(%54) : (i1) -> ()
  }) : () -> ()
  "arc.define"() <{function_type = (i1, i1, i1, i1) -> i1, sym_name = "disable"}> ({
  ^bb0(%arg37: i1, %arg38: i1, %arg39: i1, %arg40: i1):
    %51 = "comb.or"(%arg38, %arg39) : (i1, i1) -> i1
    %52 = "comb.mux"(%arg37, %arg40, %51) : (i1, i1, i1) -> i1
    "arc.output"(%52) : (i1) -> ()
  }) : () -> ()
  "arc.define"() <{function_type = (i1, i1, i1, i1, i1) -> i1, sym_name = "resetAndEnable"}> ({
  ^bb0(%arg32: i1, %arg33: i1, %arg34: i1, %arg35: i1, %arg36: i1):
    %47 = "hw.constant"() <{value = false}> : () -> i1
    %48 = "comb.or"(%arg33, %arg34) : (i1, i1) -> i1
    %49 = "comb.mux"(%arg32, %48, %arg35) : (i1, i1, i1) -> i1
    %50 = "comb.mux"(%arg36, %47, %49) : (i1, i1, i1) -> i1
    "arc.output"(%50) : (i1) -> ()
  }) : () -> ()
  "arc.define"() <{function_type = (i1, i1, i1, i1, i1) -> (i1, i1), sym_name = "mixedEnableAndDisable"}> ({
  ^bb0(%arg27: i1, %arg28: i1, %arg29: i1, %arg30: i1, %arg31: i1):
    %44 = "comb.or"(%arg28, %arg29) : (i1, i1) -> i1
    %45 = "comb.mux"(%arg27, %arg30, %44) : (i1, i1, i1) -> i1
    %46 = "comb.mux"(%arg27, %44, %arg31) : (i1, i1, i1) -> i1
    "arc.output"(%45, %46) : (i1, i1) -> ()
  }) : () -> ()
  "arc.define"() <{function_type = (i1, i1, i1) -> (i1, i1), sym_name = "mixedAndMuxReset"}> ({
  ^bb0(%arg24: i1, %arg25: i1, %arg26: i1):
    %38 = "hw.constant"() <{value = true}> : () -> i1
    %39 = "hw.constant"() <{value = false}> : () -> i1
    %40 = "comb.xor"(%arg24, %38) : (i1, i1) -> i1
    %41 = "comb.or"(%arg25, %arg26) : (i1, i1) -> i1
    %42 = "comb.and"(%40, %41) : (i1, i1) -> i1
    %43 = "comb.mux"(%arg24, %39, %41) : (i1, i1, i1) -> i1
    "arc.output"(%42, %43) : (i1, i1) -> ()
  }) : () -> ()
  "arc.define"() <{function_type = (i1, i1, i1, i1) -> (i1, i1), sym_name = "mixedAndMuxResetDifferentConditions"}> ({
  ^bb0(%arg20: i1, %arg21: i1, %arg22: i1, %arg23: i1):
    %32 = "hw.constant"() <{value = true}> : () -> i1
    %33 = "hw.constant"() <{value = false}> : () -> i1
    %34 = "comb.xor"(%arg20, %32) : (i1, i1) -> i1
    %35 = "comb.or"(%arg21, %arg22) : (i1, i1) -> i1
    %36 = "comb.and"(%34, %35) : (i1, i1) -> i1
    %37 = "comb.mux"(%arg23, %33, %35) : (i1, i1, i1) -> i1
    "arc.output"(%36, %37) : (i1, i1) -> ()
  }) : () -> ()
  "arc.define"() <{function_type = (i1, i1, i1) -> (i1, i1), sym_name = "mixedAndMuxResetLowAndHigh"}> ({
  ^bb0(%arg17: i1, %arg18: i1, %arg19: i1):
    %27 = "hw.constant"() <{value = true}> : () -> i1
    %28 = "comb.xor"(%arg17, %27) : (i1, i1) -> i1
    %29 = "comb.or"(%arg18, %arg19) : (i1, i1) -> i1
    %30 = "comb.and"(%28, %29) : (i1, i1) -> i1
    %31 = "comb.mux"(%arg17, %27, %29) : (i1, i1, i1) -> i1
    "arc.output"(%30, %31) : (i1, i1) -> ()
  }) : () -> ()
  "arc.define"() <{function_type = (i1, i1, i1, i1, i1) -> (i1, i1), sym_name = "differentEnables"}> ({
  ^bb0(%arg12: i1, %arg13: i1, %arg14: i1, %arg15: i1, %arg16: i1):
    %24 = "comb.or"(%arg13, %arg14) : (i1, i1) -> i1
    %25 = "comb.mux"(%arg12, %24, %arg15) : (i1, i1, i1) -> i1
    %26 = "comb.mux"(%arg13, %24, %arg16) : (i1, i1, i1) -> i1
    "arc.output"(%25, %26) : (i1, i1) -> ()
  }) : () -> ()
  "arc.define"() <{function_type = (i1, i1, i1, i1) -> (i1, i1), sym_name = "onlyOneEnable"}> ({
  ^bb0(%arg8: i1, %arg9: i1, %arg10: i1, %arg11: i1):
    %22 = "comb.or"(%arg9, %arg10) : (i1, i1) -> i1
    %23 = "comb.mux"(%arg8, %arg11, %22) : (i1, i1, i1) -> i1
    "arc.output"(%23, %22) : (i1, i1) -> ()
  }) : () -> ()
  "arc.define"() <{function_type = (i1, i1, i1) -> (i1, i1), sym_name = "onlyOneReset"}> ({
  ^bb0(%arg5: i1, %arg6: i1, %arg7: i1):
    %17 = "hw.constant"() <{value = true}> : () -> i1
    %18 = "hw.constant"() <{value = false}> : () -> i1
    %19 = "comb.xor"(%arg5, %17) : (i1, i1) -> i1
    %20 = "comb.or"(%arg6, %arg7) : (i1, i1) -> i1
    %21 = "comb.and"(%19, %20) : (i1, i1) -> i1
    "arc.output"(%21, %20) : (i1, i1) -> ()
  }) : () -> ()
  "hw.module"() <{module_type = !hw.modty<input arg0 : i1, input arg1 : i1, input arg2 : i1, input arg3 : i1, input clock : !seq.clock>, parameters = [], sym_name = "testModule"}> ({
  ^bb0(%arg0: i1, %arg1: i1, %arg2: i1, %arg3: i1, %arg4: !seq.clock):
    %0 = "arc.state"(%arg4, %arg0, %arg1, %arg2) <{arc = @ANDBasedReset, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 3, 0>}> : (!seq.clock, i1, i1, i1) -> i1
    %1 = "arc.state"(%arg4, %arg0, %arg1, %arg2) <{arc = @MUXBasedReset, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 3, 0>}> : (!seq.clock, i1, i1, i1) -> i1
    %2 = "arc.state"(%arg4, %arg0, %arg1, %arg2, %2) <{arc = @enable, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 4, 0>}> : (!seq.clock, i1, i1, i1, i1) -> i1
    %3 = "arc.state"(%arg4, %arg0, %arg1, %arg2, %3) <{arc = @disable, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 4, 0>}> : (!seq.clock, i1, i1, i1, i1) -> i1
    %4 = "arc.state"(%arg4, %arg0, %arg1, %arg2, %4, %arg3) <{arc = @resetAndEnable, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 5, 0>}> : (!seq.clock, i1, i1, i1, i1, i1) -> i1
    %5:2 = "arc.state"(%arg4, %arg0, %arg1, %arg2, %5#0, %5#1) <{arc = @mixedEnableAndDisable, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 5, 0>}> : (!seq.clock, i1, i1, i1, i1, i1) -> (i1, i1)
    %6:2 = "arc.state"(%arg4, %arg0, %arg1, %arg2) <{arc = @mixedAndMuxReset, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 3, 0>}> : (!seq.clock, i1, i1, i1) -> (i1, i1)
    %7:2 = "arc.state"(%arg4, %arg0, %arg1, %arg2, %arg3) <{arc = @mixedAndMuxResetDifferentConditions, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 4, 0>}> : (!seq.clock, i1, i1, i1, i1) -> (i1, i1)
    %8 = "arc.state"(%arg4, %arg1, %arg0, %arg1, %arg2) <{arc = @MUXBasedReset, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 0, 1, 3, 0>}> : (!seq.clock, i1, i1, i1, i1) -> i1
    %9 = "arc.state"(%arg4, %arg1, %arg0, %arg1, %arg2, %9) <{arc = @enable, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 4, 0>}> : (!seq.clock, i1, i1, i1, i1, i1) -> i1
    %10 = "arc.state"(%arg4, %arg1, %arg0, %arg1, %arg2) <{arc = @MUXBasedReset, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 3, 0>}> : (!seq.clock, i1, i1, i1, i1) -> i1
    %11:2 = "arc.state"(%arg4, %arg0, %arg1, %arg2) <{arc = @mixedAndMuxResetLowAndHigh, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 3, 0>}> : (!seq.clock, i1, i1, i1) -> (i1, i1)
    %12:2 = "arc.state"(%arg4, %arg0, %arg1, %arg2, %12#0, %12#1) <{arc = @differentEnables, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 5, 0>}> : (!seq.clock, i1, i1, i1, i1, i1) -> (i1, i1)
    %13:2 = "arc.state"(%arg4, %arg0, %arg1, %arg2, %13#0) <{arc = @onlyOneEnable, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 4, 0>}> : (!seq.clock, i1, i1, i1, i1) -> (i1, i1)
    %14:2 = "arc.state"(%arg4, %arg0, %arg1, %arg2) <{arc = @onlyOneReset, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 3, 0>}> : (!seq.clock, i1, i1, i1) -> (i1, i1)
    %15 = "arc.state"(%arg4, %arg0, %arg1, %15) <{arc = @enableConditionHasOtherUse, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 3, 0>}> : (!seq.clock, i1, i1, i1) -> i1
    %16 = "arc.state"(%arg4, %arg0, %arg1, %16) <{arc = @enableFeedbackHasOtherUse, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 3, 0>}> : (!seq.clock, i1, i1, i1) -> i1
    "hw.output"() : () -> ()
  }) : () -> ()
}) : () -> ()

