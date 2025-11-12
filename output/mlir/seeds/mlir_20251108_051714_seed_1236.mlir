"builtin.module"() ({
  "func.func"() <{function_type = (index, tensor<2xi32>) -> i32, sym_name = "fuzz_complex_control"}> ({
  ^bb0(%arg0: index, %arg1: tensor<2xi32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 42 : index}> : () -> index

    "scf.if"(%arg0) <{results = i32}> ({
      %2 = "arith.addi"(%0, %0) : (i32, i32) -> i32
      "scf.yield"(%2) : (i32) -> i32
    }) {
      "scf.for"  = "scf.for"  : () -> ()
      } : () -> (i32) attributes
   

    .else  : () -> (i32) attributes 





    .else  : () -> (i32) attributes 
   



    .then  : () -> (i32) attributes 
   
   
   
   
   
   


    .then  : () -> (i32) attributes 
   
   
   


    .then  : () -> (i32) attributes 
   
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32) attributes 
   


    .then  : () -> (i32)