"builtin.module"() ({
  "func.func"() <{function_type = (memref<10xf32>) -> memref<10xf32>, sym_name = "first_entry", sym_visibility = "private"}> ({
  ^bb0(%arg0: memref<10xf32>):
    "func.return"(%arg0) : (memref<10xf32>) -> ()
  }) : () -> ()
  "krnl.entry_point"() {func = @first_entry, numInputs = 1 : i32, numOutputs = 1 : i32, signature = "[in_sig]\00@[out_sig]\00"} : () -> ()
}) : () -> ()

