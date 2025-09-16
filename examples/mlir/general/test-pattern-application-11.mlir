"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<5xf32>, sym_name = "full_dialect_conversion"}> ({
    %1 = "test.foo"() {replace_with_new_op = "test.bar"} : () -> tensor<5xf32>
    "func.return"(%1) : (tensor<5xf32>) -> ()
  }) : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %0 = "transform.structured.match"(%arg0) <{ops = ["func.func"]}> : (!transform.any_op) -> !transform.any_op
      "transform.apply_conversion_patterns"(%0) <{legal_ops = ["func.func", "func.return", "test.new_op"]}> ({
        "transform.apply_conversion_patterns.transform.test_conversion_patterns"() : () -> ()
      }, {
        "transform.apply_conversion_patterns.transform.test_type_converter"() : () -> ()
      }) : (!transform.any_op) -> ()
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

