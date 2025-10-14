module {
  func.func @omp_unroll_heuristic_raw(%arg0: i32) {
    %canonloop_s0 = omp.new_cli
    omp.canonical_loop(%canonloop_s0) %iv : i32 in range(%arg0) {
      omp.terminator
    }
    omp.unroll_heuristic(%canonloop_s0)
    return
  }
  func.func @omp_unroll_heuristic_pretty(%arg0: i32) {
    %canonloop_s0 = omp.new_cli
    omp.canonical_loop(%canonloop_s0) %iv : i32 in range(%arg0) {
      omp.terminator
    }
    omp.unroll_heuristic(%canonloop_s0)
    return
  }
  func.func @omp_unroll_heuristic_nested_pretty(%arg0: i32) {
    %canonloop_s0 = omp.new_cli
    %canonloop_s0_s0 = omp.new_cli
    omp.canonical_loop(%canonloop_s0) %iv : i32 in range(%arg0) {
      omp.canonical_loop(%canonloop_s0_s0) %iv_0 : i32 in range(%arg0) {
        omp.terminator
      }
      omp.terminator
    }
    omp.unroll_heuristic(%canonloop_s0)
    omp.unroll_heuristic(%canonloop_s0_s0)
    return
  }
}

