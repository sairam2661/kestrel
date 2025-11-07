"builtin.module"() ({
  "func.func"() <{function_type = (memref<64xi32>, memref<64xi32>) -> i32, sym_name = "dot"}> ({
  ^bb0(%arg0: memref<64xi32>, %arg1: memref<64xi32>):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = 64 : index}> : () -> index
    %3 = "arith.constant"() <{value = 1 : index}> : () -> index
    %4 = "loopschedule.pipeline"(%1, %0) <{II = 1 : i64, tripCount = 5 : i64}> ({
    ^bb0(%arg4: index, %arg5: i32):
      %13 = "arith.cmpi"(%arg4, %2) <{predicate = 6 : i64}> : (index, index) -> i1
      "loopschedule.register"(%13) : (i1) -> ()
    }, {
    ^bb0(%arg2: index, %arg3: i32):
      %5:3 = "loopschedule.pipeline.stage"() <{start = 0 : si64}> ({
        %10 = "memref.load"(%arg0, %arg2) : (memref<64xi32>, index) -> i32
        %11 = "memref.load"(%arg1, %arg2) : (memref<64xi32>, index) -> i32
        %12 = "arith.addi"(%arg2, %3) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
        "loopschedule.register"(%10, %11, %12) : (i32, i32, index) -> ()
      }) : () -> (i32, i32, index)
      %6 = "loopschedule.pipeline.stage"() <{start = 1 : si64}> ({
        %9 = "arith.muli"(%5#0, %5#1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
        "loopschedule.register"(%9) : (i32) -> ()
      }) : () -> i32
      %7 = "loopschedule.pipeline.stage"() <{start = 4 : si64}> ({
        %8 = "arith.addi"(%arg3, %6) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
        "loopschedule.register"(%8) : (i32) -> ()
      }) : () -> i32
      "loopschedule.terminator"(%5#2, %7, %7) <{operandSegmentSizes = array<i32: 2, 1>}> : (index, i32, i32) -> ()
    }) : (index, i32) -> i32
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

