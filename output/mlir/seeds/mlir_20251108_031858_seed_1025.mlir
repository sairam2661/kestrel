"builtin.module"() ({
  "func.func"() <{function_type = (tensor<i8>, memref<4xi32>) -> (tensor<i8>, memref<4xi32>), sym_name = "tensor_memref_interaction"}> ({
  ^bb0(%arg0: tensor<i8>, %arg1: memref<4xi32>):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.index_cast"(%0) : (i32) -> index
    %2 = "memref.load"(%arg1, %1) : (memref<4xi32>, index) -> i32
    %3 = "arith.addi"(%2, %0) : (i32, i32) -> i32
    "memref.store"(%3, %arg1, %1) : (i32, memref<4xi32>, index) -> ()
    
    %4 = "arith.constant"() <{value = 2.5 : f32}> : () -> f32
    %5 = "arith.constant"() <{value = 1.5 : f32}> : () -> f32
    %6 = "arith.addf"(%4, %5) : (f32, f32) -> f32
    %7 = "arith.cmpf"(%6, %4, "gt") : (f32, f32) -> i1

    "scf.if"(%7) ({
      ^bb1(%arg2: i1):
        %8 = "arith.constant"() <{value = 10 : i32}> : () -> i32
        "memref.store"(%8, %arg1, %1) : (i32, memref<4xi32>, index) -> ()
    }) : () -> ()

    "func.return"(%arg0, %arg1) : (tensor<i8>, memref<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()