"builtin.module"() ({
  "util.func"() <{function_type = () -> index, sym_name = "sizeofWholeInt", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %0 = "util.sizeof"() <{sizedType = i32}> : () -> index
    "util.return"(%0) : (index) -> ()
  }) : () -> ()
}) : () -> ()

