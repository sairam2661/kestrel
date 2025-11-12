"builtin.module"() ({
  "util.func"() <{function_type = (memref<?xf32>) -> (), sym_name = "assume_alignment"}> ({
  ^bb0(%arg0: memref<?xf32>):
    %0 = "memref.assume_alignment"(%arg0) <{alignment = 64 : i32}> : (memref<?xf32>) -> memref<?xf32>
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

