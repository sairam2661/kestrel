"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "complex_control_flow"}> ({
    %0 = "arith.constant"() <{value = dense<100> : tensor<32xi32>}> : () -> tensor<32xi32>
    %1 = "arith.constant"() <{value = dense<200> : tensor<32xi32>}> : () -> tensor<32xi32>
    %2 = "scf.if"(%0) <{result_types = [tensor<32xi32>, tensor<32xi32>]}> ({
      %3 = "arith.addi"(%0, %1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "scf.yield"(%3, %3) : (tensor<32xi32>, tensor<32xi32>) -> ()
    }) {
      "scf.yield"        	
     	= "arith.xori" 	: (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
     	, "arith.mul" 	= "arith.mul" 	: (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
     	, "arith.div" 	= "arith.div" 	: (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
     	, "arith.sub" 	= "arith.sub" 	: (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    }
   	: (tensor<32xi32>, tensor<32xi32>) -> () 
    %4 = "tt.reduce"(%2#0) : (tensor<32xi32>) -> tensor<1xi32>
    %5 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
    %6 = "arith.select"(%4, %2#1, %5) : (tensor<1xi32>, tensor<32xi32>, tensor<128xi32>) -> tensor<128xi32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()