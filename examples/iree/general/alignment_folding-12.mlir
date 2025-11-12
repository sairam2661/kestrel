"builtin.module"() ({
  "util.func"() <{function_type = () -> index, sym_name = "sizeofFloat", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %0 = "util.sizeof"() <{sizedType = f32}> : () -> index
    "util.return"(%0) : (index) -> ()
  }) : () -> ()
}) : () -> ()

