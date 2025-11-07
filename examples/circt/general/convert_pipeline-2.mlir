"builtin.module"() ({
  "func.func"() <{function_type = (memref<4xi32>, memref<4xi32>) -> (), sym_name = "store"}> ({
  ^bb0(%arg0: memref<4xi32>, %arg1: memref<4xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 4 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    "loopschedule.pipeline"(%0) <{II = 1 : i64, tripCount = 4 : i64}> ({
    ^bb0(%arg3: index):
      %6 = "arith.cmpi"(%arg3, %1) <{predicate = 6 : i64}> : (index, index) -> i1
      "loopschedule.register"(%6) : (i1) -> ()
    }, {
    ^bb0(%arg2: index):
      %3:2 = "loopschedule.pipeline.stage"() <{start = 0 : si64}> ({
        %4 = "memref.load"(%arg0, %arg2) : (memref<4xi32>, index) -> i32
        %5 = "arith.addi"(%arg2, %2) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
        "loopschedule.register"(%4, %5) : (i32, index) -> ()
      }) : () -> (i32, index)
      "loopschedule.pipeline.stage"() <{start = 1 : si64}> ({
        "memref.store"(%3#0, %arg1, %arg2) : (i32, memref<4xi32>, index) -> ()
        "memref.store"(%3#0, %arg1, %arg2) : (i32, memref<4xi32>, index) -> ()
        "loopschedule.register"() : () -> ()
      }) : () -> ()
      "loopschedule.terminator"(%3#1) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> ()
    }) : (index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

