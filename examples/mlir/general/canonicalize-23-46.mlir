"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "f"}> ({
    %0 = "shape.const_witness"() <{passing = true}> : () -> !shape.witness
    %1 = "test.source"() : () -> !shape.witness
    %2 = "test.source"() : () -> !shape.witness
    %3 = "shape.assuming_all"(%0, %1, %2) : (!shape.witness, !shape.witness, !shape.witness) -> !shape.witness
    "consume.witness"(%3) : (!shape.witness) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

