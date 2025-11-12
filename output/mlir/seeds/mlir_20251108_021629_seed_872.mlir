"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x8xi32>, memref<8xi32>) -> tensor<4x8xi32>, sym_name = "tensor_memref_op_mix"}> ({
  ^bb0(%arg0: tensor<4x8xi32>, %arg1: memref<8xi32>):
    %0 = "arith.constant"() <{value = 32 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 4 : index}> : () -> index
    %3 = "memref.alloc"() <{shape = [8], type = memref<8xi32>}> : () -> memref<8xi32>
    "scf.for"(%1, %2, %0) ({
    ^bb0(%arg2: index):
      %4 = "memref.load"(%arg1, %arg2) : (memref<8xi32>, index) -> i32
      "memref.store"(%4, %3, %arg2) : (i32, memref<8xi32>, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, i32) -> ()
    %5 = "arith.constant"() <{value = 1 : i1}> : () -> i1
    %6 = "arith.select"(%5, %arg0, %3) : (i1, tensor<4x8xi32>, memref<8xi32>) -> tensor<4x8xi32>
    "func.return"(%6) : (tensor<4x8xi32>) -> ()
  }) : (tensor<4x8xi32>, memref<8xi32>) -> tensor<4x8xi32>
  "func.func"() <{function_type = (tensor<4x8xi32>) -> memref<8xi32>, sym_name = "tensor_to_memref"}> ({
  ^bb0(%arg0: tensor<4x8xi32>):
    %0 = "memref.alloc"() <{shape = [8], type = memref<8xi32>}> : () -> memref<8xi32>
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "arith.constant"() <{value = 8 : index}> : () -> index
    "scf.for"(%1, %2, %3) ({
    ^bb0(%arg1: index):
      %4 = "tensor.extract"(%arg0, %arg1) : (tensor<4x8xi32>, index) -> i32
      "memref.store"(%4, %0, %arg1) : (i32, memref<8xi32>, index) -> ()
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    "func.return"(%0) : (memref<8xi32>) -> ()
  }) : (tensor<4x8xi32>) -> memref<8xi32>
}) : () -> ()