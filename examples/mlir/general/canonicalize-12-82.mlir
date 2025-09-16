"builtin.module"() ({
  "func.func"() <{function_type = (memref<128xf32>) -> memref<128xf32>, sym_name = "fold_assume_alignment_chain"}> ({
  ^bb0(%arg0: memref<128xf32>):
    %0 = "memref.assume_alignment"(%arg0) <{alignment = 16 : i32}> : (memref<128xf32>) -> memref<128xf32>
    %1 = "memref.assume_alignment"(%0) <{alignment = 16 : i32}> : (memref<128xf32>) -> memref<128xf32>
    "func.return"(%1) : (memref<128xf32>) -> ()
  }) : () -> ()
}) : () -> ()

