module attributes {transform.with_named_sequence} {
  transform.named_sequence @eq_1(%arg0: !transform.any_op {transform.readonly}) -> !transform.any_op {
    transform.match.operation_name %arg0 ["func.func"] : !transform.any_op
    %0 = transform.test_produce_param_with_number_of_test_ops %arg0 : !transform.any_op
    %1 = transform.param.constant 1 : i32 -> !transform.test_dialect_param
    transform.match.param.cmpi eq %0, %1 : !transform.test_dialect_param
    transform.debug.emit_remark_at %arg0, "matched == 1" : !transform.any_op
    transform.yield %arg0 : !transform.any_op
  }
  transform.named_sequence @ne_0(%arg0: !transform.any_op {transform.readonly}) -> !transform.any_op {
    transform.match.operation_name %arg0 ["func.func"] : !transform.any_op
    %0 = transform.test_produce_param_with_number_of_test_ops %arg0 : !transform.any_op
    %1 = transform.param.constant 0 : i32 -> !transform.test_dialect_param
    transform.match.param.cmpi ne %0, %1 : !transform.test_dialect_param
    transform.debug.emit_remark_at %arg0, "matched != 0" : !transform.any_op
    transform.yield %arg0 : !transform.any_op
  }
  transform.named_sequence @gt_m1(%arg0: !transform.any_op {transform.readonly}) -> !transform.any_op {
    transform.match.operation_name %arg0 ["func.func"] : !transform.any_op
    %0 = transform.test_produce_param_with_number_of_test_ops %arg0 : !transform.any_op
    %1 = transform.param.constant -1 : i32 -> !transform.test_dialect_param
    transform.match.param.cmpi gt %0, %1 : !transform.test_dialect_param
    transform.debug.emit_remark_at %arg0, "matched > -1" : !transform.any_op
    transform.yield %arg0 : !transform.any_op
  }
  transform.named_sequence @ge_1(%arg0: !transform.any_op {transform.readonly}) -> !transform.any_op {
    transform.match.operation_name %arg0 ["func.func"] : !transform.any_op
    %0 = transform.test_produce_param_with_number_of_test_ops %arg0 : !transform.any_op
    %1 = transform.param.constant 1 : i32 -> !transform.test_dialect_param
    transform.match.param.cmpi ge %0, %1 : !transform.test_dialect_param
    transform.debug.emit_remark_at %arg0, "matched >= 1" : !transform.any_op
    transform.yield %arg0 : !transform.any_op
  }
  transform.named_sequence @lt_1(%arg0: !transform.any_op {transform.readonly}) -> !transform.any_op {
    transform.match.operation_name %arg0 ["func.func"] : !transform.any_op
    %0 = transform.test_produce_param_with_number_of_test_ops %arg0 : !transform.any_op
    %1 = transform.param.constant 1 : i32 -> !transform.test_dialect_param
    transform.match.param.cmpi lt %0, %1 : !transform.test_dialect_param
    transform.debug.emit_remark_at %arg0, "matched < 1" : !transform.any_op
    transform.yield %arg0 : !transform.any_op
  }
  transform.named_sequence @le_1(%arg0: !transform.any_op {transform.readonly}) -> !transform.any_op {
    transform.match.operation_name %arg0 ["func.func"] : !transform.any_op
    %0 = transform.test_produce_param_with_number_of_test_ops %arg0 : !transform.any_op
    %1 = transform.param.constant 1 : i32 -> !transform.test_dialect_param
    transform.match.param.cmpi le %0, %1 : !transform.test_dialect_param
    transform.debug.emit_remark_at %arg0, "matched <= 1" : !transform.any_op
    transform.yield %arg0 : !transform.any_op
  }
  transform.named_sequence @do_nothing(%arg0: !transform.any_op {transform.readonly}) {
    transform.yield 
  }
  transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
    %updated_root = transform.foreach_match in %arg0 
        @eq_1 -> @do_nothing : (!transform.any_op) -> !transform.any_op
    %updated_root_0 = transform.foreach_match in %updated_root 
        @ne_0 -> @do_nothing : (!transform.any_op) -> !transform.any_op
    %updated_root_1 = transform.foreach_match in %updated_root_0 
        @gt_m1 -> @do_nothing : (!transform.any_op) -> !transform.any_op
    %updated_root_2 = transform.foreach_match in %updated_root_1 
        @ge_1 -> @do_nothing : (!transform.any_op) -> !transform.any_op
    %updated_root_3 = transform.foreach_match in %updated_root_2 
        @lt_1 -> @do_nothing : (!transform.any_op) -> !transform.any_op
    %updated_root_4 = transform.foreach_match in %updated_root_3 
        @le_1 -> @do_nothing : (!transform.any_op) -> !transform.any_op
    transform.yield 
  }
  func.func private @declaration()
  func.func @definition() {
    "test.something"() : () -> ()
    return
  }
}

