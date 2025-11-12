"builtin.module"() ({
  "func.func"() <{function_type = (memref<16xi8>, memref<16xi8>) -> memref<16xi8>, sym_name = "xor_memory"}> ({
    ^bb0(%arg0: memref<16xi8>, %arg1: memref<16xi8>):
      %0 = "arith.constant"() <{value = 0 : index}> : () -> index
      %1 = "arith.constant"() <{value = 15 : index}> : () -> index
      %2 = "memref.alloc"() <{shape = [16], memref_type = "memref<16xi8>"}> : () -> memref<16xi8>
      %3 = "scf.for"(%0, %1, %2, %2) ({
      ^bb1(%arg2: index, %arg3: memref<16xi8>, %arg4: memref<16xi8>, %arg5: memref<16xi8>):
        %6 = "memref.load"(%arg3, %arg2) : (memref<16xi8>, index) -> i8
        %7 = "memref.load"(%arg4, %arg2) : (memref<16xi8>, index) -> i8
        %8 = "arith.xori"(%6, %7) : (i8, i8) -> i8
        "memref.store"(%8, %arg5, %arg2) : (i8, memref<16xi8>, index)
        "scf.yield"(%arg3, %arg4, %arg5, %8) : (memref<16xi8>, memref<16xi8>, memref<16xi8>, i8) -> ()
      }) : (index, memref<16xi8>, memref<16xi8>, memref<16xi8>) -> memref<16xi8>
      "func.return"(%3) : (memref<16xi8>) -> ()
  }) : () -> ()
}) : () -> ()