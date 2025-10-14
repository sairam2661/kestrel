module {
  func.func @warp_scf_for_swap_no_yield(%arg0: index) {
    %c128 = arith.constant 128 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    gpu.warp_execute_on_lane_0(%arg0)[32] {
      scf.for %arg1 = %c0 to %c128 step %c1 {
        "some_op"() : () -> ()
      }
    }
    return
  }
}

