"builtin.module"() ({
  "func.func"() <{function_type = (memref<4x4xf16>) -> (), sym_name = "assume_alignment"}> ({
  ^bb0(%arg0: memref<4x4xf16>):
    %0 = "memref.assume_alignment"(%arg0) <{alignment = 16 : i32}> : (memref<4x4xf16>) -> memref<4x4xf16>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

