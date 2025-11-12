"builtin.module"() ({
  "func.func"() <{function_type = (vector<4xi32>, vector<4xi32>) -> vector<4xi32>, sym_name = "vector_op_test"}> ({
  ^bb0(%arg0: vector<4xi32>, %arg1: vector<4xi32>):
    %0 = "arith.add"(%arg0, %arg1) : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    %1 = "arith.sub"(%0, %arg1) : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    %2 = "arith.mul"(%1, %arg0) : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    %3 = "arith.div"(%2, %arg1) : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    %4 = "arith.rem"(%3, %arg0) : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
    "func.return"(%4) : (vector<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi8>) -> tensor<2x2xi8>, sym_name = "tensor_op_test"}> ({
  ^bb0(%arg0: tensor<2x2xi8>):
    %0 = "arith.addi"(%arg0, %arg0) : (tensor<2x2xi8>, tensor<2x2xi8>) -> tensor<2x2xi8>
    %1 = "arith.subi"(%0, %arg0) : (tensor<2x2xi8>, tensor<2x2xi8>) -> tensor<2x2xi8>
    %2 = "arith.muli"(%1, %arg0) : (tensor<2x2xi8>, tensor<2x2xi8>) -> tensor<2x2xi8>
    %3 = "arith.divi"(%2, %arg0) : (tensor<2x2xi8>, tensor<2x2xi8>) -> tensor<2x2xi8>
    %4 = "arith.remi"(%3, %arg0) : (tensor<2x2xi8>, tensor<2x2xi8>) -> tensor<2x2xi8>
    "func.return"(%4) : (tensor<2x2xi8>) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "scf_nested_test"}> ({
  ^bb0(%arg0: i32):
    %0 = "scf.if"(%arg0) ({
      %1 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
      %2 = "scf.if"(%arg0) ({
        %3 = "arith.subi"(%1, %arg0) : (i32, i32) -> i32
        "scf.yield"(%3) : (i32) -> ()
      }, {
        %4 = "arith.addi"(%1, %arg0) : (i32, i32) -> i32
        "scf.yield"(%4) : (i32) -> ()
      }) : (i32) -> i32
      "scf.yield"(%2) : (i32) -> ()
    }, {
      %5 = "scf.if"(%arg0) ({
        %6 = "arith.muli"(%arg0, %arg0) : (i32, i32) -> i32
        "scf.yield"(%6) : (i32) -> ()
      }, {
        %7 = "arith.divi"(%arg0, %arg0) : (i32, i32) -> i32
        "scf.yield"(%7) : (i32) -> ()
      }) : (i32) -> i32
      "scf.yield"(%5) : (i32) -> ()
    }) : (i32) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi16>) -> tensor<2x2xi16>, sym_name = "tosa_op_test"}> ({
  ^bb0(%arg0: tensor<2x2xi16>):
    %0 = "tosa.add"(%arg0, %arg0) : (tensor<2x2xi16>, tensor<2x2xi16>) -> tensor<2x2xi16>
    %1 = "tosa.sub"(%0, %arg0) : (tensor<2x2xi16>, tensor<2x2xi16>) -> tensor<2x2xi16>
    %2 = "tosa.mul"(%1, %arg0) : (tensor<2x2xi16>, tensor<2x2xi16>) -> tensor<2x2xi16>
    %3 = "tosa.div"(%2, %arg0) : (tensor<2x2xi16>, tensor<2x2xi16>) -> tensor<2x2xi16>
    %4 = "tosa.remn"(%3, %arg0) : (tensor<2x2xi16>, tensor<2x2xi16>) -> tensor<2x2xi16>
    "func.return"(%4) : (tensor<2x2xi16>) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "spirv_func_test"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "spirv.add"(%arg0, %arg1) : (i32, i32) -> i32
    %1 = "spirv.sub"(%0, %arg1) : (i32, i32) -> i32
    %2 = "spirv.mul"(%1, %arg0) : (i32, i32) -> i32
    %3 = "spirv.div"(%2, %arg1) : (i32, i32) -> i32
    %4 = "spirv.rem"(%3, %arg0) : (i32, i32) -> i32
    "spirv.ReturnValue"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()