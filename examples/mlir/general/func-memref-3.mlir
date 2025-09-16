"builtin.module"() ({
  "func.func"() <{function_type = (memref<10x20xf32>, memref<?x?xf32>, memref<10x?xf32>) -> (), sym_name = "check_arguments"}> ({
  ^bb0(%arg0: memref<10x20xf32>, %arg1: memref<?x?xf32>, %arg2: memref<10x?xf32>):
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

