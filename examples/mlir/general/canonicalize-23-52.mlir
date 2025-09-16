"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "f"}> ({
    %0 = "shape.const_witness"() <{passing = true}> : () -> !shape.witness
    %1 = "shape.assuming"(%0) ({
      %2 = "test.source"() : () -> index
      "shape.assuming_yield"(%2) : (index) -> ()
    }) : (!shape.witness) -> index
    "test.sink"(%1) : (index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

