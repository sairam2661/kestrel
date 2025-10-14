module attributes {transform.with_named_sequence} {
  transform.named_sequence @schedule_with_nondet_knobs(%arg0: !transform.any_op {transform.readonly}) {
    %0 = transform.tune.knob<"coin"> options = [true, false] -> !transform.any_param
    %1 = transform.tune.knob<"animal"> options = ["cat", "dog", unit] -> !transform.any_param
    %2 = transform.tune.knob<"tile_size"> options = [2, 4, 8, 16, 24, 32] -> !transform.any_param
    %3 = transform.tune.knob<"magic_value"> options = [2.000000e+00 : f32, 2.250000e+00 : f32, 2.500000e+00 : f32, 2.750000e+00 : f32, 3.000000e+00 : f32] -> !transform.any_param
    transform.debug.emit_param_as_remark %0 : !transform.any_param
    transform.yield 
  }
  transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
    transform.yield 
  }
}

