"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16x16xf32>, tensor<16x16xf32>) -> tensor<16x16xf32>, sym_name = "matrix_multiply"}> ({
  ^bb0(%arg0: tensor<16x16xf32>, %arg1: tensor<16x16xf32>):
    %0 = "arith.constant"() <{value = 16 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 16 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 16 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 0.0 : f32}> : () -> f32
    %4 = "memref.alloc"() <{shape = [16, 16], type = tensor<16x16xf32>}> : () -> memref<16x16xf32>
    %5 = "tt.fill"(%4, %3) : (memref<16x16xf32>, f32) -> memref<16x16xf32>
    "scf.for"(%0, %0, %1) ({
    ^bb1(%i: i32):
      "scf.for"(%0, %0, %1) ({
      ^bb2(%j: i32):
        "scf.for"(%0, %0, %1) ({
        ^bb3(%k: i32):
          %6 = "memref.load"(%5, %i, %j) : (memref<16x16xf32>, i32, i32) -> f32
          %7 = "memref.load"(%arg0, %i, %k) : (tensor<16x16xf32>, i32, i32) -> f32
          %8 = "memref.load"(%arg1, %k, %j) : (tensor<16x16xf32>, i32, i32) -> f32
          %9 = "arith.mulf"(%7, %8) : (f32, f32) -> f32
          %10 = "arith.addf"(%6, %9) : (f32, f32) -> f32
          "memref.store"(%10, %5, %i, %j) : (f32, memref<16x16xf32>, i32, i32)
          "scf.yield"() : () -> ()
        }) {tt.num_stages = 4 : i32} : (i32, i32, i32) -> ()
        "scf.yield"() : () -> ()
      }) {tt.num_stages = 3 : i32} : (i32, i32, i32) -> ()
      "scf.yield"() : () -> ()
    }) {tt.num_stages = 2 : i32} : (i32, i32, i32) -> ()
    %11 = "memref.to_tensor"(%5) : (memref<16x16xf32>) -> tensor<16x16xf32>
    "tt.return"(%11) : (tensor<16x16xf32>) -> ()
  }) : () -> ()
}) : () -> ()