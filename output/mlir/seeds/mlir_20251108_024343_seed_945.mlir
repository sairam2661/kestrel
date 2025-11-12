"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, tensor<?xi8>) -> (i32, f32, tensor<1x2xi32>), sym_name = "mixed_dialect_complexity"}> ({
  ^bb0(%arg0: i32, %arg1: f32, %arg2: tensor<?xi8>):
    %0 = "arith.cmpi"(%arg0, %arg0) <{predicate = "eq"}> : (i32, i32) -> i1
    %1 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %1) : (i32, i32) -> i32
    %3 = "arith.cmpf"(%arg1, %arg1) <{predicate = "oeq"}> : (f32, f32) -> i1
    %4 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %5 = "arith.addf"(%arg1, %4) : (f32, f32) -> f32
    %6 = "scf.if"(%0) ({
      %7 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      "scf.yield"(%7) : (i32) -> ()
    }) {
      "scf.yield" = () -> (i32)
    } : (i1) -> (i32)
    %8 = "scf.if"(%3) ({
      %9 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      "scf.yield"(%9) : (i32) -> ()
    }) {
      "scf.yield" = () -> (i32)
    } : (i1) -> (i32)
    %10 = "arith.addi"(%6, %8) : (i32, i32) -> i32
    %11 = "tosa.relu"(%arg2) : (tensor<?xi8>) -> tensor<?xi8>
    %12 = "arith.constant"() <{value = 2 : index}> : () -> index
    %13 = "arith.constant"() <{value = 3 : index}> : () -> index
    %14 = "memref.alloc"() <{shape = [1, 2], elementType = i32}> : () -> memref<1x2xi32>
    %15 = "memref.store"(%10, %14, %12, %13) : (i32, memref<1x2xi32>, index, index)
    %16 = "memref.load"(%14, %12, %13) : (memref<1x2xi32>, index, index) -> i32
    "func.return"(%10, %5, %11) : (i32, f32, tensor<?xi8>) -> ()
  }) : () -> ()
}) : () -> ()