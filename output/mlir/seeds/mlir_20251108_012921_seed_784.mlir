"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x4xi32>, tensor<3x4xi32>) -> tensor<3x4xi32>, sym_name = "matrix_addition"}> ({
  ^bb0(%arg0: tensor<3x4xi32>, %arg1: tensor<3x4xi32>):
    %c0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %c3 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %c4 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %result = "tensor.empty"() <{shape = [3, 4], type = tensor<3x4xi32>}> : () -> tensor<3x4xi32>
    "scf.for"(%c0) <{upper_bound = 3 : i32, step = 1 : i32}> ({
    ^bb1(%iv: i32):
      "scf.for"(%c0) <{upper_bound = 4 : i32, step = 1 : i32}> ({
      ^bb2(%jv: i32):
        %load0 = "tosa.load"(%arg0, %iv, %jv) : (tensor<3x4xi32>, i32, i32) -> i32
        %load1 = "tosa.load"(%arg1, %iv, %jv) : (tensor<3x4xi32>, i32, i32) -> i32
        %add = "arith.addi"(%load0, %load1) : (i32, i32) -> i32
        "tosa.store"(%add, %result, %iv, %jv) : (i32, tensor<3x4xi32>, i32, i32)
      }) : () -> ()
      "scf.yield"
    ("// end loop over j")
     {}: () -> ()
    }) : () -> ()
    "func.return"(%result) : (tensor<3x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()