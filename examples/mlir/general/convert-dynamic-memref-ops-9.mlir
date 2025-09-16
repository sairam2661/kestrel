"builtin.module"() ({
  "func.func"() <{function_type = (memref<?x?xf32>, index, index) -> (), sym_name = "prefetch"}> ({
  ^bb0(%arg0: memref<?x?xf32>, %arg1: index, %arg2: index):
    "memref.prefetch"(%arg0, %arg1, %arg2) <{isDataCache = true, isWrite = true, localityHint = 3 : i32}> : (memref<?x?xf32>, index, index) -> ()
    "memref.prefetch"(%arg0, %arg1, %arg2) <{isDataCache = true, isWrite = false, localityHint = 0 : i32}> : (memref<?x?xf32>, index, index) -> ()
    "memref.prefetch"(%arg0, %arg1, %arg2) <{isDataCache = false, isWrite = false, localityHint = 2 : i32}> : (memref<?x?xf32>, index, index) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

