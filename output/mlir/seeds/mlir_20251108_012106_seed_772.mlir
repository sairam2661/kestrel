"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>, sym_name = "tensor_add_unranked"}> ({
  ^bb0(%arg0: tensor<2xi32>, %arg1: tensor<2xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    "func.return"(%0) : (tensor<2xi32>) -> ()
  }) : () -> ()
  
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "int_add_with_if"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    "scf.if"(%arg1) ({
      ^bb1(%arg2: i32):
        %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
        "scf.yield"(%0) : (i32) -> i32
    }) {
      "scf.yield"="#" : (i32) -> i32
    }
    : (i32) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
  
  "func.func"() <{function_type = (f32, f32) -> f32, sym_name = "float_cmp_and_add"}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %0 = "arith.cmpf"("eq", %arg0, %arg1) : (f32, f32) -> i1
    "scf.if"(%0) ({
      ^bb1(%arg2: i1):
        %1 = "arith.addf"(%arg0, %arg1) : (f32, f32) -> f32
        "scf.yield"(%1) : (f32) -> f32
    }) {
      "scf.yield"="#" : (f32) -> f32
    }
    : (f32) -> f32
    "func.return"(%0) : (f32) -> ()
  }) : () -> ()
  
  "func.func"() <{function_type = (index, index) -> index, sym_name = "index_cmp_and_add"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "arith.cmpi"("eq", %arg0, %arg1) : (index, index) -> i1
    "scf.if"(%0) ({
      ^bb1(%arg2: i1):
        %1 = "arith.addi"(%arg0, %arg1) : (index, index) -> index
        "scf.yield"(%1) : (index) -> index
    }) {
      "scf.yield"="#" : (index) -> index
    }
    : (index) -> index
    "func.return"(%0) : (index) -> ()
  }) : () -> ()
}) : () -> ()