"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "correct_int_types_success"}> ({
    %0:4 = "test.int_types"() : () -> (i16, si32, ui64, i8)
    %1:4 = "test.int_types"() : () -> (si16, si32, ui64, ui64)
    %2:4 = "test.int_types"() : () -> (ui16, si32, ui64, si128)
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

