"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, f64, i1) -> (i32, f32, f64, i1), sym_name = "complex_mix"}> ({
    ^bb0(%arg0: i32, %arg1: f32, %arg2: f64, %arg3: i1):
      %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
      %2 = "arith.constant"() <{value = 2.718 : f64}> : () -> f64
      %3 = "arith.constant"() <{value = true}> : () -> i1
      %4 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
      %5 = "arith.addf"(%arg1, %1) : (f32, f32) -> f32
      %6 = "arith.addf"(%arg2, %2) : (f64, f64) -> f64
      %7 = "arith.cmpf"("eq", %arg1, %5) : (f32, f32) -> i1
      %8 = "scf.if"(%arg3) ({
        "scf.yield"(%4, %5, %6, %7) : (i32, f32, f64, i1) -> ()
      }, {
        "scf.yield"(%arg0, %arg1, %arg2, %arg3) : (i32, f32, f64, i1) -> ()
      }) : (i1) -> (i32, f32, f64, i1)
      "func.return"(%8#0, %8#1, %8#2, %8#3) : (i32, f32, f64, i1) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> (i32), sym_name = "nested_loop"}> ({
    ^bb0(%arg0: i32):
      %0 = "arith.constant"() <{value = 0 : index}> : () -> index
      %1 = "arith.constant"() <{value = 10 : index}> : () -> index
      %2 = "scf.for"(%0, %1, %1) ({
        ^bb1(%i: index):
          %3 = "scf.for"(%0, %1, %1) ({
            ^bb2(%j: index):
              %4 = "arith.addi"(%arg0, %i) : (i32, index) -> i32
              %5 = "arith.addi"(%4, %j) : (i32, index) -> i32
              "scf.yield"() : () -> ()
          }) : (index) -> ()
          "scf.yield"() : () -> ()
      }) : (index) -> ()
      "func.return"(%arg0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()