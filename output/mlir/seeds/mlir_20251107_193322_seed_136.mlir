"builtin.module"() ({
  "func.func"() <{function_type = (index, tensor<13x21x1xi32>) -> (i1, tensor<13x21x3xi32>), sym_name = "complex_if_with_arith"}> ({
  ^bb0(%arg0: index, %arg1: tensor<13x21x1xi32>):
    %0 = "arith.addi"(%arg0, %arg0) : (index, index) -> index
    %1 = "arith.cmpi"(%0, %arg0) <{predicate = 4 : i64}> : (index, index) -> i1
    "scf.if"(%1) ({
      %2 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %3 = "arith.addf"() <{value = 3.14 : f32}> : () -> f32
      %4 = "arith.addf"(%3, %3) : (f32, f32) -> f32
      %5 = "arith.constant"() <{value = 4 : i32}> : () -> i32
      %6 = "arith.constant"() <{value = 5 : i32}> : () -> i32
      %7 = "arith.addi"(%5, %6) : (i32, i32) -> i32
      %8 = "arith.constant"() <{value = 13 : i32}> : () -> i32
      %9 = "arith.cmpi"(%7, %8) <{predicate = 4 : i64}> : (i32, i32) -> i1
      "scf.if"(%9) ({
        %10 = "arith.constant"() <{value = 2 : i32}> : () -> i32
        %11 = "arith.addi"(%arg0, %10) : (index, i32) -> index
        %12 = "arith.constant"() <{value = 3 : i32}> : () -> i32
        %13 = "arith.addi"(%11, %12) : (index, i32) -> index
        %14 = "arith.constant"() <{value = 1 : i32}> : () -> i32
        %15 = "arith.constant"() <{value = 2 : i32}> : () -> i32
        %16 = "arith.addi"(%14, %15) : (i32, i32) -> i32
        %17 = "arith.constant"() <{value = 1 : i32}> : () -> i32
        %18 = "arith.addi"(%16, %17) : (i32, i32) -> i32
        %19 = "arith.constant"() <{value = 1.0 : f32}> : () -> f32
        %20 = "arith.addf"(%19, %19) : (f32, f32) -> f32
        %21 = "arith.constant"() <{value = 1.0 : f32}> : () -> f32
        %22 = "arith.addf"(%20, %21) : (f32, f32) -> f32
        "scf.yield"() : () -> ()
      }, {
        "scf.yield"() : () -> ()
      }) : (i1) -> ()
      "scf.yield"(%2, %arg1) : (i32, tensor<13x21x1xi32>) -> (i32, tensor<13x21x1xi32>)
    }, {
      "scf.yield"(%arg0, %arg1) : (index, tensor<13x21x1xi32>) -> (index, tensor<13x21x1xi32>)
    }) : (i1, i32, tensor<13x21x1xi32>) -> (i1, i32, tensor<13x21x1xi32>)
    "func.return"(%1, %arg1) : (i1, tensor<13x21x1xi32>) -> ()
  }) : () -> ()
}) : () -> ()