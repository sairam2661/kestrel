module {
  func.func @full_dialect_conversion_failed() -> tensor<5xf32> {
    %0 = "test.foo"() {replace_with_new_op = "test.bar"} : () -> tensor<5xf32>
    "test.bar"() : () -> ()
    return %0 : tensor<5xf32>
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
      %0 = transform.structured.match ops{["func.func"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      transform.apply_conversion_patterns to %0 {
        transform.apply_conversion_patterns.transform.test_conversion_patterns
      } with type_converter {
        transform.apply_conversion_patterns.transform.test_type_converter
      } {legal_ops = ["func.func", "func.return", "test.new_op"]} : !transform.any_op
      transform.yield 
    }
  }
}

