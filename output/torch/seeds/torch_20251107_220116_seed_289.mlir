"builtin.module"() ({
  "func.func"() <{function_type = (!torch,vector<4xi32>, !torch,vector<4xi32>) -> !torch,vector<4xi32>, sym_name = "fuzzing_vector_add"}> ({
  ^bb0(%arg0: !torch,vector<4xi32>, 
       					   		  	   		!arg1 	-> !torch,vector<4xi32>):
    %2 = "torch.aten.add.Tensor"(%arg0, 
    					       %arg1) 
    		: (!torch,vector<4xi32>, 
    			   !torch,vector<4xi32>) 
    		-> !torch,vector<4xi32>
    "func.return"(%2) 
    		: (!torch,vector<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()