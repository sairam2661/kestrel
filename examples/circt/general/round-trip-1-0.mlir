"builtin.module"() ({
  "func.func"() <{function_type = (memref<?xi32>) -> i32, sym_name = "test1"}> ({
  ^bb0(%arg16: memref<?xi32>):
    %57 = "arith.constant"() <{value = 0 : index}> : () -> index
    %58 = "arith.constant"() <{value = 1 : index}> : () -> index
    %59 = "arith.constant"() <{value = 10 : index}> : () -> index
    %60 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %61 = "loopschedule.pipeline"(%57, %60) <{II = 1 : i64}> ({
    ^bb0(%arg19: index, %arg20: i32):
      %67 = "arith.cmpi"(%arg19, %59) <{predicate = 6 : i64}> : (index, index) -> i1
      "loopschedule.register"(%67) : (i1) -> ()
    }, {
    ^bb0(%arg17: index, %arg18: i32):
      %62:2 = "loopschedule.pipeline.stage"() <{start = 0 : si64}> ({
        %65 = "arith.addi"(%arg17, %58) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
        %66 = "memref.load"(%arg16, %arg17) : (memref<?xi32>, index) -> i32
        "loopschedule.register"(%65, %66) : (index, i32) -> ()
      }) : () -> (index, i32)
      %63 = "loopschedule.pipeline.stage"() <{start = 1 : si64}> ({
        %64 = "arith.addi"(%62#1, %arg18) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
        "loopschedule.register"(%64) : (i32) -> ()
      }) : () -> i32
      "loopschedule.terminator"(%62#0, %63, %63) <{operandSegmentSizes = array<i32: 2, 1>}> : (index, i32, i32) -> ()
    }) : (index, i32) -> i32
    "func.return"(%61) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (memref<?xi32>, memref<?xi32>) -> (), sym_name = "test2"}> ({
  ^bb0(%arg12: memref<?xi32>, %arg13: memref<?xi32>):
    %42 = "arith.constant"() <{value = 0 : index}> : () -> index
    %43 = "arith.constant"() <{value = 1 : index}> : () -> index
    %44 = "arith.constant"() <{value = 3 : index}> : () -> index
    %45 = "arith.constant"() <{value = 10 : index}> : () -> index
    "loopschedule.pipeline"(%42) <{II = 1 : i64}> ({
    ^bb0(%arg15: index):
      %56 = "arith.cmpi"(%arg15, %45) <{predicate = 6 : i64}> : (index, index) -> i1
      "loopschedule.register"(%56) : (i1) -> ()
    }, {
    ^bb0(%arg14: index):
      %46:4 = "loopschedule.pipeline.stage"() <{start = 0 : si64}> ({
        %53 = "arith.addi"(%arg14, %43) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
        %54 = "memref.load"(%arg12, %arg14) : (memref<?xi32>, index) -> i32
        %55 = "arith.cmpi"(%arg14, %44) <{predicate = 9 : i64}> : (index, index) -> i1
        "loopschedule.register"(%arg14, %53, %54, %55) : (index, index, i32, i1) -> ()
      }) : () -> (index, index, i32, i1)
      %47:3 = "loopschedule.pipeline.stage"(%46#3) <{start = 1 : si64}> ({
        %52 = "arith.subi"(%46#0, %44) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
        "loopschedule.register"(%46#2, %46#3, %52) : (i32, i1, index) -> ()
      }) : (i1) -> (i32, i1, index)
      %48:4 = "loopschedule.pipeline.stage"(%47#1) <{start = 2 : si64}> ({
        %51 = "memref.load"(%arg12, %47#2) : (memref<?xi32>, index) -> i32
        "loopschedule.register"(%47#0, %47#1, %47#2, %51) : (i32, i1, index, i32) -> ()
      }) : (i1) -> (i32, i1, index, i32)
      %49:3 = "loopschedule.pipeline.stage"(%48#1) <{start = 3 : si64}> ({
        %50 = "arith.addi"(%48#0, %48#3) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
        "loopschedule.register"(%48#1, %48#2, %50) : (i1, index, i32) -> ()
      }) : (i1) -> (i1, index, i32)
      "loopschedule.pipeline.stage"(%49#0) <{start = 5 : si64}> ({
        "memref.store"(%49#2, %arg13, %49#1) : (i32, memref<?xi32>, index) -> ()
        "loopschedule.register"() : () -> ()
      }) : (i1) -> ()
      "loopschedule.terminator"(%46#0) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> ()
    }) : (index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (memref<?xi32>) -> (), sym_name = "test3"}> ({
  ^bb0(%arg9: memref<?xi32>):
    %27 = "arith.constant"() <{value = 0 : index}> : () -> index
    %28 = "arith.constant"() <{value = 1 : index}> : () -> index
    %29 = "arith.constant"() <{value = 10 : index}> : () -> index
    %30 = "memref.alloca"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1xi32>
    %31 = "memref.alloca"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1xi32>
    %32 = "memref.alloca"() <{operandSegmentSizes = array<i32: 0, 0>}> : () -> memref<1xi32>
    "loopschedule.pipeline"(%27) <{II = 1 : i64}> ({
    ^bb0(%arg11: index):
      %41 = "arith.cmpi"(%arg11, %29) <{predicate = 6 : i64}> : (index, index) -> i1
      "loopschedule.register"(%41) : (i1) -> ()
    }, {
    ^bb0(%arg10: index):
      %33:5 = "loopschedule.pipeline.stage"() <{start = 0 : si64}> ({
        %36 = "arith.addi"(%arg10, %28) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
        %37 = "memref.load"(%32, %27) : (memref<1xi32>, index) -> i32
        %38 = "memref.load"(%31, %27) : (memref<1xi32>, index) -> i32
        %39 = "memref.load"(%30, %27) : (memref<1xi32>, index) -> i32
        %40 = "memref.load"(%arg9, %arg10) : (memref<?xi32>, index) -> i32
        "loopschedule.register"(%36, %37, %38, %39, %40) : (index, i32, i32, i32, i32) -> ()
      }) : () -> (index, i32, i32, i32, i32)
      %34 = "loopschedule.pipeline.stage"() <{start = 1 : si64}> ({
        "memref.store"(%33#2, %32, %27) : (i32, memref<1xi32>, index) -> ()
        "memref.store"(%33#3, %31, %27) : (i32, memref<1xi32>, index) -> ()
        %35 = "arith.addi"(%33#1, %33#4) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
        "loopschedule.register"(%35) : (i32) -> ()
      }) : () -> i32
      "loopschedule.pipeline.stage"() <{start = 2 : si64}> ({
        "memref.store"(%34, %30, %27) : (i32, memref<1xi32>, index) -> ()
        "loopschedule.register"() : () -> ()
      }) : () -> ()
      "loopschedule.terminator"(%33#0) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> ()
    }) : (index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (memref<?xi32>, memref<?xi32>) -> (), sym_name = "test4"}> ({
  ^bb0(%arg5: memref<?xi32>, %arg6: memref<?xi32>):
    %14 = "arith.constant"() <{value = 0 : index}> : () -> index
    %15 = "arith.constant"() <{value = 1 : index}> : () -> index
    %16 = "arith.constant"() <{value = 10 : index}> : () -> index
    %17 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    "loopschedule.pipeline"(%14) <{II = 1 : i64}> ({
    ^bb0(%arg8: index):
      %26 = "arith.cmpi"(%arg8, %16) <{predicate = 6 : i64}> : (index, index) -> i1
      "loopschedule.register"(%26) : (i1) -> ()
    }, {
    ^bb0(%arg7: index):
      %18:2 = "loopschedule.pipeline.stage"() <{start = 0 : si64}> ({
        %23 = "arith.addi"(%arg7, %15) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
        %24 = "memref.load"(%arg6, %arg7) : (memref<?xi32>, index) -> i32
        %25 = "arith.index_cast"(%24) : (i32) -> index
        "loopschedule.register"(%23, %25) : (index, index) -> ()
      }) : () -> (index, index)
      %19:2 = "loopschedule.pipeline.stage"() <{start = 1 : si64}> ({
        %22 = "memref.load"(%arg5, %18#1) : (memref<?xi32>, index) -> i32
        "loopschedule.register"(%18#1, %22) : (index, i32) -> ()
      }) : () -> (index, i32)
      %20:2 = "loopschedule.pipeline.stage"() <{start = 2 : si64}> ({
        %21 = "arith.addi"(%19#1, %17) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
        "loopschedule.register"(%19#0, %21) : (index, i32) -> ()
      }) : () -> (index, i32)
      "loopschedule.pipeline.stage"() <{start = 4 : si64}> ({
        "memref.store"(%20#1, %arg5, %20#0) : (i32, memref<?xi32>, index) -> ()
        "loopschedule.register"() : () -> ()
      }) : () -> ()
      "loopschedule.terminator"(%18#0) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> ()
    }) : (index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (memref<?xi32>) -> (), sym_name = "test5"}> ({
  ^bb0(%arg2: memref<?xi32>):
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "arith.constant"() <{value = 2 : index}> : () -> index
    %4 = "arith.constant"() <{value = 10 : index}> : () -> index
    "loopschedule.pipeline"(%3) <{II = 1 : i64}> ({
    ^bb0(%arg4: index):
      %13 = "arith.cmpi"(%arg4, %4) <{predicate = 6 : i64}> : (index, index) -> i1
      "loopschedule.register"(%13) : (i1) -> ()
    }, {
    ^bb0(%arg3: index):
      %5 = "loopschedule.pipeline.stage"() <{start = 0 : si64}> ({
        %11 = "arith.subi"(%arg3, %3) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
        %12 = "memref.load"(%arg2, %11) : (memref<?xi32>, index) -> i32
        "loopschedule.register"(%12) : (i32) -> ()
      }) : () -> i32
      %6:2 = "loopschedule.pipeline.stage"() <{start = 1 : si64}> ({
        %8 = "arith.subi"(%arg3, %2) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
        %9 = "memref.load"(%arg2, %8) : (memref<?xi32>, index) -> i32
        %10 = "arith.addi"(%arg3, %2) <{overflowFlags = #arith.overflow<none>}> : (index, index) -> index
        "loopschedule.register"(%9, %10) : (i32, index) -> ()
      }) : () -> (i32, index)
      "loopschedule.pipeline.stage"() <{start = 2 : si64}> ({
        %7 = "arith.addi"(%5, %6#0) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
        "memref.store"(%7, %arg2, %arg3) : (i32, memref<?xi32>, index) -> ()
        "loopschedule.register"() : () -> ()
      }) : () -> ()
      "loopschedule.terminator"(%6#1) <{operandSegmentSizes = array<i32: 1, 0>}> : (index) -> ()
    }) : (index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "trip_count_attr"}> ({
    %0 = "arith.constant"() <{value = false}> : () -> i1
    "loopschedule.pipeline"(%0) <{II = 1 : i64, tripCount = 3 : i64}> ({
    ^bb0(%arg1: i1):
      "loopschedule.register"(%arg1) : (i1) -> ()
    }, {
    ^bb0(%arg0: i1):
      %1 = "loopschedule.pipeline.stage"() <{start = 0 : si64}> ({
        "loopschedule.register"(%arg0) : (i1) -> ()
      }) : () -> i1
      "loopschedule.terminator"(%1) <{operandSegmentSizes = array<i32: 1, 0>}> : (i1) -> ()
    }) : (i1) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

