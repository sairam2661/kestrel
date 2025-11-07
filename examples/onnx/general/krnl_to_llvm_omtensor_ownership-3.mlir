"builtin.module"() ({
  "func.func"() <{function_type = (memref<2x4xf32>) -> memref<2x4xf32>, sym_name = "return_argument"}> ({
  ^bb0(%arg0: memref<2x4xf32>):
    "func.return"(%arg0) : (memref<2x4xf32>) -> ()
  }) : () -> ()
  "krnl.entry_point"() {func = @return_argument, numInputs = 1 : i32, numOutputs = 1 : i32, signature = ""} : () -> ()
}) : () -> ()

