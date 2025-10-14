module {
  func.func @pretty_printed_region_op_deferred_loc(%arg0: f32, %arg1: f32) -> f32 {
    %0 = test.pretty_printed_region %arg1, %arg0 start test.special.op end : (f32, f32) -> f32
    return %0 : f32
  }
}

