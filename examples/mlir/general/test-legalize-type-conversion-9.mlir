"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "test_signature_conversion_no_converter"}> ({
    "test.signature_conversion_no_converter"() ({
    ^bb0(%arg0: f32):
      "test.type_consumer"(%arg0) : (f32) -> ()
      "test.return"(%arg0) : (f32) -> ()
    }) : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

