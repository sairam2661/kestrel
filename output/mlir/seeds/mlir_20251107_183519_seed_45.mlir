"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi8>, i32, f32) -> (i64, tensor<2xi16>), sym_name = "testComplexMixedTypes"}> ({
    ^bb0(%arg0: tensor<2xi8>, %arg1: i32, %arg2: f32):
      %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
      %1 = "arith.cmpi"(%arg1, %0) <{predicate = "slt"}> : (i32, i32) -> i1
      %2 = "arith.constant"() <{value = 0.5 : f32}> : () -> f32
      %3 = "arith.cmpf"(%arg2, %2) <{predicate = "olt"}> : (f32, f32) -> i1
      %4 = "arith.addf"(%arg2, %2) : (f32, f32) -> f32
      %5 = "scf.if"(%1) ({
      ^bb1(%arg3: i1):
        %6 = "arith.addi"(%arg1, %0) : (i32, i32) -> i32
        "scf.yield"(%6) : (i32) -> ()
      }, {
      ^bb2:
        %7 = "arith.subi"(%arg1, %0) : (i32, i32) -> i32
        "scf.yield"(%7) : (i32) -> ()
      }) : (i32) -> i32
      %8 = "scf.if"(%3) ({
      ^bb3(%arg4: i1):
        %9 = "tosa.cast"(%arg0) : (tensor<2xi8>) -> tensor<2xi16>
        "scf.yield"(%9) : (tensor<2xi16>) -> ()
      }, {
      ^bb4:
        %10 = "tosa.const"() <{values = dense<0> : tensor<2xi16>}> : () -> tensor<2xi16>
        "scf.yield"(%10) : (tensor<2xi16>) -> ()
      }) : (tensor<2xi16>) -> tensor<2xi16>
      %11 = "arith.constant"() <{value = 100 : i64}> : () -> i64
      "func.return"(%11, %8) : (i64, tensor<2xi16>) -> ()
  }) : () -> ()
}) : () -> ()