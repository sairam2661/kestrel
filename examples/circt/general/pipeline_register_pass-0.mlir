"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "foo"}> ({
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    "loopschedule.pipeline"(%0) <{II = 1 : i64, tripCount = 20 : i64}> ({
    ^bb0(%arg1: index):
      %4 = "arith.cmpi"(%arg1, %0) <{predicate = 6 : i64}> : (index, index) -> i1
      "loopschedule.register"(%4) : (i1) -> ()
    }, {
    ^bb0(%arg0: index):
      %1 = "loopschedule.pipeline.stage"() <{start = 0 : si64}> ({
        %3 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
        "loopschedule.register"(%3) : (index) -> ()
      }) : () -> index
      %2 = "loopschedule.pipeline.stage"() <{start = 1 : si64}> ({
        "loopschedule.register"(%1) : (index) -> ()
      }) : () -> index
      "loopschedule.terminator"(%1) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> ()
    }) : (index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

