"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "minimal"}> ({
    %0 = "arith.constant"() <{value = 0 : i64}> : () -> i64
    %1 = "arith.constant"() <{value = 10 : i64}> : () -> i64
    %2 = "arith.constant"() <{value = 1 : i64}> : () -> i64
    "loopschedule.pipeline"(%0) <{II = 1 : i64, tripCount = 10 : i64}> ({
    ^bb0(%arg1: i64):
      %5 = "arith.cmpi"(%arg1, %1) <{predicate = 6 : i64}> : (i64, i64) -> i1
      "loopschedule.register"(%5) : (i1) -> ()
    }, {
    ^bb0(%arg0: i64):
      %3 = "loopschedule.pipeline.stage"() <{start = 0 : si64}> ({
        %4 = "arith.addi"(%arg0, %2) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
        "loopschedule.register"(%4) : (i64) -> ()
      }) : () -> i64
      "loopschedule.terminator"(%3) <{operandSegmentSizes = array<i32: 1, 0>}> : (i64) -> ()
    }) : (i64) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

