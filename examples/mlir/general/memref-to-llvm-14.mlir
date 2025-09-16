"builtin.module"() ({
  "func.func"() <{function_type = (memref<10xi32>, i32, memref<10xf32>, f32, index) -> (), sym_name = "atomic_rmw"}> ({
  ^bb0(%arg0: memref<10xi32>, %arg1: i32, %arg2: memref<10xf32>, %arg3: f32, %arg4: index):
    %0 = "memref.atomic_rmw"(%arg3, %arg2, %arg4) <{kind = 2 : i64}> : (f32, memref<10xf32>, index) -> f32
    %1 = "memref.atomic_rmw"(%arg1, %arg0, %arg4) <{kind = 1 : i64}> : (i32, memref<10xi32>, index) -> i32
    %2 = "memref.atomic_rmw"(%arg1, %arg0, %arg4) <{kind = 4 : i64}> : (i32, memref<10xi32>, index) -> i32
    %3 = "memref.atomic_rmw"(%arg1, %arg0, %arg4) <{kind = 7 : i64}> : (i32, memref<10xi32>, index) -> i32
    %4 = "memref.atomic_rmw"(%arg1, %arg0, %arg4) <{kind = 5 : i64}> : (i32, memref<10xi32>, index) -> i32
    %5 = "memref.atomic_rmw"(%arg1, %arg0, %arg4) <{kind = 8 : i64}> : (i32, memref<10xi32>, index) -> i32
    %6 = "memref.atomic_rmw"(%arg3, %arg2, %arg4) <{kind = 0 : i64}> : (f32, memref<10xf32>, index) -> f32
    %7 = "memref.atomic_rmw"(%arg3, %arg2, %arg4) <{kind = 3 : i64}> : (f32, memref<10xf32>, index) -> f32
    %8 = "memref.atomic_rmw"(%arg3, %arg2, %arg4) <{kind = 13 : i64}> : (f32, memref<10xf32>, index) -> f32
    %9 = "memref.atomic_rmw"(%arg3, %arg2, %arg4) <{kind = 6 : i64}> : (f32, memref<10xf32>, index) -> f32
    %10 = "memref.atomic_rmw"(%arg3, %arg2, %arg4) <{kind = 14 : i64}> : (f32, memref<10xf32>, index) -> f32
    %11 = "memref.atomic_rmw"(%arg1, %arg0, %arg4) <{kind = 11 : i64}> : (i32, memref<10xi32>, index) -> i32
    %12 = "memref.atomic_rmw"(%arg1, %arg0, %arg4) <{kind = 12 : i64}> : (i32, memref<10xi32>, index) -> i32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

