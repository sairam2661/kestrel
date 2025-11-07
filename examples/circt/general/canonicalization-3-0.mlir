"builtin.module"() ({
  "func.func"() <{function_type = (i1) -> (), sym_name = "Bool", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = (!ltl.sequence) -> (), sym_name = "Seq", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = (!ltl.property) -> (), sym_name = "Prop", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = (!ltl.sequence, i1) -> (), sym_name = "DelayFolds"}> ({
  ^bb0(%arg9: !ltl.sequence, %arg10: i1):
    %14 = "ltl.delay"(%arg9) <{delay = 0 : i64, length = 0 : i64}> : (!ltl.sequence) -> !ltl.sequence
    %15 = "ltl.delay"(%arg10) <{delay = 0 : i64, length = 0 : i64}> : (i1) -> !ltl.sequence
    "func.call"(%14) <{callee = @Seq}> : (!ltl.sequence) -> ()
    "func.call"(%15) <{callee = @Seq}> : (!ltl.sequence) -> ()
    %16 = "ltl.delay"(%arg9) <{delay = 1 : i64}> : (!ltl.sequence) -> !ltl.sequence
    %17 = "ltl.delay"(%16) <{delay = 2 : i64}> : (!ltl.sequence) -> !ltl.sequence
    "func.call"(%17) <{callee = @Seq}> : (!ltl.sequence) -> ()
    %18 = "ltl.delay"(%arg9) <{delay = 1 : i64, length = 0 : i64}> : (!ltl.sequence) -> !ltl.sequence
    %19 = "ltl.delay"(%arg9) <{delay = 1 : i64, length = 42 : i64}> : (!ltl.sequence) -> !ltl.sequence
    %20 = "ltl.delay"(%18) <{delay = 2 : i64}> : (!ltl.sequence) -> !ltl.sequence
    %21 = "ltl.delay"(%19) <{delay = 2 : i64}> : (!ltl.sequence) -> !ltl.sequence
    "func.call"(%20) <{callee = @Seq}> : (!ltl.sequence) -> ()
    "func.call"(%21) <{callee = @Seq}> : (!ltl.sequence) -> ()
    %22 = "ltl.delay"(%arg9) <{delay = 1 : i64}> : (!ltl.sequence) -> !ltl.sequence
    %23 = "ltl.delay"(%arg9) <{delay = 1 : i64}> : (!ltl.sequence) -> !ltl.sequence
    %24 = "ltl.delay"(%22) <{delay = 2 : i64, length = 0 : i64}> : (!ltl.sequence) -> !ltl.sequence
    %25 = "ltl.delay"(%23) <{delay = 2 : i64, length = 42 : i64}> : (!ltl.sequence) -> !ltl.sequence
    "func.call"(%24) <{callee = @Seq}> : (!ltl.sequence) -> ()
    "func.call"(%25) <{callee = @Seq}> : (!ltl.sequence) -> ()
    %26 = "ltl.delay"(%arg9) <{delay = 1 : i64, length = 2 : i64}> : (!ltl.sequence) -> !ltl.sequence
    %27 = "ltl.delay"(%arg9) <{delay = 1 : i64, length = 2 : i64}> : (!ltl.sequence) -> !ltl.sequence
    %28 = "ltl.delay"(%26) <{delay = 3 : i64, length = 0 : i64}> : (!ltl.sequence) -> !ltl.sequence
    %29 = "ltl.delay"(%27) <{delay = 3 : i64, length = 5 : i64}> : (!ltl.sequence) -> !ltl.sequence
    "func.call"(%28) <{callee = @Seq}> : (!ltl.sequence) -> ()
    "func.call"(%29) <{callee = @Seq}> : (!ltl.sequence) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!ltl.sequence, !ltl.sequence, !ltl.sequence) -> (), sym_name = "ConcatFolds"}> ({
  ^bb0(%arg6: !ltl.sequence, %arg7: !ltl.sequence, %arg8: !ltl.sequence):
    %6 = "ltl.concat"(%arg6) : (!ltl.sequence) -> !ltl.sequence
    "func.call"(%6) <{callee = @Seq}> : (!ltl.sequence) -> ()
    %7 = "ltl.concat"(%arg6, %arg7) : (!ltl.sequence, !ltl.sequence) -> !ltl.sequence
    %8 = "ltl.concat"(%7, %arg8) : (!ltl.sequence, !ltl.sequence) -> !ltl.sequence
    %9 = "ltl.concat"(%arg7, %arg8) : (!ltl.sequence, !ltl.sequence) -> !ltl.sequence
    %10 = "ltl.concat"(%arg6, %9) : (!ltl.sequence, !ltl.sequence) -> !ltl.sequence
    %11 = "ltl.concat"(%7, %arg8, %arg6, %9) : (!ltl.sequence, !ltl.sequence, !ltl.sequence, !ltl.sequence) -> !ltl.sequence
    "func.call"(%8) <{callee = @Seq}> : (!ltl.sequence) -> ()
    "func.call"(%10) <{callee = @Seq}> : (!ltl.sequence) -> ()
    "func.call"(%11) <{callee = @Seq}> : (!ltl.sequence) -> ()
    %12 = "ltl.concat"(%arg6, %arg7) : (!ltl.sequence, !ltl.sequence) -> !ltl.sequence
    %13 = "ltl.delay"(%12) <{delay = 2 : i64, length = 3 : i64}> : (!ltl.sequence) -> !ltl.sequence
    "func.call"(%13) <{callee = @Seq}> : (!ltl.sequence) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!ltl.sequence) -> (), sym_name = "RepeatFolds"}> ({
  ^bb0(%arg5: !ltl.sequence):
    %5 = "ltl.repeat"(%arg5) <{base = 1 : i64, more = 0 : i64}> : (!ltl.sequence) -> !ltl.sequence
    "func.call"(%5) <{callee = @Seq}> : (!ltl.sequence) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!ltl.sequence) -> (), sym_name = "GoToRepeatFolds"}> ({
  ^bb0(%arg4: !ltl.sequence):
    %4 = "ltl.goto_repeat"(%arg4) <{base = 1 : i64, more = 0 : i64}> : (!ltl.sequence) -> !ltl.sequence
    "func.call"(%4) <{callee = @Seq}> : (!ltl.sequence) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!ltl.sequence) -> (), sym_name = "NonConsecutiveRepeatFolds"}> ({
  ^bb0(%arg3: !ltl.sequence):
    %3 = "ltl.non_consecutive_repeat"(%arg3) <{base = 1 : i64, more = 0 : i64}> : (!ltl.sequence) -> !ltl.sequence
    "func.call"(%3) <{callee = @Seq}> : (!ltl.sequence) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i1, i1, i1) -> (), sym_name = "CanonicalizeToComb"}> ({
  ^bb0(%arg0: i1, %arg1: i1, %arg2: i1):
    %0 = "ltl.and"(%arg0, %arg1, %arg2) : (i1, i1, i1) -> i1
    %1 = "ltl.or"(%arg0, %arg1, %arg2) : (i1, i1, i1) -> i1
    %2 = "ltl.intersect"(%arg0, %arg1, %arg2) : (i1, i1, i1) -> i1
    "func.call"(%0) <{callee = @Bool}> : (i1) -> ()
    "func.call"(%1) <{callee = @Bool}> : (i1) -> ()
    "func.call"(%2) <{callee = @Bool}> : (i1) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

