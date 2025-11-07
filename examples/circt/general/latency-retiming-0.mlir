#loc = loc("/data/saiva/sut/seeds/circt/seeds/split_files/latency-retiming-0.mlir":2:118)
#loc1 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/latency-retiming-0.mlir":2:134)
#loc2 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/latency-retiming-0.mlir":2:150)
#loc3 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/latency-retiming-0.mlir":2:165)
#loc4 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/latency-retiming-0.mlir":2:180)
#loc5 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/latency-retiming-0.mlir":2:195)
#loc6 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/latency-retiming-0.mlir":2:210)
#loc7 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/latency-retiming-0.mlir":2:225)
#loc8 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/latency-retiming-0.mlir":2:240)
#loc9 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/latency-retiming-0.mlir":2:255)
#loc10 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/latency-retiming-0.mlir":2:270)
#loc11 = loc("/data/saiva/sut/seeds/circt/seeds/split_files/latency-retiming-0.mlir":2:286)
"builtin.module"() ({
  "hw.module"() <{module_type = !hw.modty<input clk : !seq.clock, input clk2 : !seq.clock, input en : i1, input rst : i1, input arg0 : i32, input arg1 : i32, output out0 : i32, output out1 : i32, output out2 : i32, output out3 : i32, output out4 : i32, output out5 : i32, output out6 : i32, output out7 : i32, output out8 : i32, output out9 : i32, output out10 : i32, output out11 : i32>, parameters = [], result_locs = [#loc, #loc1, #loc2, #loc3, #loc4, #loc5, #loc6, #loc7, #loc8, #loc9, #loc10, #loc11], sym_name = "Foo"}> ({
  ^bb0(%arg3: !seq.clock, %arg4: !seq.clock, %arg5: i1, %arg6: i1, %arg7: i32, %arg8: i32):
    %0 = "arc.state"(%arg3, %arg7) <{arc = @Bar, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 1, 0>}> : (!seq.clock, i32) -> i32
    %1 = "arc.state"(%arg3, %0) <{arc = @Bar, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 1, 0>}> : (!seq.clock, i32) -> i32
    %2 = "arc.state"(%arg3, %1) <{arc = @Bar, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 1, 0>}> : (!seq.clock, i32) -> i32
    %3:2 = "arc.state"(%arg3, %arg7, %arg8) <{arc = @Baz, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 2, 0>}> : (!seq.clock, i32, i32) -> (i32, i32)
    %4:2 = "arc.state"(%arg3, %3#0, %3#1) <{arc = @Baz, latency = 2 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 2, 0>}> : (!seq.clock, i32, i32) -> (i32, i32)
    %5:2 = "arc.state"(%arg3, %4#0, %4#1) <{arc = @Baz, latency = 3 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 2, 0>}> : (!seq.clock, i32, i32) -> (i32, i32)
    %6 = "arc.state"(%arg3, %arg7) <{arc = @Bar, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 1, 0>}> : (!seq.clock, i32) -> i32
    %7 = "arc.state"(%arg3, %arg8) <{arc = @Bar, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 1, 0>}> : (!seq.clock, i32) -> i32
    %8:2 = "arc.state"(%arg3, %6, %7) <{arc = @Baz, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 2, 0>}> : (!seq.clock, i32, i32) -> (i32, i32)
    %9 = "arc.state"(%arg3, %arg8) <{arc = @Bar, latency = 2 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 1, 0>}> : (!seq.clock, i32) -> i32
    %10:2 = "arc.call"(%8#0, %9) <{arc = @Baz}> : (i32, i32) -> (i32, i32)
    %11 = "arc.state"(%arg3, %arg7) <{arc = @Bar, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 1, 0>}> : (!seq.clock, i32) -> i32
    %12 = "arc.state"(%arg3, %11) <{arc = @Bar, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 1, 0>}> : (!seq.clock, i32) -> i32
    %13 = "arc.state"(%arg3, %11) <{arc = @Bar, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 1, 0>}> : (!seq.clock, i32) -> i32
    %14 = "arc.state"(%arg3, %arg7) <{arc = @Bar, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 1, 0>}> : (!seq.clock, i32) -> i32
    %15 = "arc.state"(%arg3, %14) <{arc = @Bar, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 1, 0>}> {name = "reg"} : (!seq.clock, i32) -> i32
    %16 = "arc.state"(%arg3, %15) <{arc = @Bar, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 1, 0>}> : (!seq.clock, i32) -> i32
    %17 = "arc.state"(%arg3, %arg7) <{arc = @Bar, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 1, 0>}> : (!seq.clock, i32) -> i32
    %18 = "arc.state"(%arg3, %17) <{arc = @Bar, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 1, 0>}> {names = ["reg"]} : (!seq.clock, i32) -> i32
    %19 = "arc.state"(%arg3, %18) <{arc = @Bar, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 1, 0>}> : (!seq.clock, i32) -> i32
    %20 = "arc.state"(%arg3, %arg7) <{arc = @Bar, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 1, 0>}> : (!seq.clock, i32) -> i32
    %21 = "arc.state"(%arg3, %arg5, %20) <{arc = @Bar, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 1, 0, 1, 0>}> : (!seq.clock, i1, i32) -> i32
    %22 = "arc.state"(%arg3, %21) <{arc = @Bar, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 1, 0>}> : (!seq.clock, i32) -> i32
    %23 = "arc.state"(%arg3, %arg7) <{arc = @Bar, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 1, 0>}> : (!seq.clock, i32) -> i32
    %24 = "arc.state"(%arg3, %arg6, %23) <{arc = @Bar, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 0, 1, 1, 0>}> : (!seq.clock, i1, i32) -> i32
    %25 = "arc.state"(%arg3, %24) <{arc = @Bar, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 1, 0>}> : (!seq.clock, i32) -> i32
    %26 = "arc.state"(%arg3, %26) <{arc = @Bar, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 1, 0>}> : (!seq.clock, i32) -> i32
    %27 = "arc.state"(%arg3, %arg7) <{arc = @Bar, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 1, 0>}> : (!seq.clock, i32) -> i32
    %28 = "arc.state"(%arg4, %27) <{arc = @Bar, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 1, 0>}> : (!seq.clock, i32) -> i32
    %29 = "arc.state"(%arg3, %arg7) <{arc = @Bar, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 1, 0>}> : (!seq.clock, i32) -> i32
    %30 = "arc.state"(%arg3, %arg8) <{arc = @Bar, latency = 2 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 1, 0>}> : (!seq.clock, i32) -> i32
    %31:2 = "arc.state"(%arg3, %29, %30) <{arc = @Baz, latency = 1 : i32, operandSegmentSizes = array<i32: 1, 0, 0, 2, 0>}> : (!seq.clock, i32, i32) -> (i32, i32)
    "hw.output"(%2, %5#0, %5#1, %10#0, %12, %13, %16, %19, %22, %25, %28, %31#0) : (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) -> ()
  }) : () -> ()
  "arc.define"() <{function_type = (i32) -> i32, sym_name = "Bar"}> ({
  ^bb0(%arg2: i32):
    "arc.output"(%arg2) : (i32) -> ()
  }) : () -> ()
  "arc.define"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "Baz"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    "arc.output"(%arg1, %arg0) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()

