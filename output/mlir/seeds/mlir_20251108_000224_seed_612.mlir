"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<16xi8>) -> (i32, tensor<16xi8>), sym_name = "mix_dialects"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<16xi8>):
    %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
    %1 = "arith.cmpi"(%arg0, %arg0, "eq") : (i32, i32) -> i1
    %2 = "arith.select"(%1, %0, %arg0) : (i1, i32, i32) -> i32
    %3 = "memref.alloc"() <{sizes = [16], type = tensor<16xi8>}> : () -> memref<16xi8>
    "scf.for"(%arg0, %0, %0) ({
    ^bb1(%arg2: i32):
      "memref.store"(%arg2, %3, %arg2) : (i32, memref<16xi8>, i32) -> ()
      "scf.yield"() : () -> ()
    }) : (i32, i32, i32) -> ()
    %4 = "memref.load"(%3, %arg0) : (memref<16xi8>, i32) -> i8
    "memref.dealloc"(%3) : (memref<16xi8>) -> ()
    "func.return"(%2, %arg1) : (i32, tensor<16xi8>) -> ()
  }) : () -> ()
}) : () -> ()