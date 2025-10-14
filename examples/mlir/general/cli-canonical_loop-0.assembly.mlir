module {
  func.func @omp_canonloop_raw(%arg0: i32) {
    omp.canonical_loop %iv : i32 in range(%arg0) {
      %0 = llvm.add %iv, %iv : i32
      omp.terminator
    }
    return
  }
  func.func @omp_canonloop_sequential_raw(%arg0: i32) {
    %canonloop_s0 = omp.new_cli
    omp.canonical_loop(%canonloop_s0) %iv : i32 in range(%arg0) {
      %0 = llvm.add %iv, %iv : i32
      omp.terminator
    }
    %canonloop_s1 = omp.new_cli
    omp.canonical_loop(%canonloop_s1) %iv : i32 in range(%arg0) {
      omp.terminator
    }
    return
  }
  func.func @omp_nested_canonloop_raw(%arg0: i32, %arg1: i32) {
    %canonloop_s0 = omp.new_cli
    %canonloop_s0_s0 = omp.new_cli
    omp.canonical_loop(%canonloop_s0) %iv : i32 in range(%arg0) {
      omp.canonical_loop(%canonloop_s0_s0) %iv_0 : i32 in range(%arg1) {
        %0 = llvm.add %iv, %iv_0 : i32
        omp.terminator
      }
      omp.terminator
    }
    return
  }
  func.func @omp_canonloop_pretty(%arg0: i32) {
    omp.canonical_loop %iv : i32 in range(%arg0) {
      %0 = llvm.add %iv, %iv : i32
      omp.terminator
    }
    return
  }
  func.func @omp_canonloop_constant_pretty() {
    %0 = llvm.mlir.constant(4 : i32) : i32
    omp.canonical_loop %iv : i32 in range(%0) {
      %1 = llvm.add %iv, %iv : i32
      omp.terminator
    }
    return
  }
  func.func @omp_canonloop_sequential_pretty(%arg0: i32) {
    %canonloop_s0 = omp.new_cli
    omp.canonical_loop(%canonloop_s0) %iv : i32 in range(%arg0) {
      omp.terminator
    }
    %canonloop_s1 = omp.new_cli
    omp.canonical_loop(%canonloop_s1) %iv : i32 in range(%arg0) {
      omp.terminator
    }
    return
  }
  func.func @omp_canonloop_nested_pretty(%arg0: i32) {
    %canonloop_s0 = omp.new_cli
    %canonloop_s0_s0 = omp.new_cli
    omp.canonical_loop(%canonloop_s0) %iv : i32 in range(%arg0) {
      omp.canonical_loop(%canonloop_s0_s0) %iv_0 : i32 in range(%arg0) {
        omp.terminator
      }
      omp.terminator
    }
    return
  }
  func.func @omp_newcli_unused() {
    %cli = omp.new_cli
    return
  }
}

