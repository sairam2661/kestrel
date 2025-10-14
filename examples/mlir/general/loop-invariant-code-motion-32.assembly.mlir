module {
  func.func @no_speculate_divui(%arg0: i32, %arg1: i32, %arg2: index, %arg3: index, %arg4: index) {
    scf.for %arg5 = %arg2 to %arg3 step %arg4 {
      %0 = arith.divui %arg0, %arg1 : i32
    }
    return
  }
  func.func @no_speculate_divsi(%arg0: i32, %arg1: i32, %arg2: index, %arg3: index, %arg4: index) {
    scf.for %arg5 = %arg2 to %arg3 step %arg4 {
      %0 = arith.divsi %arg0, %arg1 : i32
    }
    return
  }
  func.func @no_speculate_ceildivui(%arg0: i32, %arg1: i32, %arg2: index, %arg3: index, %arg4: index) {
    scf.for %arg5 = %arg2 to %arg3 step %arg4 {
      %0 = arith.ceildivui %arg0, %arg1 : i32
    }
    return
  }
  func.func @no_speculate_ceildivsi(%arg0: i32, %arg1: i32, %arg2: index, %arg3: index, %arg4: index) {
    scf.for %arg5 = %arg2 to %arg3 step %arg4 {
      %0 = arith.ceildivsi %arg0, %arg1 : i32
    }
    return
  }
  func.func @no_speculate_divui_const(%arg0: i32, %arg1: index, %arg2: index, %arg3: index) {
    %c0_i32 = arith.constant 0 : i32
    scf.for %arg4 = %arg1 to %arg2 step %arg3 {
      %0 = arith.divui %arg0, %c0_i32 : i32
    }
    return
  }
  func.func @speculate_divui_const(%arg0: i32, %arg1: index, %arg2: index, %arg3: index) {
    %c5_i32 = arith.constant 5 : i32
    scf.for %arg4 = %arg1 to %arg2 step %arg3 {
      %0 = arith.divui %arg0, %c5_i32 : i32
    }
    return
  }
  func.func @no_speculate_ceildivui_const(%arg0: i32, %arg1: index, %arg2: index, %arg3: index) {
    %c0_i32 = arith.constant 0 : i32
    scf.for %arg4 = %arg1 to %arg2 step %arg3 {
      %0 = arith.ceildivui %arg0, %c0_i32 : i32
    }
    return
  }
  func.func @speculate_ceildivui_const(%arg0: i32, %arg1: index, %arg2: index, %arg3: index) {
    %c5_i32 = arith.constant 5 : i32
    scf.for %arg4 = %arg1 to %arg2 step %arg3 {
      %0 = arith.ceildivui %arg0, %c5_i32 : i32
    }
    return
  }
  func.func @no_speculate_divsi_const0(%arg0: i32, %arg1: i32, %arg2: index, %arg3: index, %arg4: index) {
    %c0_i32 = arith.constant 0 : i32
    scf.for %arg5 = %arg2 to %arg3 step %arg4 {
      %0 = arith.divsi %arg0, %c0_i32 : i32
    }
    return
  }
  func.func @no_speculate_divsi_const_minus1(%arg0: i32, %arg1: i32, %arg2: index, %arg3: index, %arg4: index) {
    %c-1_i32 = arith.constant -1 : i32
    scf.for %arg5 = %arg2 to %arg3 step %arg4 {
      %0 = arith.divsi %arg0, %c-1_i32 : i32
    }
    return
  }
  func.func @speculate_divsi_const(%arg0: i32, %arg1: i32, %arg2: index, %arg3: index, %arg4: index) {
    %c5_i32 = arith.constant 5 : i32
    scf.for %arg5 = %arg2 to %arg3 step %arg4 {
      %0 = arith.divsi %arg0, %c5_i32 : i32
    }
    return
  }
  func.func @no_speculate_ceildivsi_const0(%arg0: i32, %arg1: i32, %arg2: index, %arg3: index, %arg4: index) {
    %c0_i32 = arith.constant 0 : i32
    scf.for %arg5 = %arg2 to %arg3 step %arg4 {
      %0 = arith.ceildivsi %arg0, %c0_i32 : i32
    }
    return
  }
  func.func @no_speculate_ceildivsi_const_minus1(%arg0: i32, %arg1: i32, %arg2: index, %arg3: index, %arg4: index) {
    %c-1_i32 = arith.constant -1 : i32
    scf.for %arg5 = %arg2 to %arg3 step %arg4 {
      %0 = arith.ceildivsi %arg0, %c-1_i32 : i32
    }
    return
  }
  func.func @speculate_ceildivsi_const(%arg0: i32, %arg1: i32, %arg2: index, %arg3: index, %arg4: index) {
    %c5_i32 = arith.constant 5 : i32
    scf.for %arg5 = %arg2 to %arg3 step %arg4 {
      %0 = arith.ceildivsi %arg0, %c5_i32 : i32
    }
    return
  }
  func.func @no_speculate_divui_range(%arg0: i8, %arg1: index, %arg2: index, %arg3: index) {
    %0 = test.with_bounds {smax = 127 : i8, smin = -128 : i8, umax = -1 : i8, umin = 0 : i8} : i8
    scf.for %arg4 = %arg1 to %arg2 step %arg3 {
      %1 = arith.divui %arg0, %0 : i8
    }
    return
  }
  func.func @no_speculate_divsi_range(%arg0: i8, %arg1: index, %arg2: index, %arg3: index) {
    %0 = test.with_bounds {smax = -1 : i8, smin = -128 : i8, umax = -1 : i8, umin = 0 : i8} : i8
    %1 = test.with_bounds {smax = 127 : i8, smin = 0 : i8, umax = -1 : i8, umin = 0 : i8} : i8
    scf.for %arg4 = %arg1 to %arg2 step %arg3 {
      %2 = arith.divsi %arg0, %0 : i8
      %3 = arith.divsi %arg0, %1 : i8
    }
    return
  }
  func.func @no_speculate_ceildivui_range(%arg0: i8, %arg1: index, %arg2: index, %arg3: index) {
    %0 = test.with_bounds {smax = 127 : i8, smin = -128 : i8, umax = -1 : i8, umin = 0 : i8} : i8
    scf.for %arg4 = %arg1 to %arg2 step %arg3 {
      %1 = arith.ceildivui %arg0, %0 : i8
    }
    return
  }
  func.func @no_speculate_ceildivsi_range(%arg0: i8, %arg1: index, %arg2: index, %arg3: index) {
    %0 = test.with_bounds {smax = -1 : i8, smin = -128 : i8, umax = -1 : i8, umin = 0 : i8} : i8
    %1 = test.with_bounds {smax = 127 : i8, smin = 0 : i8, umax = -1 : i8, umin = 0 : i8} : i8
    scf.for %arg4 = %arg1 to %arg2 step %arg3 {
      %2 = arith.ceildivsi %arg0, %0 : i8
      %3 = arith.ceildivsi %arg0, %1 : i8
    }
    return
  }
  func.func @speculate_divui_range(%arg0: i8, %arg1: index, %arg2: index, %arg3: index) {
    %0 = test.with_bounds {smax = 127 : i8, smin = -128 : i8, umax = -1 : i8, umin = 1 : i8} : i8
    scf.for %arg4 = %arg1 to %arg2 step %arg3 {
      %1 = arith.divui %arg0, %0 : i8
    }
    return
  }
  func.func @speculate_divsi_range(%arg0: i8, %arg1: index, %arg2: index, %arg3: index) {
    %0 = test.with_bounds {smax = 127 : i8, smin = 1 : i8, umax = -1 : i8, umin = 0 : i8} : i8
    %1 = test.with_bounds {smax = -2 : i8, smin = -128 : i8, umax = -1 : i8, umin = 0 : i8} : i8
    scf.for %arg4 = %arg1 to %arg2 step %arg3 {
      %2 = arith.divsi %arg0, %0 : i8
      %3 = arith.divsi %arg0, %1 : i8
    }
    return
  }
  func.func @speculate_ceildivui_range(%arg0: i8, %arg1: index, %arg2: index, %arg3: index) {
    %0 = test.with_bounds {smax = 127 : i8, smin = -128 : i8, umax = -1 : i8, umin = 1 : i8} : i8
    scf.for %arg4 = %arg1 to %arg2 step %arg3 {
      %1 = arith.ceildivui %arg0, %0 : i8
    }
    return
  }
  func.func @speculate_ceildivsi_range(%arg0: i8, %arg1: index, %arg2: index, %arg3: index) {
    %0 = test.with_bounds {smax = 127 : i8, smin = 1 : i8, umax = -1 : i8, umin = 0 : i8} : i8
    %1 = test.with_bounds {smax = -2 : i8, smin = -128 : i8, umax = -1 : i8, umin = 0 : i8} : i8
    scf.for %arg4 = %arg1 to %arg2 step %arg3 {
      %2 = arith.ceildivsi %arg0, %0 : i8
      %3 = arith.ceildivsi %arg0, %1 : i8
    }
    return
  }
}

