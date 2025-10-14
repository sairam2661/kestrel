module attributes {transform.with_named_sequence} {
  transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
    transform.test_check_if_test_extension_present %arg0 : !transform.any_op
    transform.test_add_test_extension "A"
    transform.test_check_if_test_extension_present %arg0 : !transform.any_op
    transform.test_remove_test_extension
    transform.test_check_if_test_extension_present %arg0 : !transform.any_op
    transform.yield 
  }
}

