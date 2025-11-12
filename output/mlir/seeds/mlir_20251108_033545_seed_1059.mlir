"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, memref<?xi32>) -> (i32, f32), sym_name = "mixed_types"}> ({
  ^bb0(%arg0: i32, %arg1: f32, %arg2: memref<?xi32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2.5 : f32}> : () -> f32
    %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %3 = "arith.addf"(%arg1, %1) : (f32, f32) -> f32
    %4 = "memref.load"(%arg2, %0) : (memref<?xi32>, index) -> i32
    %5 = "arith.cmpf"(%arg1, %1) <{predicate = "oeq"}> : (f32, f32) -> i1
    "transform.structured.match"(%5) ({
    ^bb1(%arg3: i1):
      "scf.if"(%arg3) ({
        %6 = "arith.constant"() <{value = 1 : i32}> : () -> i32
        "scf.yield"(%6) : (i32) -> ()
      }, {
        %7 = "arith.constant"() <{value = 2 : i32}> : () -> i32
        "scf.yield"(%7) : (i32) -> ()
      }) : (i1) -> (i32)
      "scf.yield"() : () -> ()
    }) : (i1) -> ()
    "func.return"(%2, %3) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()