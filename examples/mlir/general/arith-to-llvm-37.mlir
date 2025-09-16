"builtin.module"() ({
  "func.func"() <{function_type = (memref<?xi16>) -> memref<?xbf16>, sym_name = "memref_bitcast"}> ({
  ^bb0(%arg0: memref<?xi16>):
    %0 = "arith.bitcast"(%arg0) : (memref<?xi16>) -> memref<?xbf16>
    "func.return"(%0) : (memref<?xbf16>) -> ()
  }) : () -> ()
}) : () -> ()

