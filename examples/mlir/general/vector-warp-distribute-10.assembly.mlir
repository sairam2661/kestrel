module {
  func.func @warp_propagate_cast(%arg0: index, %arg1: i32) -> f32 {
    %0 = gpu.warp_execute_on_lane_0(%arg0)[32] -> (f32) {
      %1 = arith.sitofp %arg1 : i32 to f32
      gpu.yield %1 : f32
    }
    return %0 : f32
  }
}

